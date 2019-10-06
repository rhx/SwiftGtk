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

// MARK: - AboutDialogClass Record

/// The `AboutDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkAboutDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AboutDialogClass`.
/// Alternatively, use `AboutDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AboutDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkAboutDialogClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAboutDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAboutDialogClass> { get }
}

/// The `AboutDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkAboutDialogClass` instance.
/// It exposes methods that can operate on this data type through `AboutDialogClassProtocol` conformance.
/// Use `AboutDialogClassRef` only as an `unowned` reference to an existing `GtkAboutDialogClass` instance.
///

public struct AboutDialogClassRef: AboutDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkAboutDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AboutDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAboutDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AboutDialogClassProtocol`
    init<T: AboutDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AboutDialogClass` type acts as an owner of an underlying `GtkAboutDialogClass` instance.
/// It provides the methods that can operate on this data type through `AboutDialogClassProtocol` conformance.
/// Use `AboutDialogClass` as a strong reference or owner of a `GtkAboutDialogClass` instance.
///

open class AboutDialogClass: AboutDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkAboutDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AboutDialogClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkAboutDialogClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AboutDialogClassProtocol`
    /// `GtkAboutDialogClass` does not allow reference counting.
    public convenience init<T: AboutDialogClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAboutDialogClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAboutDialogClass`.
    deinit {
        // no reference counting for GtkAboutDialogClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAboutDialogClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAboutDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAboutDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAboutDialogClass>(opaquePointer))
    }



}

// MARK: - no AboutDialogClass properties

// MARK: - no signals


public extension AboutDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAboutDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAboutDialogClass> { return ptr.assumingMemoryBound(to: GtkAboutDialogClass.self) }

}



// MARK: - AboutDialogPrivate Record

/// The `AboutDialogPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkAboutDialogPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AboutDialogPrivate`.
/// Alternatively, use `AboutDialogPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AboutDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAboutDialogPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAboutDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAboutDialogPrivate> { get }
}

/// The `AboutDialogPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkAboutDialogPrivate` instance.
/// It exposes methods that can operate on this data type through `AboutDialogPrivateProtocol` conformance.
/// Use `AboutDialogPrivateRef` only as an `unowned` reference to an existing `GtkAboutDialogPrivate` instance.
///

public struct AboutDialogPrivateRef: AboutDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAboutDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AboutDialogPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAboutDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AboutDialogPrivateProtocol`
    init<T: AboutDialogPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AboutDialogPrivate` type acts as an owner of an underlying `GtkAboutDialogPrivate` instance.
/// It provides the methods that can operate on this data type through `AboutDialogPrivateProtocol` conformance.
/// Use `AboutDialogPrivate` as a strong reference or owner of a `GtkAboutDialogPrivate` instance.
///

open class AboutDialogPrivate: AboutDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAboutDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AboutDialogPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkAboutDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AboutDialogPrivateProtocol`
    /// `GtkAboutDialogPrivate` does not allow reference counting.
    public convenience init<T: AboutDialogPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAboutDialogPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAboutDialogPrivate`.
    deinit {
        // no reference counting for GtkAboutDialogPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAboutDialogPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAboutDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAboutDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAboutDialogPrivate>(opaquePointer))
    }



}

// MARK: - no AboutDialogPrivate properties

// MARK: - no signals


public extension AboutDialogPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAboutDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAboutDialogPrivate> { return ptr.assumingMemoryBound(to: GtkAboutDialogPrivate.self) }

}



// MARK: - AccelGroupClass Record

/// The `AccelGroupClassProtocol` protocol exposes the methods and properties of an underlying `GtkAccelGroupClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccelGroupClass`.
/// Alternatively, use `AccelGroupClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AccelGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkAccelGroupClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAccelGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelGroupClass> { get }
}

/// The `AccelGroupClassRef` type acts as a lightweight Swift reference to an underlying `GtkAccelGroupClass` instance.
/// It exposes methods that can operate on this data type through `AccelGroupClassProtocol` conformance.
/// Use `AccelGroupClassRef` only as an `unowned` reference to an existing `GtkAccelGroupClass` instance.
///

public struct AccelGroupClassRef: AccelGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkAccelGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AccelGroupClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAccelGroupClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AccelGroupClassProtocol`
    init<T: AccelGroupClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AccelGroupClass` type acts as an owner of an underlying `GtkAccelGroupClass` instance.
/// It provides the methods that can operate on this data type through `AccelGroupClassProtocol` conformance.
/// Use `AccelGroupClass` as a strong reference or owner of a `GtkAccelGroupClass` instance.
///

open class AccelGroupClass: AccelGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkAccelGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AccelGroupClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkAccelGroupClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AccelGroupClassProtocol`
    /// `GtkAccelGroupClass` does not allow reference counting.
    public convenience init<T: AccelGroupClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAccelGroupClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAccelGroupClass`.
    deinit {
        // no reference counting for GtkAccelGroupClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAccelGroupClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAccelGroupClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAccelGroupClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAccelGroupClass>(opaquePointer))
    }



}

// MARK: - no AccelGroupClass properties

// MARK: - no signals


public extension AccelGroupClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccelGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelGroupClass> { return ptr.assumingMemoryBound(to: GtkAccelGroupClass.self) }

}



// MARK: - AccelGroupEntry Record

/// The `AccelGroupEntryProtocol` protocol exposes the methods and properties of an underlying `GtkAccelGroupEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccelGroupEntry`.
/// Alternatively, use `AccelGroupEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AccelGroupEntryProtocol {
    /// Untyped pointer to the underlying `GtkAccelGroupEntry` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAccelGroupEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelGroupEntry> { get }
}

/// The `AccelGroupEntryRef` type acts as a lightweight Swift reference to an underlying `GtkAccelGroupEntry` instance.
/// It exposes methods that can operate on this data type through `AccelGroupEntryProtocol` conformance.
/// Use `AccelGroupEntryRef` only as an `unowned` reference to an existing `GtkAccelGroupEntry` instance.
///

public struct AccelGroupEntryRef: AccelGroupEntryProtocol {
    /// Untyped pointer to the underlying `GtkAccelGroupEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AccelGroupEntryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAccelGroupEntry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AccelGroupEntryProtocol`
    init<T: AccelGroupEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AccelGroupEntry` type acts as an owner of an underlying `GtkAccelGroupEntry` instance.
/// It provides the methods that can operate on this data type through `AccelGroupEntryProtocol` conformance.
/// Use `AccelGroupEntry` as a strong reference or owner of a `GtkAccelGroupEntry` instance.
///

open class AccelGroupEntry: AccelGroupEntryProtocol {
    /// Untyped pointer to the underlying `GtkAccelGroupEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AccelGroupEntry` instance.
    public init(_ op: UnsafeMutablePointer<GtkAccelGroupEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AccelGroupEntryProtocol`
    /// `GtkAccelGroupEntry` does not allow reference counting.
    public convenience init<T: AccelGroupEntryProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAccelGroupEntry, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAccelGroupEntry`.
    deinit {
        // no reference counting for GtkAccelGroupEntry, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAccelGroupEntry.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAccelGroupEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAccelGroupEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupEntryProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAccelGroupEntry>(opaquePointer))
    }



}

// MARK: - no AccelGroupEntry properties

// MARK: - no signals


public extension AccelGroupEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccelGroupEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelGroupEntry> { return ptr.assumingMemoryBound(to: GtkAccelGroupEntry.self) }

}



// MARK: - AccelGroupPrivate Record

/// The `AccelGroupPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkAccelGroupPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccelGroupPrivate`.
/// Alternatively, use `AccelGroupPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AccelGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAccelGroupPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAccelGroupPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelGroupPrivate> { get }
}

/// The `AccelGroupPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkAccelGroupPrivate` instance.
/// It exposes methods that can operate on this data type through `AccelGroupPrivateProtocol` conformance.
/// Use `AccelGroupPrivateRef` only as an `unowned` reference to an existing `GtkAccelGroupPrivate` instance.
///

public struct AccelGroupPrivateRef: AccelGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAccelGroupPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AccelGroupPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAccelGroupPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AccelGroupPrivateProtocol`
    init<T: AccelGroupPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AccelGroupPrivate` type acts as an owner of an underlying `GtkAccelGroupPrivate` instance.
/// It provides the methods that can operate on this data type through `AccelGroupPrivateProtocol` conformance.
/// Use `AccelGroupPrivate` as a strong reference or owner of a `GtkAccelGroupPrivate` instance.
///

open class AccelGroupPrivate: AccelGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAccelGroupPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AccelGroupPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkAccelGroupPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AccelGroupPrivateProtocol`
    /// `GtkAccelGroupPrivate` does not allow reference counting.
    public convenience init<T: AccelGroupPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAccelGroupPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAccelGroupPrivate`.
    deinit {
        // no reference counting for GtkAccelGroupPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAccelGroupPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAccelGroupPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAccelGroupPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAccelGroupPrivate>(opaquePointer))
    }



}

// MARK: - no AccelGroupPrivate properties

// MARK: - no signals


public extension AccelGroupPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccelGroupPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelGroupPrivate> { return ptr.assumingMemoryBound(to: GtkAccelGroupPrivate.self) }

}



// MARK: - AccelKey Record

/// The `AccelKeyProtocol` protocol exposes the methods and properties of an underlying `GtkAccelKey` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccelKey`.
/// Alternatively, use `AccelKeyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AccelKeyProtocol {
    /// Untyped pointer to the underlying `GtkAccelKey` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAccelKey` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelKey> { get }
}

/// The `AccelKeyRef` type acts as a lightweight Swift reference to an underlying `GtkAccelKey` instance.
/// It exposes methods that can operate on this data type through `AccelKeyProtocol` conformance.
/// Use `AccelKeyRef` only as an `unowned` reference to an existing `GtkAccelKey` instance.
///

public struct AccelKeyRef: AccelKeyProtocol {
    /// Untyped pointer to the underlying `GtkAccelKey` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AccelKeyRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAccelKey>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AccelKeyProtocol`
    init<T: AccelKeyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AccelKey` type acts as an owner of an underlying `GtkAccelKey` instance.
/// It provides the methods that can operate on this data type through `AccelKeyProtocol` conformance.
/// Use `AccelKey` as a strong reference or owner of a `GtkAccelKey` instance.
///

open class AccelKey: AccelKeyProtocol {
    /// Untyped pointer to the underlying `GtkAccelKey` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AccelKey` instance.
    public init(_ op: UnsafeMutablePointer<GtkAccelKey>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AccelKeyProtocol`
    /// `GtkAccelKey` does not allow reference counting.
    public convenience init<T: AccelKeyProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAccelKey, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAccelKey`.
    deinit {
        // no reference counting for GtkAccelKey, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAccelKey.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAccelKey.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAccelKey.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelKeyProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAccelKey>(opaquePointer))
    }



}

// MARK: - no AccelKey properties

// MARK: - no signals


public extension AccelKeyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccelKey` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelKey> { return ptr.assumingMemoryBound(to: GtkAccelKey.self) }

}



// MARK: - AccelLabelClass Record

/// The `AccelLabelClassProtocol` protocol exposes the methods and properties of an underlying `GtkAccelLabelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccelLabelClass`.
/// Alternatively, use `AccelLabelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AccelLabelClassProtocol {
    /// Untyped pointer to the underlying `GtkAccelLabelClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAccelLabelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelLabelClass> { get }
}

/// The `AccelLabelClassRef` type acts as a lightweight Swift reference to an underlying `GtkAccelLabelClass` instance.
/// It exposes methods that can operate on this data type through `AccelLabelClassProtocol` conformance.
/// Use `AccelLabelClassRef` only as an `unowned` reference to an existing `GtkAccelLabelClass` instance.
///

public struct AccelLabelClassRef: AccelLabelClassProtocol {
    /// Untyped pointer to the underlying `GtkAccelLabelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AccelLabelClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAccelLabelClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AccelLabelClassProtocol`
    init<T: AccelLabelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AccelLabelClass` type acts as an owner of an underlying `GtkAccelLabelClass` instance.
/// It provides the methods that can operate on this data type through `AccelLabelClassProtocol` conformance.
/// Use `AccelLabelClass` as a strong reference or owner of a `GtkAccelLabelClass` instance.
///

open class AccelLabelClass: AccelLabelClassProtocol {
    /// Untyped pointer to the underlying `GtkAccelLabelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AccelLabelClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkAccelLabelClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AccelLabelClassProtocol`
    /// `GtkAccelLabelClass` does not allow reference counting.
    public convenience init<T: AccelLabelClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAccelLabelClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAccelLabelClass`.
    deinit {
        // no reference counting for GtkAccelLabelClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAccelLabelClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAccelLabelClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAccelLabelClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAccelLabelClass>(opaquePointer))
    }



}

// MARK: - no AccelLabelClass properties

// MARK: - no signals


public extension AccelLabelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccelLabelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelLabelClass> { return ptr.assumingMemoryBound(to: GtkAccelLabelClass.self) }

}



// MARK: - AccelLabelPrivate Record

/// The `AccelLabelPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkAccelLabelPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccelLabelPrivate`.
/// Alternatively, use `AccelLabelPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AccelLabelPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAccelLabelPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAccelLabelPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelLabelPrivate> { get }
}

/// The `AccelLabelPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkAccelLabelPrivate` instance.
/// It exposes methods that can operate on this data type through `AccelLabelPrivateProtocol` conformance.
/// Use `AccelLabelPrivateRef` only as an `unowned` reference to an existing `GtkAccelLabelPrivate` instance.
///

public struct AccelLabelPrivateRef: AccelLabelPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAccelLabelPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AccelLabelPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAccelLabelPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AccelLabelPrivateProtocol`
    init<T: AccelLabelPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AccelLabelPrivate` type acts as an owner of an underlying `GtkAccelLabelPrivate` instance.
/// It provides the methods that can operate on this data type through `AccelLabelPrivateProtocol` conformance.
/// Use `AccelLabelPrivate` as a strong reference or owner of a `GtkAccelLabelPrivate` instance.
///

open class AccelLabelPrivate: AccelLabelPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAccelLabelPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AccelLabelPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkAccelLabelPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AccelLabelPrivateProtocol`
    /// `GtkAccelLabelPrivate` does not allow reference counting.
    public convenience init<T: AccelLabelPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAccelLabelPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAccelLabelPrivate`.
    deinit {
        // no reference counting for GtkAccelLabelPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAccelLabelPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAccelLabelPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAccelLabelPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAccelLabelPrivate>(opaquePointer))
    }



}

// MARK: - no AccelLabelPrivate properties

// MARK: - no signals


public extension AccelLabelPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccelLabelPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelLabelPrivate> { return ptr.assumingMemoryBound(to: GtkAccelLabelPrivate.self) }

}



// MARK: - AccelMapClass Record

/// The `AccelMapClassProtocol` protocol exposes the methods and properties of an underlying `GtkAccelMapClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccelMapClass`.
/// Alternatively, use `AccelMapClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AccelMapClassProtocol {
    /// Untyped pointer to the underlying `GtkAccelMapClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAccelMapClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelMapClass> { get }
}

/// The `AccelMapClassRef` type acts as a lightweight Swift reference to an underlying `GtkAccelMapClass` instance.
/// It exposes methods that can operate on this data type through `AccelMapClassProtocol` conformance.
/// Use `AccelMapClassRef` only as an `unowned` reference to an existing `GtkAccelMapClass` instance.
///

public struct AccelMapClassRef: AccelMapClassProtocol {
    /// Untyped pointer to the underlying `GtkAccelMapClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AccelMapClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAccelMapClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AccelMapClassProtocol`
    init<T: AccelMapClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AccelMapClass` type acts as an owner of an underlying `GtkAccelMapClass` instance.
/// It provides the methods that can operate on this data type through `AccelMapClassProtocol` conformance.
/// Use `AccelMapClass` as a strong reference or owner of a `GtkAccelMapClass` instance.
///

open class AccelMapClass: AccelMapClassProtocol {
    /// Untyped pointer to the underlying `GtkAccelMapClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AccelMapClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkAccelMapClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AccelMapClassProtocol`
    /// `GtkAccelMapClass` does not allow reference counting.
    public convenience init<T: AccelMapClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAccelMapClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAccelMapClass`.
    deinit {
        // no reference counting for GtkAccelMapClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAccelMapClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAccelMapClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAccelMapClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAccelMapClass>(opaquePointer))
    }



}

// MARK: - no AccelMapClass properties

// MARK: - no signals


public extension AccelMapClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccelMapClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAccelMapClass> { return ptr.assumingMemoryBound(to: GtkAccelMapClass.self) }

}



// MARK: - AccessibleClass Record

/// The `AccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccessibleClass`.
/// Alternatively, use `AccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAccessibleClass> { get }
}

/// The `AccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `AccessibleClassProtocol` conformance.
/// Use `AccessibleClassRef` only as an `unowned` reference to an existing `GtkAccessibleClass` instance.
///

public struct AccessibleClassRef: AccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AccessibleClassProtocol`
    init<T: AccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AccessibleClass` type acts as an owner of an underlying `GtkAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `AccessibleClassProtocol` conformance.
/// Use `AccessibleClass` as a strong reference or owner of a `GtkAccessibleClass` instance.
///

open class AccessibleClass: AccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AccessibleClassProtocol`
    /// `GtkAccessibleClass` does not allow reference counting.
    public convenience init<T: AccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAccessibleClass`.
    deinit {
        // no reference counting for GtkAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAccessibleClass>(opaquePointer))
    }



}

// MARK: - no AccessibleClass properties

// MARK: - no signals


public extension AccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAccessibleClass> { return ptr.assumingMemoryBound(to: GtkAccessibleClass.self) }

}



// MARK: - AccessiblePrivate Record

/// The `AccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccessiblePrivate`.
/// Alternatively, use `AccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAccessiblePrivate> { get }
}

/// The `AccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `AccessiblePrivateProtocol` conformance.
/// Use `AccessiblePrivateRef` only as an `unowned` reference to an existing `GtkAccessiblePrivate` instance.
///

public struct AccessiblePrivateRef: AccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AccessiblePrivateProtocol`
    init<T: AccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AccessiblePrivate` type acts as an owner of an underlying `GtkAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `AccessiblePrivateProtocol` conformance.
/// Use `AccessiblePrivate` as a strong reference or owner of a `GtkAccessiblePrivate` instance.
///

open class AccessiblePrivate: AccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AccessiblePrivateProtocol`
    /// `GtkAccessiblePrivate` does not allow reference counting.
    public convenience init<T: AccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAccessiblePrivate`.
    deinit {
        // no reference counting for GtkAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no AccessiblePrivate properties

// MARK: - no signals


public extension AccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkAccessiblePrivate.self) }

}



// MARK: - ActionBarClass Record

/// The `ActionBarClassProtocol` protocol exposes the methods and properties of an underlying `GtkActionBarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionBarClass`.
/// Alternatively, use `ActionBarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ActionBarClassProtocol {
    /// Untyped pointer to the underlying `GtkActionBarClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkActionBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkActionBarClass> { get }
}

/// The `ActionBarClassRef` type acts as a lightweight Swift reference to an underlying `GtkActionBarClass` instance.
/// It exposes methods that can operate on this data type through `ActionBarClassProtocol` conformance.
/// Use `ActionBarClassRef` only as an `unowned` reference to an existing `GtkActionBarClass` instance.
///

public struct ActionBarClassRef: ActionBarClassProtocol {
    /// Untyped pointer to the underlying `GtkActionBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionBarClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkActionBarClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionBarClassProtocol`
    init<T: ActionBarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActionBarClass` type acts as an owner of an underlying `GtkActionBarClass` instance.
/// It provides the methods that can operate on this data type through `ActionBarClassProtocol` conformance.
/// Use `ActionBarClass` as a strong reference or owner of a `GtkActionBarClass` instance.
///

open class ActionBarClass: ActionBarClassProtocol {
    /// Untyped pointer to the underlying `GtkActionBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ActionBarClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkActionBarClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ActionBarClassProtocol`
    /// `GtkActionBarClass` does not allow reference counting.
    public convenience init<T: ActionBarClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkActionBarClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkActionBarClass`.
    deinit {
        // no reference counting for GtkActionBarClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkActionBarClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkActionBarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkActionBarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkActionBarClass>(opaquePointer))
    }



}

// MARK: - no ActionBarClass properties

// MARK: - no signals


public extension ActionBarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkActionBarClass> { return ptr.assumingMemoryBound(to: GtkActionBarClass.self) }

}



// MARK: - ActionBarPrivate Record

/// The `ActionBarPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkActionBarPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionBarPrivate`.
/// Alternatively, use `ActionBarPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ActionBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkActionBarPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkActionBarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkActionBarPrivate> { get }
}

/// The `ActionBarPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkActionBarPrivate` instance.
/// It exposes methods that can operate on this data type through `ActionBarPrivateProtocol` conformance.
/// Use `ActionBarPrivateRef` only as an `unowned` reference to an existing `GtkActionBarPrivate` instance.
///

public struct ActionBarPrivateRef: ActionBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkActionBarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionBarPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkActionBarPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionBarPrivateProtocol`
    init<T: ActionBarPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActionBarPrivate` type acts as an owner of an underlying `GtkActionBarPrivate` instance.
/// It provides the methods that can operate on this data type through `ActionBarPrivateProtocol` conformance.
/// Use `ActionBarPrivate` as a strong reference or owner of a `GtkActionBarPrivate` instance.
///

open class ActionBarPrivate: ActionBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkActionBarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ActionBarPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkActionBarPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ActionBarPrivateProtocol`
    /// `GtkActionBarPrivate` does not allow reference counting.
    public convenience init<T: ActionBarPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkActionBarPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkActionBarPrivate`.
    deinit {
        // no reference counting for GtkActionBarPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkActionBarPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkActionBarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkActionBarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkActionBarPrivate>(opaquePointer))
    }



}

// MARK: - no ActionBarPrivate properties

// MARK: - no signals


public extension ActionBarPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionBarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkActionBarPrivate> { return ptr.assumingMemoryBound(to: GtkActionBarPrivate.self) }

}



// MARK: - ActionClass Record

/// The `ActionClassProtocol` protocol exposes the methods and properties of an underlying `GtkActionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionClass`.
/// Alternatively, use `ActionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ActionClassProtocol {
    /// Untyped pointer to the underlying `GtkActionClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkActionClass> { get }
}

/// The `ActionClassRef` type acts as a lightweight Swift reference to an underlying `GtkActionClass` instance.
/// It exposes methods that can operate on this data type through `ActionClassProtocol` conformance.
/// Use `ActionClassRef` only as an `unowned` reference to an existing `GtkActionClass` instance.
///

public struct ActionClassRef: ActionClassProtocol {
    /// Untyped pointer to the underlying `GtkActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkActionClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionClassProtocol`
    init<T: ActionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActionClass` type acts as an owner of an underlying `GtkActionClass` instance.
/// It provides the methods that can operate on this data type through `ActionClassProtocol` conformance.
/// Use `ActionClass` as a strong reference or owner of a `GtkActionClass` instance.
///

open class ActionClass: ActionClassProtocol {
    /// Untyped pointer to the underlying `GtkActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ActionClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkActionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ActionClassProtocol`
    /// `GtkActionClass` does not allow reference counting.
    public convenience init<T: ActionClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkActionClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkActionClass`.
    deinit {
        // no reference counting for GtkActionClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkActionClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkActionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkActionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkActionClass>(opaquePointer))
    }



}

// MARK: - no ActionClass properties

// MARK: - no signals


public extension ActionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkActionClass> { return ptr.assumingMemoryBound(to: GtkActionClass.self) }

}



// MARK: - ActionEntry Record

/// The `ActionEntryProtocol` protocol exposes the methods and properties of an underlying `GtkActionEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionEntry`.
/// Alternatively, use `ActionEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkActionEntry` structs are used with `gtk_action_group_add_actions()` to
/// construct actions.
public protocol ActionEntryProtocol {
    /// Untyped pointer to the underlying `GtkActionEntry` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkActionEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkActionEntry> { get }
}

/// The `ActionEntryRef` type acts as a lightweight Swift reference to an underlying `GtkActionEntry` instance.
/// It exposes methods that can operate on this data type through `ActionEntryProtocol` conformance.
/// Use `ActionEntryRef` only as an `unowned` reference to an existing `GtkActionEntry` instance.
///
/// `GtkActionEntry` structs are used with `gtk_action_group_add_actions()` to
/// construct actions.
public struct ActionEntryRef: ActionEntryProtocol {
    /// Untyped pointer to the underlying `GtkActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionEntryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkActionEntry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionEntryProtocol`
    init<T: ActionEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActionEntry` type acts as an owner of an underlying `GtkActionEntry` instance.
/// It provides the methods that can operate on this data type through `ActionEntryProtocol` conformance.
/// Use `ActionEntry` as a strong reference or owner of a `GtkActionEntry` instance.
///
/// `GtkActionEntry` structs are used with `gtk_action_group_add_actions()` to
/// construct actions.
open class ActionEntry: ActionEntryProtocol {
    /// Untyped pointer to the underlying `GtkActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ActionEntry` instance.
    public init(_ op: UnsafeMutablePointer<GtkActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ActionEntryProtocol`
    /// `GtkActionEntry` does not allow reference counting.
    public convenience init<T: ActionEntryProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkActionEntry, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkActionEntry`.
    deinit {
        // no reference counting for GtkActionEntry, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkActionEntry.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkActionEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkActionEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkActionEntry>(opaquePointer))
    }



}

// MARK: - no ActionEntry properties

// MARK: - no signals


public extension ActionEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkActionEntry> { return ptr.assumingMemoryBound(to: GtkActionEntry.self) }

}



// MARK: - ActionGroupClass Record

/// The `ActionGroupClassProtocol` protocol exposes the methods and properties of an underlying `GtkActionGroupClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionGroupClass`.
/// Alternatively, use `ActionGroupClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ActionGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkActionGroupClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkActionGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkActionGroupClass> { get }
}

/// The `ActionGroupClassRef` type acts as a lightweight Swift reference to an underlying `GtkActionGroupClass` instance.
/// It exposes methods that can operate on this data type through `ActionGroupClassProtocol` conformance.
/// Use `ActionGroupClassRef` only as an `unowned` reference to an existing `GtkActionGroupClass` instance.
///

public struct ActionGroupClassRef: ActionGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkActionGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionGroupClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkActionGroupClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionGroupClassProtocol`
    init<T: ActionGroupClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActionGroupClass` type acts as an owner of an underlying `GtkActionGroupClass` instance.
/// It provides the methods that can operate on this data type through `ActionGroupClassProtocol` conformance.
/// Use `ActionGroupClass` as a strong reference or owner of a `GtkActionGroupClass` instance.
///

open class ActionGroupClass: ActionGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkActionGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ActionGroupClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkActionGroupClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ActionGroupClassProtocol`
    /// `GtkActionGroupClass` does not allow reference counting.
    public convenience init<T: ActionGroupClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkActionGroupClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkActionGroupClass`.
    deinit {
        // no reference counting for GtkActionGroupClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkActionGroupClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkActionGroupClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkActionGroupClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkActionGroupClass>(opaquePointer))
    }



}

// MARK: - no ActionGroupClass properties

// MARK: - no signals


public extension ActionGroupClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkActionGroupClass> { return ptr.assumingMemoryBound(to: GtkActionGroupClass.self) }

}



// MARK: - ActionGroupPrivate Record

/// The `ActionGroupPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkActionGroupPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionGroupPrivate`.
/// Alternatively, use `ActionGroupPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ActionGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GtkActionGroupPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkActionGroupPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkActionGroupPrivate> { get }
}

/// The `ActionGroupPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkActionGroupPrivate` instance.
/// It exposes methods that can operate on this data type through `ActionGroupPrivateProtocol` conformance.
/// Use `ActionGroupPrivateRef` only as an `unowned` reference to an existing `GtkActionGroupPrivate` instance.
///

public struct ActionGroupPrivateRef: ActionGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GtkActionGroupPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionGroupPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkActionGroupPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionGroupPrivateProtocol`
    init<T: ActionGroupPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActionGroupPrivate` type acts as an owner of an underlying `GtkActionGroupPrivate` instance.
/// It provides the methods that can operate on this data type through `ActionGroupPrivateProtocol` conformance.
/// Use `ActionGroupPrivate` as a strong reference or owner of a `GtkActionGroupPrivate` instance.
///

open class ActionGroupPrivate: ActionGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GtkActionGroupPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ActionGroupPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkActionGroupPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ActionGroupPrivateProtocol`
    /// `GtkActionGroupPrivate` does not allow reference counting.
    public convenience init<T: ActionGroupPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkActionGroupPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkActionGroupPrivate`.
    deinit {
        // no reference counting for GtkActionGroupPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkActionGroupPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkActionGroupPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkActionGroupPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkActionGroupPrivate>(opaquePointer))
    }



}

// MARK: - no ActionGroupPrivate properties

// MARK: - no signals


public extension ActionGroupPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionGroupPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkActionGroupPrivate> { return ptr.assumingMemoryBound(to: GtkActionGroupPrivate.self) }

}



// MARK: - ActionPrivate Record

/// The `ActionPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkActionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionPrivate`.
/// Alternatively, use `ActionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ActionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkActionPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkActionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkActionPrivate> { get }
}

/// The `ActionPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkActionPrivate` instance.
/// It exposes methods that can operate on this data type through `ActionPrivateProtocol` conformance.
/// Use `ActionPrivateRef` only as an `unowned` reference to an existing `GtkActionPrivate` instance.
///

public struct ActionPrivateRef: ActionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkActionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkActionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionPrivateProtocol`
    init<T: ActionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActionPrivate` type acts as an owner of an underlying `GtkActionPrivate` instance.
/// It provides the methods that can operate on this data type through `ActionPrivateProtocol` conformance.
/// Use `ActionPrivate` as a strong reference or owner of a `GtkActionPrivate` instance.
///

open class ActionPrivate: ActionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkActionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ActionPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkActionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ActionPrivateProtocol`
    /// `GtkActionPrivate` does not allow reference counting.
    public convenience init<T: ActionPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkActionPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkActionPrivate`.
    deinit {
        // no reference counting for GtkActionPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkActionPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkActionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkActionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkActionPrivate>(opaquePointer))
    }



}

// MARK: - no ActionPrivate properties

// MARK: - no signals


public extension ActionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkActionPrivate> { return ptr.assumingMemoryBound(to: GtkActionPrivate.self) }

}



// MARK: - ActionableInterface Record

/// The `ActionableInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkActionableInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionableInterface`.
/// Alternatively, use `ActionableInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The interface vtable for `GtkActionable`.
public protocol ActionableInterfaceProtocol {
    /// Untyped pointer to the underlying `GtkActionableInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkActionableInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkActionableInterface> { get }
}

/// The `ActionableInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkActionableInterface` instance.
/// It exposes methods that can operate on this data type through `ActionableInterfaceProtocol` conformance.
/// Use `ActionableInterfaceRef` only as an `unowned` reference to an existing `GtkActionableInterface` instance.
///
/// The interface vtable for `GtkActionable`.
public struct ActionableInterfaceRef: ActionableInterfaceProtocol {
    /// Untyped pointer to the underlying `GtkActionableInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionableInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkActionableInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionableInterfaceProtocol`
    init<T: ActionableInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActionableInterface` type acts as an owner of an underlying `GtkActionableInterface` instance.
/// It provides the methods that can operate on this data type through `ActionableInterfaceProtocol` conformance.
/// Use `ActionableInterface` as a strong reference or owner of a `GtkActionableInterface` instance.
///
/// The interface vtable for `GtkActionable`.
open class ActionableInterface: ActionableInterfaceProtocol {
    /// Untyped pointer to the underlying `GtkActionableInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ActionableInterface` instance.
    public init(_ op: UnsafeMutablePointer<GtkActionableInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ActionableInterfaceProtocol`
    /// `GtkActionableInterface` does not allow reference counting.
    public convenience init<T: ActionableInterfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkActionableInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkActionableInterface`.
    deinit {
        // no reference counting for GtkActionableInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkActionableInterface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkActionableInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkActionableInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkActionableInterface>(opaquePointer))
    }



}

// MARK: - no ActionableInterface properties

// MARK: - no signals


public extension ActionableInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionableInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkActionableInterface> { return ptr.assumingMemoryBound(to: GtkActionableInterface.self) }

}



// MARK: - ActivatableIface Record

/// The `ActivatableIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkActivatableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActivatableIface`.
/// Alternatively, use `ActivatableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// > This method can be called with a `nil` action at times.
public protocol ActivatableIfaceProtocol {
    /// Untyped pointer to the underlying `GtkActivatableIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkActivatableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkActivatableIface> { get }
}

/// The `ActivatableIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkActivatableIface` instance.
/// It exposes methods that can operate on this data type through `ActivatableIfaceProtocol` conformance.
/// Use `ActivatableIfaceRef` only as an `unowned` reference to an existing `GtkActivatableIface` instance.
///
/// > This method can be called with a `nil` action at times.
public struct ActivatableIfaceRef: ActivatableIfaceProtocol {
    /// Untyped pointer to the underlying `GtkActivatableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ActivatableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkActivatableIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActivatableIfaceProtocol`
    init<T: ActivatableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActivatableIface` type acts as an owner of an underlying `GtkActivatableIface` instance.
/// It provides the methods that can operate on this data type through `ActivatableIfaceProtocol` conformance.
/// Use `ActivatableIface` as a strong reference or owner of a `GtkActivatableIface` instance.
///
/// > This method can be called with a `nil` action at times.
open class ActivatableIface: ActivatableIfaceProtocol {
    /// Untyped pointer to the underlying `GtkActivatableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ActivatableIface` instance.
    public init(_ op: UnsafeMutablePointer<GtkActivatableIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ActivatableIfaceProtocol`
    /// `GtkActivatableIface` does not allow reference counting.
    public convenience init<T: ActivatableIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkActivatableIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkActivatableIface`.
    deinit {
        // no reference counting for GtkActivatableIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkActivatableIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkActivatableIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkActivatableIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkActivatableIface>(opaquePointer))
    }



}

// MARK: - no ActivatableIface properties

// MARK: - no signals


public extension ActivatableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActivatableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkActivatableIface> { return ptr.assumingMemoryBound(to: GtkActivatableIface.self) }

}



// MARK: - AdjustmentClass Record

/// The `AdjustmentClassProtocol` protocol exposes the methods and properties of an underlying `GtkAdjustmentClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AdjustmentClass`.
/// Alternatively, use `AdjustmentClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AdjustmentClassProtocol {
    /// Untyped pointer to the underlying `GtkAdjustmentClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAdjustmentClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAdjustmentClass> { get }
}

/// The `AdjustmentClassRef` type acts as a lightweight Swift reference to an underlying `GtkAdjustmentClass` instance.
/// It exposes methods that can operate on this data type through `AdjustmentClassProtocol` conformance.
/// Use `AdjustmentClassRef` only as an `unowned` reference to an existing `GtkAdjustmentClass` instance.
///

public struct AdjustmentClassRef: AdjustmentClassProtocol {
    /// Untyped pointer to the underlying `GtkAdjustmentClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AdjustmentClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAdjustmentClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AdjustmentClassProtocol`
    init<T: AdjustmentClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AdjustmentClass` type acts as an owner of an underlying `GtkAdjustmentClass` instance.
/// It provides the methods that can operate on this data type through `AdjustmentClassProtocol` conformance.
/// Use `AdjustmentClass` as a strong reference or owner of a `GtkAdjustmentClass` instance.
///

open class AdjustmentClass: AdjustmentClassProtocol {
    /// Untyped pointer to the underlying `GtkAdjustmentClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AdjustmentClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkAdjustmentClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AdjustmentClassProtocol`
    /// `GtkAdjustmentClass` does not allow reference counting.
    public convenience init<T: AdjustmentClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAdjustmentClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAdjustmentClass`.
    deinit {
        // no reference counting for GtkAdjustmentClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAdjustmentClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAdjustmentClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAdjustmentClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAdjustmentClass>(opaquePointer))
    }



}

// MARK: - no AdjustmentClass properties

// MARK: - no signals


public extension AdjustmentClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAdjustmentClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAdjustmentClass> { return ptr.assumingMemoryBound(to: GtkAdjustmentClass.self) }

}



// MARK: - AdjustmentPrivate Record

/// The `AdjustmentPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkAdjustmentPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AdjustmentPrivate`.
/// Alternatively, use `AdjustmentPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AdjustmentPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAdjustmentPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAdjustmentPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAdjustmentPrivate> { get }
}

/// The `AdjustmentPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkAdjustmentPrivate` instance.
/// It exposes methods that can operate on this data type through `AdjustmentPrivateProtocol` conformance.
/// Use `AdjustmentPrivateRef` only as an `unowned` reference to an existing `GtkAdjustmentPrivate` instance.
///

public struct AdjustmentPrivateRef: AdjustmentPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAdjustmentPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AdjustmentPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAdjustmentPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AdjustmentPrivateProtocol`
    init<T: AdjustmentPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AdjustmentPrivate` type acts as an owner of an underlying `GtkAdjustmentPrivate` instance.
/// It provides the methods that can operate on this data type through `AdjustmentPrivateProtocol` conformance.
/// Use `AdjustmentPrivate` as a strong reference or owner of a `GtkAdjustmentPrivate` instance.
///

open class AdjustmentPrivate: AdjustmentPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAdjustmentPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AdjustmentPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkAdjustmentPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AdjustmentPrivateProtocol`
    /// `GtkAdjustmentPrivate` does not allow reference counting.
    public convenience init<T: AdjustmentPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAdjustmentPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAdjustmentPrivate`.
    deinit {
        // no reference counting for GtkAdjustmentPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAdjustmentPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAdjustmentPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAdjustmentPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAdjustmentPrivate>(opaquePointer))
    }



}

// MARK: - no AdjustmentPrivate properties

// MARK: - no signals


public extension AdjustmentPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAdjustmentPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAdjustmentPrivate> { return ptr.assumingMemoryBound(to: GtkAdjustmentPrivate.self) }

}



// MARK: - AlignmentClass Record

/// The `AlignmentClassProtocol` protocol exposes the methods and properties of an underlying `GtkAlignmentClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AlignmentClass`.
/// Alternatively, use `AlignmentClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AlignmentClassProtocol {
    /// Untyped pointer to the underlying `GtkAlignmentClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAlignmentClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAlignmentClass> { get }
}

/// The `AlignmentClassRef` type acts as a lightweight Swift reference to an underlying `GtkAlignmentClass` instance.
/// It exposes methods that can operate on this data type through `AlignmentClassProtocol` conformance.
/// Use `AlignmentClassRef` only as an `unowned` reference to an existing `GtkAlignmentClass` instance.
///

public struct AlignmentClassRef: AlignmentClassProtocol {
    /// Untyped pointer to the underlying `GtkAlignmentClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AlignmentClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAlignmentClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AlignmentClassProtocol`
    init<T: AlignmentClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AlignmentClass` type acts as an owner of an underlying `GtkAlignmentClass` instance.
/// It provides the methods that can operate on this data type through `AlignmentClassProtocol` conformance.
/// Use `AlignmentClass` as a strong reference or owner of a `GtkAlignmentClass` instance.
///

open class AlignmentClass: AlignmentClassProtocol {
    /// Untyped pointer to the underlying `GtkAlignmentClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AlignmentClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkAlignmentClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AlignmentClassProtocol`
    /// `GtkAlignmentClass` does not allow reference counting.
    public convenience init<T: AlignmentClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAlignmentClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAlignmentClass`.
    deinit {
        // no reference counting for GtkAlignmentClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAlignmentClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAlignmentClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAlignmentClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAlignmentClass>(opaquePointer))
    }



}

// MARK: - no AlignmentClass properties

// MARK: - no signals


public extension AlignmentClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAlignmentClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAlignmentClass> { return ptr.assumingMemoryBound(to: GtkAlignmentClass.self) }

}



// MARK: - AlignmentPrivate Record

/// The `AlignmentPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkAlignmentPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AlignmentPrivate`.
/// Alternatively, use `AlignmentPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AlignmentPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAlignmentPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAlignmentPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAlignmentPrivate> { get }
}

/// The `AlignmentPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkAlignmentPrivate` instance.
/// It exposes methods that can operate on this data type through `AlignmentPrivateProtocol` conformance.
/// Use `AlignmentPrivateRef` only as an `unowned` reference to an existing `GtkAlignmentPrivate` instance.
///

public struct AlignmentPrivateRef: AlignmentPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAlignmentPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AlignmentPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAlignmentPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AlignmentPrivateProtocol`
    init<T: AlignmentPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AlignmentPrivate` type acts as an owner of an underlying `GtkAlignmentPrivate` instance.
/// It provides the methods that can operate on this data type through `AlignmentPrivateProtocol` conformance.
/// Use `AlignmentPrivate` as a strong reference or owner of a `GtkAlignmentPrivate` instance.
///

open class AlignmentPrivate: AlignmentPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAlignmentPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AlignmentPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkAlignmentPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AlignmentPrivateProtocol`
    /// `GtkAlignmentPrivate` does not allow reference counting.
    public convenience init<T: AlignmentPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAlignmentPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAlignmentPrivate`.
    deinit {
        // no reference counting for GtkAlignmentPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAlignmentPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAlignmentPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAlignmentPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAlignmentPrivate>(opaquePointer))
    }



}

// MARK: - no AlignmentPrivate properties

// MARK: - no signals


public extension AlignmentPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAlignmentPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAlignmentPrivate> { return ptr.assumingMemoryBound(to: GtkAlignmentPrivate.self) }

}



// MARK: - AppChooserButtonClass Record

/// The `AppChooserButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkAppChooserButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppChooserButtonClass`.
/// Alternatively, use `AppChooserButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AppChooserButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAppChooserButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAppChooserButtonClass> { get }
}

/// The `AppChooserButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkAppChooserButtonClass` instance.
/// It exposes methods that can operate on this data type through `AppChooserButtonClassProtocol` conformance.
/// Use `AppChooserButtonClassRef` only as an `unowned` reference to an existing `GtkAppChooserButtonClass` instance.
///

public struct AppChooserButtonClassRef: AppChooserButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AppChooserButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAppChooserButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AppChooserButtonClassProtocol`
    init<T: AppChooserButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AppChooserButtonClass` type acts as an owner of an underlying `GtkAppChooserButtonClass` instance.
/// It provides the methods that can operate on this data type through `AppChooserButtonClassProtocol` conformance.
/// Use `AppChooserButtonClass` as a strong reference or owner of a `GtkAppChooserButtonClass` instance.
///

open class AppChooserButtonClass: AppChooserButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AppChooserButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkAppChooserButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AppChooserButtonClassProtocol`
    /// `GtkAppChooserButtonClass` does not allow reference counting.
    public convenience init<T: AppChooserButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAppChooserButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAppChooserButtonClass`.
    deinit {
        // no reference counting for GtkAppChooserButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAppChooserButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAppChooserButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAppChooserButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAppChooserButtonClass>(opaquePointer))
    }



}

// MARK: - no AppChooserButtonClass properties

// MARK: - no signals


public extension AppChooserButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAppChooserButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAppChooserButtonClass> { return ptr.assumingMemoryBound(to: GtkAppChooserButtonClass.self) }

}



// MARK: - AppChooserButtonPrivate Record

/// The `AppChooserButtonPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkAppChooserButtonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppChooserButtonPrivate`.
/// Alternatively, use `AppChooserButtonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AppChooserButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserButtonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAppChooserButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAppChooserButtonPrivate> { get }
}

/// The `AppChooserButtonPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkAppChooserButtonPrivate` instance.
/// It exposes methods that can operate on this data type through `AppChooserButtonPrivateProtocol` conformance.
/// Use `AppChooserButtonPrivateRef` only as an `unowned` reference to an existing `GtkAppChooserButtonPrivate` instance.
///

public struct AppChooserButtonPrivateRef: AppChooserButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AppChooserButtonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAppChooserButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AppChooserButtonPrivateProtocol`
    init<T: AppChooserButtonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AppChooserButtonPrivate` type acts as an owner of an underlying `GtkAppChooserButtonPrivate` instance.
/// It provides the methods that can operate on this data type through `AppChooserButtonPrivateProtocol` conformance.
/// Use `AppChooserButtonPrivate` as a strong reference or owner of a `GtkAppChooserButtonPrivate` instance.
///

open class AppChooserButtonPrivate: AppChooserButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AppChooserButtonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkAppChooserButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AppChooserButtonPrivateProtocol`
    /// `GtkAppChooserButtonPrivate` does not allow reference counting.
    public convenience init<T: AppChooserButtonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAppChooserButtonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAppChooserButtonPrivate`.
    deinit {
        // no reference counting for GtkAppChooserButtonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAppChooserButtonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAppChooserButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAppChooserButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAppChooserButtonPrivate>(opaquePointer))
    }



}

// MARK: - no AppChooserButtonPrivate properties

// MARK: - no signals


public extension AppChooserButtonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAppChooserButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAppChooserButtonPrivate> { return ptr.assumingMemoryBound(to: GtkAppChooserButtonPrivate.self) }

}



// MARK: - AppChooserDialogClass Record

/// The `AppChooserDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkAppChooserDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppChooserDialogClass`.
/// Alternatively, use `AppChooserDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AppChooserDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserDialogClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAppChooserDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAppChooserDialogClass> { get }
}

/// The `AppChooserDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkAppChooserDialogClass` instance.
/// It exposes methods that can operate on this data type through `AppChooserDialogClassProtocol` conformance.
/// Use `AppChooserDialogClassRef` only as an `unowned` reference to an existing `GtkAppChooserDialogClass` instance.
///

public struct AppChooserDialogClassRef: AppChooserDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AppChooserDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAppChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AppChooserDialogClassProtocol`
    init<T: AppChooserDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AppChooserDialogClass` type acts as an owner of an underlying `GtkAppChooserDialogClass` instance.
/// It provides the methods that can operate on this data type through `AppChooserDialogClassProtocol` conformance.
/// Use `AppChooserDialogClass` as a strong reference or owner of a `GtkAppChooserDialogClass` instance.
///

open class AppChooserDialogClass: AppChooserDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AppChooserDialogClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkAppChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AppChooserDialogClassProtocol`
    /// `GtkAppChooserDialogClass` does not allow reference counting.
    public convenience init<T: AppChooserDialogClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAppChooserDialogClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAppChooserDialogClass`.
    deinit {
        // no reference counting for GtkAppChooserDialogClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAppChooserDialogClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAppChooserDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAppChooserDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAppChooserDialogClass>(opaquePointer))
    }



}

// MARK: - no AppChooserDialogClass properties

// MARK: - no signals


public extension AppChooserDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAppChooserDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAppChooserDialogClass> { return ptr.assumingMemoryBound(to: GtkAppChooserDialogClass.self) }

}



// MARK: - AppChooserDialogPrivate Record

/// The `AppChooserDialogPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkAppChooserDialogPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppChooserDialogPrivate`.
/// Alternatively, use `AppChooserDialogPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AppChooserDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserDialogPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAppChooserDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAppChooserDialogPrivate> { get }
}

/// The `AppChooserDialogPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkAppChooserDialogPrivate` instance.
/// It exposes methods that can operate on this data type through `AppChooserDialogPrivateProtocol` conformance.
/// Use `AppChooserDialogPrivateRef` only as an `unowned` reference to an existing `GtkAppChooserDialogPrivate` instance.
///

public struct AppChooserDialogPrivateRef: AppChooserDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AppChooserDialogPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAppChooserDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AppChooserDialogPrivateProtocol`
    init<T: AppChooserDialogPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AppChooserDialogPrivate` type acts as an owner of an underlying `GtkAppChooserDialogPrivate` instance.
/// It provides the methods that can operate on this data type through `AppChooserDialogPrivateProtocol` conformance.
/// Use `AppChooserDialogPrivate` as a strong reference or owner of a `GtkAppChooserDialogPrivate` instance.
///

open class AppChooserDialogPrivate: AppChooserDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AppChooserDialogPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkAppChooserDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AppChooserDialogPrivateProtocol`
    /// `GtkAppChooserDialogPrivate` does not allow reference counting.
    public convenience init<T: AppChooserDialogPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAppChooserDialogPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAppChooserDialogPrivate`.
    deinit {
        // no reference counting for GtkAppChooserDialogPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAppChooserDialogPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAppChooserDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAppChooserDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAppChooserDialogPrivate>(opaquePointer))
    }



}

// MARK: - no AppChooserDialogPrivate properties

// MARK: - no signals


public extension AppChooserDialogPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAppChooserDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAppChooserDialogPrivate> { return ptr.assumingMemoryBound(to: GtkAppChooserDialogPrivate.self) }

}



// MARK: - AppChooserWidgetClass Record

/// The `AppChooserWidgetClassProtocol` protocol exposes the methods and properties of an underlying `GtkAppChooserWidgetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppChooserWidgetClass`.
/// Alternatively, use `AppChooserWidgetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AppChooserWidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserWidgetClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAppChooserWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAppChooserWidgetClass> { get }
}

/// The `AppChooserWidgetClassRef` type acts as a lightweight Swift reference to an underlying `GtkAppChooserWidgetClass` instance.
/// It exposes methods that can operate on this data type through `AppChooserWidgetClassProtocol` conformance.
/// Use `AppChooserWidgetClassRef` only as an `unowned` reference to an existing `GtkAppChooserWidgetClass` instance.
///

public struct AppChooserWidgetClassRef: AppChooserWidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AppChooserWidgetClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAppChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AppChooserWidgetClassProtocol`
    init<T: AppChooserWidgetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AppChooserWidgetClass` type acts as an owner of an underlying `GtkAppChooserWidgetClass` instance.
/// It provides the methods that can operate on this data type through `AppChooserWidgetClassProtocol` conformance.
/// Use `AppChooserWidgetClass` as a strong reference or owner of a `GtkAppChooserWidgetClass` instance.
///

open class AppChooserWidgetClass: AppChooserWidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AppChooserWidgetClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkAppChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AppChooserWidgetClassProtocol`
    /// `GtkAppChooserWidgetClass` does not allow reference counting.
    public convenience init<T: AppChooserWidgetClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAppChooserWidgetClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAppChooserWidgetClass`.
    deinit {
        // no reference counting for GtkAppChooserWidgetClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAppChooserWidgetClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAppChooserWidgetClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAppChooserWidgetClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAppChooserWidgetClass>(opaquePointer))
    }



}

// MARK: - no AppChooserWidgetClass properties

// MARK: - no signals


public extension AppChooserWidgetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAppChooserWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAppChooserWidgetClass> { return ptr.assumingMemoryBound(to: GtkAppChooserWidgetClass.self) }

}



// MARK: - AppChooserWidgetPrivate Record

/// The `AppChooserWidgetPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkAppChooserWidgetPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppChooserWidgetPrivate`.
/// Alternatively, use `AppChooserWidgetPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AppChooserWidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserWidgetPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAppChooserWidgetPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAppChooserWidgetPrivate> { get }
}

/// The `AppChooserWidgetPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkAppChooserWidgetPrivate` instance.
/// It exposes methods that can operate on this data type through `AppChooserWidgetPrivateProtocol` conformance.
/// Use `AppChooserWidgetPrivateRef` only as an `unowned` reference to an existing `GtkAppChooserWidgetPrivate` instance.
///

public struct AppChooserWidgetPrivateRef: AppChooserWidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserWidgetPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AppChooserWidgetPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAppChooserWidgetPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AppChooserWidgetPrivateProtocol`
    init<T: AppChooserWidgetPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AppChooserWidgetPrivate` type acts as an owner of an underlying `GtkAppChooserWidgetPrivate` instance.
/// It provides the methods that can operate on this data type through `AppChooserWidgetPrivateProtocol` conformance.
/// Use `AppChooserWidgetPrivate` as a strong reference or owner of a `GtkAppChooserWidgetPrivate` instance.
///

open class AppChooserWidgetPrivate: AppChooserWidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAppChooserWidgetPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AppChooserWidgetPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkAppChooserWidgetPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AppChooserWidgetPrivateProtocol`
    /// `GtkAppChooserWidgetPrivate` does not allow reference counting.
    public convenience init<T: AppChooserWidgetPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAppChooserWidgetPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAppChooserWidgetPrivate`.
    deinit {
        // no reference counting for GtkAppChooserWidgetPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAppChooserWidgetPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAppChooserWidgetPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAppChooserWidgetPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAppChooserWidgetPrivate>(opaquePointer))
    }



}

// MARK: - no AppChooserWidgetPrivate properties

// MARK: - no signals


public extension AppChooserWidgetPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAppChooserWidgetPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAppChooserWidgetPrivate> { return ptr.assumingMemoryBound(to: GtkAppChooserWidgetPrivate.self) }

}



// MARK: - ApplicationClass Record

/// The `ApplicationClassProtocol` protocol exposes the methods and properties of an underlying `GtkApplicationClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ApplicationClass`.
/// Alternatively, use `ApplicationClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ApplicationClassProtocol {
    /// Untyped pointer to the underlying `GtkApplicationClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkApplicationClass` instance.
    var _ptr: UnsafeMutablePointer<GtkApplicationClass> { get }
}

/// The `ApplicationClassRef` type acts as a lightweight Swift reference to an underlying `GtkApplicationClass` instance.
/// It exposes methods that can operate on this data type through `ApplicationClassProtocol` conformance.
/// Use `ApplicationClassRef` only as an `unowned` reference to an existing `GtkApplicationClass` instance.
///

public struct ApplicationClassRef: ApplicationClassProtocol {
    /// Untyped pointer to the underlying `GtkApplicationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ApplicationClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkApplicationClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ApplicationClassProtocol`
    init<T: ApplicationClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ApplicationClass` type acts as an owner of an underlying `GtkApplicationClass` instance.
/// It provides the methods that can operate on this data type through `ApplicationClassProtocol` conformance.
/// Use `ApplicationClass` as a strong reference or owner of a `GtkApplicationClass` instance.
///

open class ApplicationClass: ApplicationClassProtocol {
    /// Untyped pointer to the underlying `GtkApplicationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ApplicationClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkApplicationClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ApplicationClassProtocol`
    /// `GtkApplicationClass` does not allow reference counting.
    public convenience init<T: ApplicationClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkApplicationClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkApplicationClass`.
    deinit {
        // no reference counting for GtkApplicationClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkApplicationClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkApplicationClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkApplicationClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkApplicationClass>(opaquePointer))
    }



}

// MARK: - no ApplicationClass properties

// MARK: - no signals


public extension ApplicationClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkApplicationClass` instance.
    var _ptr: UnsafeMutablePointer<GtkApplicationClass> { return ptr.assumingMemoryBound(to: GtkApplicationClass.self) }

}



// MARK: - ApplicationPrivate Record

/// The `ApplicationPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkApplicationPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ApplicationPrivate`.
/// Alternatively, use `ApplicationPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ApplicationPrivateProtocol {
    /// Untyped pointer to the underlying `GtkApplicationPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkApplicationPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkApplicationPrivate> { get }
}

/// The `ApplicationPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkApplicationPrivate` instance.
/// It exposes methods that can operate on this data type through `ApplicationPrivateProtocol` conformance.
/// Use `ApplicationPrivateRef` only as an `unowned` reference to an existing `GtkApplicationPrivate` instance.
///

public struct ApplicationPrivateRef: ApplicationPrivateProtocol {
    /// Untyped pointer to the underlying `GtkApplicationPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ApplicationPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkApplicationPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ApplicationPrivateProtocol`
    init<T: ApplicationPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ApplicationPrivate` type acts as an owner of an underlying `GtkApplicationPrivate` instance.
/// It provides the methods that can operate on this data type through `ApplicationPrivateProtocol` conformance.
/// Use `ApplicationPrivate` as a strong reference or owner of a `GtkApplicationPrivate` instance.
///

open class ApplicationPrivate: ApplicationPrivateProtocol {
    /// Untyped pointer to the underlying `GtkApplicationPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ApplicationPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkApplicationPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ApplicationPrivateProtocol`
    /// `GtkApplicationPrivate` does not allow reference counting.
    public convenience init<T: ApplicationPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkApplicationPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkApplicationPrivate`.
    deinit {
        // no reference counting for GtkApplicationPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkApplicationPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkApplicationPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkApplicationPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkApplicationPrivate>(opaquePointer))
    }



}

// MARK: - no ApplicationPrivate properties

// MARK: - no signals


public extension ApplicationPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkApplicationPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkApplicationPrivate> { return ptr.assumingMemoryBound(to: GtkApplicationPrivate.self) }

}



// MARK: - ApplicationWindowClass Record

/// The `ApplicationWindowClassProtocol` protocol exposes the methods and properties of an underlying `GtkApplicationWindowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ApplicationWindowClass`.
/// Alternatively, use `ApplicationWindowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ApplicationWindowClassProtocol {
    /// Untyped pointer to the underlying `GtkApplicationWindowClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkApplicationWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkApplicationWindowClass> { get }
}

/// The `ApplicationWindowClassRef` type acts as a lightweight Swift reference to an underlying `GtkApplicationWindowClass` instance.
/// It exposes methods that can operate on this data type through `ApplicationWindowClassProtocol` conformance.
/// Use `ApplicationWindowClassRef` only as an `unowned` reference to an existing `GtkApplicationWindowClass` instance.
///

public struct ApplicationWindowClassRef: ApplicationWindowClassProtocol {
    /// Untyped pointer to the underlying `GtkApplicationWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ApplicationWindowClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkApplicationWindowClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ApplicationWindowClassProtocol`
    init<T: ApplicationWindowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ApplicationWindowClass` type acts as an owner of an underlying `GtkApplicationWindowClass` instance.
/// It provides the methods that can operate on this data type through `ApplicationWindowClassProtocol` conformance.
/// Use `ApplicationWindowClass` as a strong reference or owner of a `GtkApplicationWindowClass` instance.
///

open class ApplicationWindowClass: ApplicationWindowClassProtocol {
    /// Untyped pointer to the underlying `GtkApplicationWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ApplicationWindowClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkApplicationWindowClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ApplicationWindowClassProtocol`
    /// `GtkApplicationWindowClass` does not allow reference counting.
    public convenience init<T: ApplicationWindowClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkApplicationWindowClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkApplicationWindowClass`.
    deinit {
        // no reference counting for GtkApplicationWindowClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkApplicationWindowClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkApplicationWindowClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkApplicationWindowClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkApplicationWindowClass>(opaquePointer))
    }



}

// MARK: - no ApplicationWindowClass properties

// MARK: - no signals


public extension ApplicationWindowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkApplicationWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkApplicationWindowClass> { return ptr.assumingMemoryBound(to: GtkApplicationWindowClass.self) }

}



// MARK: - ApplicationWindowPrivate Record

/// The `ApplicationWindowPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkApplicationWindowPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ApplicationWindowPrivate`.
/// Alternatively, use `ApplicationWindowPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ApplicationWindowPrivateProtocol {
    /// Untyped pointer to the underlying `GtkApplicationWindowPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkApplicationWindowPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkApplicationWindowPrivate> { get }
}

/// The `ApplicationWindowPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkApplicationWindowPrivate` instance.
/// It exposes methods that can operate on this data type through `ApplicationWindowPrivateProtocol` conformance.
/// Use `ApplicationWindowPrivateRef` only as an `unowned` reference to an existing `GtkApplicationWindowPrivate` instance.
///

public struct ApplicationWindowPrivateRef: ApplicationWindowPrivateProtocol {
    /// Untyped pointer to the underlying `GtkApplicationWindowPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ApplicationWindowPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkApplicationWindowPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ApplicationWindowPrivateProtocol`
    init<T: ApplicationWindowPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ApplicationWindowPrivate` type acts as an owner of an underlying `GtkApplicationWindowPrivate` instance.
/// It provides the methods that can operate on this data type through `ApplicationWindowPrivateProtocol` conformance.
/// Use `ApplicationWindowPrivate` as a strong reference or owner of a `GtkApplicationWindowPrivate` instance.
///

open class ApplicationWindowPrivate: ApplicationWindowPrivateProtocol {
    /// Untyped pointer to the underlying `GtkApplicationWindowPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ApplicationWindowPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkApplicationWindowPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ApplicationWindowPrivateProtocol`
    /// `GtkApplicationWindowPrivate` does not allow reference counting.
    public convenience init<T: ApplicationWindowPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkApplicationWindowPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkApplicationWindowPrivate`.
    deinit {
        // no reference counting for GtkApplicationWindowPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkApplicationWindowPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkApplicationWindowPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkApplicationWindowPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkApplicationWindowPrivate>(opaquePointer))
    }



}

// MARK: - no ApplicationWindowPrivate properties

// MARK: - no signals


public extension ApplicationWindowPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkApplicationWindowPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkApplicationWindowPrivate> { return ptr.assumingMemoryBound(to: GtkApplicationWindowPrivate.self) }

}



// MARK: - ArrowAccessibleClass Record

/// The `ArrowAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkArrowAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ArrowAccessibleClass`.
/// Alternatively, use `ArrowAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ArrowAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkArrowAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkArrowAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkArrowAccessibleClass> { get }
}

/// The `ArrowAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkArrowAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ArrowAccessibleClassProtocol` conformance.
/// Use `ArrowAccessibleClassRef` only as an `unowned` reference to an existing `GtkArrowAccessibleClass` instance.
///

public struct ArrowAccessibleClassRef: ArrowAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkArrowAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ArrowAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkArrowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ArrowAccessibleClassProtocol`
    init<T: ArrowAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ArrowAccessibleClass` type acts as an owner of an underlying `GtkArrowAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ArrowAccessibleClassProtocol` conformance.
/// Use `ArrowAccessibleClass` as a strong reference or owner of a `GtkArrowAccessibleClass` instance.
///

open class ArrowAccessibleClass: ArrowAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkArrowAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ArrowAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkArrowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ArrowAccessibleClassProtocol`
    /// `GtkArrowAccessibleClass` does not allow reference counting.
    public convenience init<T: ArrowAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkArrowAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkArrowAccessibleClass`.
    deinit {
        // no reference counting for GtkArrowAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkArrowAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkArrowAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkArrowAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkArrowAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ArrowAccessibleClass properties

// MARK: - no signals


public extension ArrowAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkArrowAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkArrowAccessibleClass> { return ptr.assumingMemoryBound(to: GtkArrowAccessibleClass.self) }

}



// MARK: - ArrowAccessiblePrivate Record

/// The `ArrowAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkArrowAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ArrowAccessiblePrivate`.
/// Alternatively, use `ArrowAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ArrowAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkArrowAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkArrowAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkArrowAccessiblePrivate> { get }
}

/// The `ArrowAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkArrowAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `ArrowAccessiblePrivateProtocol` conformance.
/// Use `ArrowAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkArrowAccessiblePrivate` instance.
///

public struct ArrowAccessiblePrivateRef: ArrowAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkArrowAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ArrowAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkArrowAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ArrowAccessiblePrivateProtocol`
    init<T: ArrowAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ArrowAccessiblePrivate` type acts as an owner of an underlying `GtkArrowAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `ArrowAccessiblePrivateProtocol` conformance.
/// Use `ArrowAccessiblePrivate` as a strong reference or owner of a `GtkArrowAccessiblePrivate` instance.
///

open class ArrowAccessiblePrivate: ArrowAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkArrowAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ArrowAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkArrowAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ArrowAccessiblePrivateProtocol`
    /// `GtkArrowAccessiblePrivate` does not allow reference counting.
    public convenience init<T: ArrowAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkArrowAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkArrowAccessiblePrivate`.
    deinit {
        // no reference counting for GtkArrowAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkArrowAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkArrowAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkArrowAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkArrowAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no ArrowAccessiblePrivate properties

// MARK: - no signals


public extension ArrowAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkArrowAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkArrowAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkArrowAccessiblePrivate.self) }

}



// MARK: - ArrowClass Record

/// The `ArrowClassProtocol` protocol exposes the methods and properties of an underlying `GtkArrowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ArrowClass`.
/// Alternatively, use `ArrowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ArrowClassProtocol {
    /// Untyped pointer to the underlying `GtkArrowClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkArrowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkArrowClass> { get }
}

/// The `ArrowClassRef` type acts as a lightweight Swift reference to an underlying `GtkArrowClass` instance.
/// It exposes methods that can operate on this data type through `ArrowClassProtocol` conformance.
/// Use `ArrowClassRef` only as an `unowned` reference to an existing `GtkArrowClass` instance.
///

public struct ArrowClassRef: ArrowClassProtocol {
    /// Untyped pointer to the underlying `GtkArrowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ArrowClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkArrowClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ArrowClassProtocol`
    init<T: ArrowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ArrowClass` type acts as an owner of an underlying `GtkArrowClass` instance.
/// It provides the methods that can operate on this data type through `ArrowClassProtocol` conformance.
/// Use `ArrowClass` as a strong reference or owner of a `GtkArrowClass` instance.
///

open class ArrowClass: ArrowClassProtocol {
    /// Untyped pointer to the underlying `GtkArrowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ArrowClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkArrowClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ArrowClassProtocol`
    /// `GtkArrowClass` does not allow reference counting.
    public convenience init<T: ArrowClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkArrowClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkArrowClass`.
    deinit {
        // no reference counting for GtkArrowClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkArrowClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkArrowClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkArrowClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkArrowClass>(opaquePointer))
    }



}

// MARK: - no ArrowClass properties

// MARK: - no signals


public extension ArrowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkArrowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkArrowClass> { return ptr.assumingMemoryBound(to: GtkArrowClass.self) }

}



// MARK: - ArrowPrivate Record

/// The `ArrowPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkArrowPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ArrowPrivate`.
/// Alternatively, use `ArrowPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ArrowPrivateProtocol {
    /// Untyped pointer to the underlying `GtkArrowPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkArrowPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkArrowPrivate> { get }
}

/// The `ArrowPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkArrowPrivate` instance.
/// It exposes methods that can operate on this data type through `ArrowPrivateProtocol` conformance.
/// Use `ArrowPrivateRef` only as an `unowned` reference to an existing `GtkArrowPrivate` instance.
///

public struct ArrowPrivateRef: ArrowPrivateProtocol {
    /// Untyped pointer to the underlying `GtkArrowPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ArrowPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkArrowPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ArrowPrivateProtocol`
    init<T: ArrowPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ArrowPrivate` type acts as an owner of an underlying `GtkArrowPrivate` instance.
/// It provides the methods that can operate on this data type through `ArrowPrivateProtocol` conformance.
/// Use `ArrowPrivate` as a strong reference or owner of a `GtkArrowPrivate` instance.
///

open class ArrowPrivate: ArrowPrivateProtocol {
    /// Untyped pointer to the underlying `GtkArrowPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ArrowPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkArrowPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ArrowPrivateProtocol`
    /// `GtkArrowPrivate` does not allow reference counting.
    public convenience init<T: ArrowPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkArrowPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkArrowPrivate`.
    deinit {
        // no reference counting for GtkArrowPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkArrowPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkArrowPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkArrowPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkArrowPrivate>(opaquePointer))
    }



}

// MARK: - no ArrowPrivate properties

// MARK: - no signals


public extension ArrowPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkArrowPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkArrowPrivate> { return ptr.assumingMemoryBound(to: GtkArrowPrivate.self) }

}



// MARK: - AspectFrameClass Record

/// The `AspectFrameClassProtocol` protocol exposes the methods and properties of an underlying `GtkAspectFrameClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AspectFrameClass`.
/// Alternatively, use `AspectFrameClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AspectFrameClassProtocol {
    /// Untyped pointer to the underlying `GtkAspectFrameClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAspectFrameClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAspectFrameClass> { get }
}

/// The `AspectFrameClassRef` type acts as a lightweight Swift reference to an underlying `GtkAspectFrameClass` instance.
/// It exposes methods that can operate on this data type through `AspectFrameClassProtocol` conformance.
/// Use `AspectFrameClassRef` only as an `unowned` reference to an existing `GtkAspectFrameClass` instance.
///

public struct AspectFrameClassRef: AspectFrameClassProtocol {
    /// Untyped pointer to the underlying `GtkAspectFrameClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AspectFrameClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAspectFrameClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AspectFrameClassProtocol`
    init<T: AspectFrameClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AspectFrameClass` type acts as an owner of an underlying `GtkAspectFrameClass` instance.
/// It provides the methods that can operate on this data type through `AspectFrameClassProtocol` conformance.
/// Use `AspectFrameClass` as a strong reference or owner of a `GtkAspectFrameClass` instance.
///

open class AspectFrameClass: AspectFrameClassProtocol {
    /// Untyped pointer to the underlying `GtkAspectFrameClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AspectFrameClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkAspectFrameClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AspectFrameClassProtocol`
    /// `GtkAspectFrameClass` does not allow reference counting.
    public convenience init<T: AspectFrameClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAspectFrameClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAspectFrameClass`.
    deinit {
        // no reference counting for GtkAspectFrameClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAspectFrameClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAspectFrameClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAspectFrameClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAspectFrameClass>(opaquePointer))
    }



}

// MARK: - no AspectFrameClass properties

// MARK: - no signals


public extension AspectFrameClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAspectFrameClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAspectFrameClass> { return ptr.assumingMemoryBound(to: GtkAspectFrameClass.self) }

}



// MARK: - AspectFramePrivate Record

/// The `AspectFramePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkAspectFramePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AspectFramePrivate`.
/// Alternatively, use `AspectFramePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AspectFramePrivateProtocol {
    /// Untyped pointer to the underlying `GtkAspectFramePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAspectFramePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAspectFramePrivate> { get }
}

/// The `AspectFramePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkAspectFramePrivate` instance.
/// It exposes methods that can operate on this data type through `AspectFramePrivateProtocol` conformance.
/// Use `AspectFramePrivateRef` only as an `unowned` reference to an existing `GtkAspectFramePrivate` instance.
///

public struct AspectFramePrivateRef: AspectFramePrivateProtocol {
    /// Untyped pointer to the underlying `GtkAspectFramePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AspectFramePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAspectFramePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AspectFramePrivateProtocol`
    init<T: AspectFramePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFramePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFramePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFramePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFramePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFramePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AspectFramePrivate` type acts as an owner of an underlying `GtkAspectFramePrivate` instance.
/// It provides the methods that can operate on this data type through `AspectFramePrivateProtocol` conformance.
/// Use `AspectFramePrivate` as a strong reference or owner of a `GtkAspectFramePrivate` instance.
///

open class AspectFramePrivate: AspectFramePrivateProtocol {
    /// Untyped pointer to the underlying `GtkAspectFramePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AspectFramePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkAspectFramePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AspectFramePrivateProtocol`
    /// `GtkAspectFramePrivate` does not allow reference counting.
    public convenience init<T: AspectFramePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAspectFramePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAspectFramePrivate`.
    deinit {
        // no reference counting for GtkAspectFramePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFramePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAspectFramePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFramePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAspectFramePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFramePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAspectFramePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFramePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAspectFramePrivate>(opaquePointer))
    }



}

// MARK: - no AspectFramePrivate properties

// MARK: - no signals


public extension AspectFramePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAspectFramePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAspectFramePrivate> { return ptr.assumingMemoryBound(to: GtkAspectFramePrivate.self) }

}



// MARK: - AssistantClass Record

/// The `AssistantClassProtocol` protocol exposes the methods and properties of an underlying `GtkAssistantClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AssistantClass`.
/// Alternatively, use `AssistantClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AssistantClassProtocol {
    /// Untyped pointer to the underlying `GtkAssistantClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAssistantClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAssistantClass> { get }
}

/// The `AssistantClassRef` type acts as a lightweight Swift reference to an underlying `GtkAssistantClass` instance.
/// It exposes methods that can operate on this data type through `AssistantClassProtocol` conformance.
/// Use `AssistantClassRef` only as an `unowned` reference to an existing `GtkAssistantClass` instance.
///

public struct AssistantClassRef: AssistantClassProtocol {
    /// Untyped pointer to the underlying `GtkAssistantClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AssistantClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAssistantClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AssistantClassProtocol`
    init<T: AssistantClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AssistantClass` type acts as an owner of an underlying `GtkAssistantClass` instance.
/// It provides the methods that can operate on this data type through `AssistantClassProtocol` conformance.
/// Use `AssistantClass` as a strong reference or owner of a `GtkAssistantClass` instance.
///

open class AssistantClass: AssistantClassProtocol {
    /// Untyped pointer to the underlying `GtkAssistantClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AssistantClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkAssistantClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AssistantClassProtocol`
    /// `GtkAssistantClass` does not allow reference counting.
    public convenience init<T: AssistantClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAssistantClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAssistantClass`.
    deinit {
        // no reference counting for GtkAssistantClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAssistantClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAssistantClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAssistantClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAssistantClass>(opaquePointer))
    }



}

// MARK: - no AssistantClass properties

// MARK: - no signals


public extension AssistantClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAssistantClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAssistantClass> { return ptr.assumingMemoryBound(to: GtkAssistantClass.self) }

}



// MARK: - AssistantPrivate Record

/// The `AssistantPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkAssistantPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AssistantPrivate`.
/// Alternatively, use `AssistantPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AssistantPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAssistantPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAssistantPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAssistantPrivate> { get }
}

/// The `AssistantPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkAssistantPrivate` instance.
/// It exposes methods that can operate on this data type through `AssistantPrivateProtocol` conformance.
/// Use `AssistantPrivateRef` only as an `unowned` reference to an existing `GtkAssistantPrivate` instance.
///

public struct AssistantPrivateRef: AssistantPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAssistantPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AssistantPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAssistantPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AssistantPrivateProtocol`
    init<T: AssistantPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AssistantPrivate` type acts as an owner of an underlying `GtkAssistantPrivate` instance.
/// It provides the methods that can operate on this data type through `AssistantPrivateProtocol` conformance.
/// Use `AssistantPrivate` as a strong reference or owner of a `GtkAssistantPrivate` instance.
///

open class AssistantPrivate: AssistantPrivateProtocol {
    /// Untyped pointer to the underlying `GtkAssistantPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AssistantPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkAssistantPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AssistantPrivateProtocol`
    /// `GtkAssistantPrivate` does not allow reference counting.
    public convenience init<T: AssistantPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkAssistantPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkAssistantPrivate`.
    deinit {
        // no reference counting for GtkAssistantPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAssistantPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAssistantPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAssistantPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAssistantPrivate>(opaquePointer))
    }



}

// MARK: - no AssistantPrivate properties

// MARK: - no signals


public extension AssistantPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAssistantPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkAssistantPrivate> { return ptr.assumingMemoryBound(to: GtkAssistantPrivate.self) }

}



// MARK: - BinClass Record

/// The `BinClassProtocol` protocol exposes the methods and properties of an underlying `GtkBinClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BinClass`.
/// Alternatively, use `BinClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BinClassProtocol {
    /// Untyped pointer to the underlying `GtkBinClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBinClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBinClass> { get }
}

/// The `BinClassRef` type acts as a lightweight Swift reference to an underlying `GtkBinClass` instance.
/// It exposes methods that can operate on this data type through `BinClassProtocol` conformance.
/// Use `BinClassRef` only as an `unowned` reference to an existing `GtkBinClass` instance.
///

public struct BinClassRef: BinClassProtocol {
    /// Untyped pointer to the underlying `GtkBinClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BinClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBinClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BinClassProtocol`
    init<T: BinClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BinClass` type acts as an owner of an underlying `GtkBinClass` instance.
/// It provides the methods that can operate on this data type through `BinClassProtocol` conformance.
/// Use `BinClass` as a strong reference or owner of a `GtkBinClass` instance.
///

open class BinClass: BinClassProtocol {
    /// Untyped pointer to the underlying `GtkBinClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BinClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkBinClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BinClassProtocol`
    /// `GtkBinClass` does not allow reference counting.
    public convenience init<T: BinClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkBinClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkBinClass`.
    deinit {
        // no reference counting for GtkBinClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBinClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBinClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBinClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBinClass>(opaquePointer))
    }



}

// MARK: - no BinClass properties

// MARK: - no signals


public extension BinClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBinClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBinClass> { return ptr.assumingMemoryBound(to: GtkBinClass.self) }

}



