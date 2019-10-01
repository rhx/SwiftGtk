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

// MARK: - EntryAccessibleClass Record

/// The `EntryAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkEntryAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryAccessibleClass`.
/// Alternatively, use `EntryAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EntryAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkEntryAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEntryAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryAccessibleClass> { get }
}

/// The `EntryAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkEntryAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `EntryAccessibleClassProtocol` conformance.
/// Use `EntryAccessibleClassRef` only as an `unowned` reference to an existing `GtkEntryAccessibleClass` instance.
///

public struct EntryAccessibleClassRef: EntryAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkEntryAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EntryAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEntryAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EntryAccessibleClassProtocol`
    init<T: EntryAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EntryAccessibleClass` type acts as an owner of an underlying `GtkEntryAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `EntryAccessibleClassProtocol` conformance.
/// Use `EntryAccessibleClass` as a strong reference or owner of a `GtkEntryAccessibleClass` instance.
///

open class EntryAccessibleClass: EntryAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkEntryAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EntryAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkEntryAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EntryAccessibleClassProtocol`
    /// `GtkEntryAccessibleClass` does not allow reference counting.
    public convenience init<T: EntryAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkEntryAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkEntryAccessibleClass`.
    deinit {
        // no reference counting for GtkEntryAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEntryAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEntryAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEntryAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEntryAccessibleClass>(opaquePointer))
    }



}

// MARK: - no EntryAccessibleClass properties

// MARK: - no signals


public extension EntryAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryAccessibleClass> { return ptr.assumingMemoryBound(to: GtkEntryAccessibleClass.self) }

}



// MARK: - EntryAccessiblePrivate Record

/// The `EntryAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkEntryAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryAccessiblePrivate`.
/// Alternatively, use `EntryAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EntryAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkEntryAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEntryAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryAccessiblePrivate> { get }
}

/// The `EntryAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkEntryAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `EntryAccessiblePrivateProtocol` conformance.
/// Use `EntryAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkEntryAccessiblePrivate` instance.
///

public struct EntryAccessiblePrivateRef: EntryAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkEntryAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EntryAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEntryAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EntryAccessiblePrivateProtocol`
    init<T: EntryAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EntryAccessiblePrivate` type acts as an owner of an underlying `GtkEntryAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `EntryAccessiblePrivateProtocol` conformance.
/// Use `EntryAccessiblePrivate` as a strong reference or owner of a `GtkEntryAccessiblePrivate` instance.
///

open class EntryAccessiblePrivate: EntryAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkEntryAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EntryAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkEntryAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EntryAccessiblePrivateProtocol`
    /// `GtkEntryAccessiblePrivate` does not allow reference counting.
    public convenience init<T: EntryAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkEntryAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkEntryAccessiblePrivate`.
    deinit {
        // no reference counting for GtkEntryAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEntryAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEntryAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEntryAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEntryAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no EntryAccessiblePrivate properties

// MARK: - no signals


public extension EntryAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkEntryAccessiblePrivate.self) }

}



// MARK: - EntryBufferClass Record

/// The `EntryBufferClassProtocol` protocol exposes the methods and properties of an underlying `GtkEntryBufferClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryBufferClass`.
/// Alternatively, use `EntryBufferClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EntryBufferClassProtocol {
    /// Untyped pointer to the underlying `GtkEntryBufferClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEntryBufferClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryBufferClass> { get }
}

/// The `EntryBufferClassRef` type acts as a lightweight Swift reference to an underlying `GtkEntryBufferClass` instance.
/// It exposes methods that can operate on this data type through `EntryBufferClassProtocol` conformance.
/// Use `EntryBufferClassRef` only as an `unowned` reference to an existing `GtkEntryBufferClass` instance.
///

public struct EntryBufferClassRef: EntryBufferClassProtocol {
    /// Untyped pointer to the underlying `GtkEntryBufferClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EntryBufferClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEntryBufferClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EntryBufferClassProtocol`
    init<T: EntryBufferClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EntryBufferClass` type acts as an owner of an underlying `GtkEntryBufferClass` instance.
/// It provides the methods that can operate on this data type through `EntryBufferClassProtocol` conformance.
/// Use `EntryBufferClass` as a strong reference or owner of a `GtkEntryBufferClass` instance.
///

open class EntryBufferClass: EntryBufferClassProtocol {
    /// Untyped pointer to the underlying `GtkEntryBufferClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EntryBufferClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkEntryBufferClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EntryBufferClassProtocol`
    /// `GtkEntryBufferClass` does not allow reference counting.
    public convenience init<T: EntryBufferClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkEntryBufferClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkEntryBufferClass`.
    deinit {
        // no reference counting for GtkEntryBufferClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEntryBufferClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEntryBufferClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEntryBufferClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEntryBufferClass>(opaquePointer))
    }



}

// MARK: - no EntryBufferClass properties

// MARK: - no signals


public extension EntryBufferClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryBufferClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryBufferClass> { return ptr.assumingMemoryBound(to: GtkEntryBufferClass.self) }

}



// MARK: - EntryBufferPrivate Record

/// The `EntryBufferPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkEntryBufferPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryBufferPrivate`.
/// Alternatively, use `EntryBufferPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EntryBufferPrivateProtocol {
    /// Untyped pointer to the underlying `GtkEntryBufferPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEntryBufferPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryBufferPrivate> { get }
}

/// The `EntryBufferPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkEntryBufferPrivate` instance.
/// It exposes methods that can operate on this data type through `EntryBufferPrivateProtocol` conformance.
/// Use `EntryBufferPrivateRef` only as an `unowned` reference to an existing `GtkEntryBufferPrivate` instance.
///

public struct EntryBufferPrivateRef: EntryBufferPrivateProtocol {
    /// Untyped pointer to the underlying `GtkEntryBufferPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EntryBufferPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEntryBufferPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EntryBufferPrivateProtocol`
    init<T: EntryBufferPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EntryBufferPrivate` type acts as an owner of an underlying `GtkEntryBufferPrivate` instance.
/// It provides the methods that can operate on this data type through `EntryBufferPrivateProtocol` conformance.
/// Use `EntryBufferPrivate` as a strong reference or owner of a `GtkEntryBufferPrivate` instance.
///

open class EntryBufferPrivate: EntryBufferPrivateProtocol {
    /// Untyped pointer to the underlying `GtkEntryBufferPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EntryBufferPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkEntryBufferPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EntryBufferPrivateProtocol`
    /// `GtkEntryBufferPrivate` does not allow reference counting.
    public convenience init<T: EntryBufferPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkEntryBufferPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkEntryBufferPrivate`.
    deinit {
        // no reference counting for GtkEntryBufferPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEntryBufferPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEntryBufferPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEntryBufferPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEntryBufferPrivate>(opaquePointer))
    }



}

// MARK: - no EntryBufferPrivate properties

// MARK: - no signals


public extension EntryBufferPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryBufferPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryBufferPrivate> { return ptr.assumingMemoryBound(to: GtkEntryBufferPrivate.self) }

}



// MARK: - EntryClass Record

/// The `EntryClassProtocol` protocol exposes the methods and properties of an underlying `GtkEntryClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryClass`.
/// Alternatively, use `EntryClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GtkEntry`. All virtual functions have a default
/// implementation. Derived classes may set the virtual function pointers for the
/// signal handlers to `nil`, but must keep `get_text_area_size` and
/// `get_frame_size` non-`nil`; either use the default implementation, or provide
/// a custom one.
public protocol EntryClassProtocol {
    /// Untyped pointer to the underlying `GtkEntryClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEntryClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryClass> { get }
}

/// The `EntryClassRef` type acts as a lightweight Swift reference to an underlying `GtkEntryClass` instance.
/// It exposes methods that can operate on this data type through `EntryClassProtocol` conformance.
/// Use `EntryClassRef` only as an `unowned` reference to an existing `GtkEntryClass` instance.
///
/// Class structure for `GtkEntry`. All virtual functions have a default
/// implementation. Derived classes may set the virtual function pointers for the
/// signal handlers to `nil`, but must keep `get_text_area_size` and
/// `get_frame_size` non-`nil`; either use the default implementation, or provide
/// a custom one.
public struct EntryClassRef: EntryClassProtocol {
    /// Untyped pointer to the underlying `GtkEntryClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EntryClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEntryClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EntryClassProtocol`
    init<T: EntryClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EntryClass` type acts as an owner of an underlying `GtkEntryClass` instance.
/// It provides the methods that can operate on this data type through `EntryClassProtocol` conformance.
/// Use `EntryClass` as a strong reference or owner of a `GtkEntryClass` instance.
///
/// Class structure for `GtkEntry`. All virtual functions have a default
/// implementation. Derived classes may set the virtual function pointers for the
/// signal handlers to `nil`, but must keep `get_text_area_size` and
/// `get_frame_size` non-`nil`; either use the default implementation, or provide
/// a custom one.
open class EntryClass: EntryClassProtocol {
    /// Untyped pointer to the underlying `GtkEntryClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EntryClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkEntryClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EntryClassProtocol`
    /// `GtkEntryClass` does not allow reference counting.
    public convenience init<T: EntryClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkEntryClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkEntryClass`.
    deinit {
        // no reference counting for GtkEntryClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEntryClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEntryClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEntryClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEntryClass>(opaquePointer))
    }



}

// MARK: - no EntryClass properties

// MARK: - no signals


public extension EntryClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryClass> { return ptr.assumingMemoryBound(to: GtkEntryClass.self) }

}



// MARK: - EntryCompletionClass Record

/// The `EntryCompletionClassProtocol` protocol exposes the methods and properties of an underlying `GtkEntryCompletionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryCompletionClass`.
/// Alternatively, use `EntryCompletionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EntryCompletionClassProtocol {
    /// Untyped pointer to the underlying `GtkEntryCompletionClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEntryCompletionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryCompletionClass> { get }
}

/// The `EntryCompletionClassRef` type acts as a lightweight Swift reference to an underlying `GtkEntryCompletionClass` instance.
/// It exposes methods that can operate on this data type through `EntryCompletionClassProtocol` conformance.
/// Use `EntryCompletionClassRef` only as an `unowned` reference to an existing `GtkEntryCompletionClass` instance.
///

public struct EntryCompletionClassRef: EntryCompletionClassProtocol {
    /// Untyped pointer to the underlying `GtkEntryCompletionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EntryCompletionClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEntryCompletionClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EntryCompletionClassProtocol`
    init<T: EntryCompletionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EntryCompletionClass` type acts as an owner of an underlying `GtkEntryCompletionClass` instance.
/// It provides the methods that can operate on this data type through `EntryCompletionClassProtocol` conformance.
/// Use `EntryCompletionClass` as a strong reference or owner of a `GtkEntryCompletionClass` instance.
///

open class EntryCompletionClass: EntryCompletionClassProtocol {
    /// Untyped pointer to the underlying `GtkEntryCompletionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EntryCompletionClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkEntryCompletionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EntryCompletionClassProtocol`
    /// `GtkEntryCompletionClass` does not allow reference counting.
    public convenience init<T: EntryCompletionClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkEntryCompletionClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkEntryCompletionClass`.
    deinit {
        // no reference counting for GtkEntryCompletionClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEntryCompletionClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEntryCompletionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEntryCompletionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEntryCompletionClass>(opaquePointer))
    }



}

// MARK: - no EntryCompletionClass properties

// MARK: - no signals


public extension EntryCompletionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryCompletionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryCompletionClass> { return ptr.assumingMemoryBound(to: GtkEntryCompletionClass.self) }

}



// MARK: - EntryCompletionPrivate Record

/// The `EntryCompletionPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkEntryCompletionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryCompletionPrivate`.
/// Alternatively, use `EntryCompletionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EntryCompletionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkEntryCompletionPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEntryCompletionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryCompletionPrivate> { get }
}

/// The `EntryCompletionPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkEntryCompletionPrivate` instance.
/// It exposes methods that can operate on this data type through `EntryCompletionPrivateProtocol` conformance.
/// Use `EntryCompletionPrivateRef` only as an `unowned` reference to an existing `GtkEntryCompletionPrivate` instance.
///

public struct EntryCompletionPrivateRef: EntryCompletionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkEntryCompletionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EntryCompletionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEntryCompletionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EntryCompletionPrivateProtocol`
    init<T: EntryCompletionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EntryCompletionPrivate` type acts as an owner of an underlying `GtkEntryCompletionPrivate` instance.
/// It provides the methods that can operate on this data type through `EntryCompletionPrivateProtocol` conformance.
/// Use `EntryCompletionPrivate` as a strong reference or owner of a `GtkEntryCompletionPrivate` instance.
///

open class EntryCompletionPrivate: EntryCompletionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkEntryCompletionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EntryCompletionPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkEntryCompletionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EntryCompletionPrivateProtocol`
    /// `GtkEntryCompletionPrivate` does not allow reference counting.
    public convenience init<T: EntryCompletionPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkEntryCompletionPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkEntryCompletionPrivate`.
    deinit {
        // no reference counting for GtkEntryCompletionPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEntryCompletionPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEntryCompletionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEntryCompletionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEntryCompletionPrivate>(opaquePointer))
    }



}

// MARK: - no EntryCompletionPrivate properties

// MARK: - no signals


public extension EntryCompletionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryCompletionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryCompletionPrivate> { return ptr.assumingMemoryBound(to: GtkEntryCompletionPrivate.self) }

}



// MARK: - EntryPrivate Record

/// The `EntryPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkEntryPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryPrivate`.
/// Alternatively, use `EntryPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EntryPrivateProtocol {
    /// Untyped pointer to the underlying `GtkEntryPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEntryPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryPrivate> { get }
}

/// The `EntryPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkEntryPrivate` instance.
/// It exposes methods that can operate on this data type through `EntryPrivateProtocol` conformance.
/// Use `EntryPrivateRef` only as an `unowned` reference to an existing `GtkEntryPrivate` instance.
///

public struct EntryPrivateRef: EntryPrivateProtocol {
    /// Untyped pointer to the underlying `GtkEntryPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EntryPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEntryPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EntryPrivateProtocol`
    init<T: EntryPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EntryPrivate` type acts as an owner of an underlying `GtkEntryPrivate` instance.
/// It provides the methods that can operate on this data type through `EntryPrivateProtocol` conformance.
/// Use `EntryPrivate` as a strong reference or owner of a `GtkEntryPrivate` instance.
///

open class EntryPrivate: EntryPrivateProtocol {
    /// Untyped pointer to the underlying `GtkEntryPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EntryPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkEntryPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EntryPrivateProtocol`
    /// `GtkEntryPrivate` does not allow reference counting.
    public convenience init<T: EntryPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkEntryPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkEntryPrivate`.
    deinit {
        // no reference counting for GtkEntryPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEntryPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEntryPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEntryPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEntryPrivate>(opaquePointer))
    }



}

// MARK: - no EntryPrivate properties

// MARK: - no signals


public extension EntryPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryPrivate> { return ptr.assumingMemoryBound(to: GtkEntryPrivate.self) }

}



// MARK: - EventBoxClass Record

/// The `EventBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkEventBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventBoxClass`.
/// Alternatively, use `EventBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EventBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkEventBoxClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEventBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventBoxClass> { get }
}

/// The `EventBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkEventBoxClass` instance.
/// It exposes methods that can operate on this data type through `EventBoxClassProtocol` conformance.
/// Use `EventBoxClassRef` only as an `unowned` reference to an existing `GtkEventBoxClass` instance.
///

public struct EventBoxClassRef: EventBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkEventBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEventBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventBoxClassProtocol`
    init<T: EventBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventBoxClass` type acts as an owner of an underlying `GtkEventBoxClass` instance.
/// It provides the methods that can operate on this data type through `EventBoxClassProtocol` conformance.
/// Use `EventBoxClass` as a strong reference or owner of a `GtkEventBoxClass` instance.
///

open class EventBoxClass: EventBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkEventBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EventBoxClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkEventBoxClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EventBoxClassProtocol`
    /// `GtkEventBoxClass` does not allow reference counting.
    public convenience init<T: EventBoxClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkEventBoxClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkEventBoxClass`.
    deinit {
        // no reference counting for GtkEventBoxClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEventBoxClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEventBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEventBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEventBoxClass>(opaquePointer))
    }



}

// MARK: - no EventBoxClass properties

// MARK: - no signals


public extension EventBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventBoxClass> { return ptr.assumingMemoryBound(to: GtkEventBoxClass.self) }

}



// MARK: - EventBoxPrivate Record

/// The `EventBoxPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkEventBoxPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventBoxPrivate`.
/// Alternatively, use `EventBoxPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EventBoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkEventBoxPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEventBoxPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkEventBoxPrivate> { get }
}

/// The `EventBoxPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkEventBoxPrivate` instance.
/// It exposes methods that can operate on this data type through `EventBoxPrivateProtocol` conformance.
/// Use `EventBoxPrivateRef` only as an `unowned` reference to an existing `GtkEventBoxPrivate` instance.
///

public struct EventBoxPrivateRef: EventBoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkEventBoxPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventBoxPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEventBoxPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventBoxPrivateProtocol`
    init<T: EventBoxPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventBoxPrivate` type acts as an owner of an underlying `GtkEventBoxPrivate` instance.
/// It provides the methods that can operate on this data type through `EventBoxPrivateProtocol` conformance.
/// Use `EventBoxPrivate` as a strong reference or owner of a `GtkEventBoxPrivate` instance.
///

open class EventBoxPrivate: EventBoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkEventBoxPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EventBoxPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkEventBoxPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EventBoxPrivateProtocol`
    /// `GtkEventBoxPrivate` does not allow reference counting.
    public convenience init<T: EventBoxPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkEventBoxPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkEventBoxPrivate`.
    deinit {
        // no reference counting for GtkEventBoxPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEventBoxPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEventBoxPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEventBoxPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEventBoxPrivate>(opaquePointer))
    }



}

// MARK: - no EventBoxPrivate properties

// MARK: - no signals


public extension EventBoxPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventBoxPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkEventBoxPrivate> { return ptr.assumingMemoryBound(to: GtkEventBoxPrivate.self) }

}



// MARK: - EventControllerClass Record

/// The `EventControllerClassProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerClass`.
/// Alternatively, use `EventControllerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EventControllerClassProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEventControllerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventControllerClass> { get }
}

/// The `EventControllerClassRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerClass` instance.
/// It exposes methods that can operate on this data type through `EventControllerClassProtocol` conformance.
/// Use `EventControllerClassRef` only as an `unowned` reference to an existing `GtkEventControllerClass` instance.
///

public struct EventControllerClassRef: EventControllerClassProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventControllerClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEventControllerClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventControllerClassProtocol`
    init<T: EventControllerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventControllerClass` type acts as an owner of an underlying `GtkEventControllerClass` instance.
/// It provides the methods that can operate on this data type through `EventControllerClassProtocol` conformance.
/// Use `EventControllerClass` as a strong reference or owner of a `GtkEventControllerClass` instance.
///

open class EventControllerClass: EventControllerClassProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EventControllerClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkEventControllerClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EventControllerClassProtocol`
    /// `GtkEventControllerClass` does not allow reference counting.
    public convenience init<T: EventControllerClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkEventControllerClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkEventControllerClass`.
    deinit {
        // no reference counting for GtkEventControllerClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEventControllerClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEventControllerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEventControllerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEventControllerClass>(opaquePointer))
    }



}

// MARK: - no EventControllerClass properties

// MARK: - no signals


public extension EventControllerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventControllerClass> { return ptr.assumingMemoryBound(to: GtkEventControllerClass.self) }

}



// MARK: - EventControllerKeyClass Record

/// The `EventControllerKeyClassProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerKeyClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerKeyClass`.
/// Alternatively, use `EventControllerKeyClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EventControllerKeyClassProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerKeyClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEventControllerKeyClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventControllerKeyClass> { get }
}

/// The `EventControllerKeyClassRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerKeyClass` instance.
/// It exposes methods that can operate on this data type through `EventControllerKeyClassProtocol` conformance.
/// Use `EventControllerKeyClassRef` only as an `unowned` reference to an existing `GtkEventControllerKeyClass` instance.
///

public struct EventControllerKeyClassRef: EventControllerKeyClassProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerKeyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventControllerKeyClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEventControllerKeyClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventControllerKeyClassProtocol`
    init<T: EventControllerKeyClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventControllerKeyClass` type acts as an owner of an underlying `GtkEventControllerKeyClass` instance.
/// It provides the methods that can operate on this data type through `EventControllerKeyClassProtocol` conformance.
/// Use `EventControllerKeyClass` as a strong reference or owner of a `GtkEventControllerKeyClass` instance.
///

open class EventControllerKeyClass: EventControllerKeyClassProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerKeyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EventControllerKeyClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkEventControllerKeyClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EventControllerKeyClassProtocol`
    /// `GtkEventControllerKeyClass` does not allow reference counting.
    public convenience init<T: EventControllerKeyClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkEventControllerKeyClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkEventControllerKeyClass`.
    deinit {
        // no reference counting for GtkEventControllerKeyClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEventControllerKeyClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEventControllerKeyClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEventControllerKeyClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEventControllerKeyClass>(opaquePointer))
    }



}

// MARK: - no EventControllerKeyClass properties

// MARK: - no signals


public extension EventControllerKeyClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerKeyClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventControllerKeyClass> { return ptr.assumingMemoryBound(to: GtkEventControllerKeyClass.self) }

}



// MARK: - EventControllerMotionClass Record

/// The `EventControllerMotionClassProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerMotionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerMotionClass`.
/// Alternatively, use `EventControllerMotionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EventControllerMotionClassProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerMotionClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEventControllerMotionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventControllerMotionClass> { get }
}

/// The `EventControllerMotionClassRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerMotionClass` instance.
/// It exposes methods that can operate on this data type through `EventControllerMotionClassProtocol` conformance.
/// Use `EventControllerMotionClassRef` only as an `unowned` reference to an existing `GtkEventControllerMotionClass` instance.
///

public struct EventControllerMotionClassRef: EventControllerMotionClassProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerMotionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventControllerMotionClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEventControllerMotionClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventControllerMotionClassProtocol`
    init<T: EventControllerMotionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventControllerMotionClass` type acts as an owner of an underlying `GtkEventControllerMotionClass` instance.
/// It provides the methods that can operate on this data type through `EventControllerMotionClassProtocol` conformance.
/// Use `EventControllerMotionClass` as a strong reference or owner of a `GtkEventControllerMotionClass` instance.
///

open class EventControllerMotionClass: EventControllerMotionClassProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerMotionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EventControllerMotionClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkEventControllerMotionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EventControllerMotionClassProtocol`
    /// `GtkEventControllerMotionClass` does not allow reference counting.
    public convenience init<T: EventControllerMotionClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkEventControllerMotionClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkEventControllerMotionClass`.
    deinit {
        // no reference counting for GtkEventControllerMotionClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEventControllerMotionClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEventControllerMotionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEventControllerMotionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEventControllerMotionClass>(opaquePointer))
    }



}

// MARK: - no EventControllerMotionClass properties

// MARK: - no signals


public extension EventControllerMotionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerMotionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventControllerMotionClass> { return ptr.assumingMemoryBound(to: GtkEventControllerMotionClass.self) }

}



// MARK: - EventControllerScrollClass Record

/// The `EventControllerScrollClassProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerScrollClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerScrollClass`.
/// Alternatively, use `EventControllerScrollClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EventControllerScrollClassProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerScrollClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEventControllerScrollClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventControllerScrollClass> { get }
}

/// The `EventControllerScrollClassRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerScrollClass` instance.
/// It exposes methods that can operate on this data type through `EventControllerScrollClassProtocol` conformance.
/// Use `EventControllerScrollClassRef` only as an `unowned` reference to an existing `GtkEventControllerScrollClass` instance.
///

public struct EventControllerScrollClassRef: EventControllerScrollClassProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerScrollClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventControllerScrollClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEventControllerScrollClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventControllerScrollClassProtocol`
    init<T: EventControllerScrollClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventControllerScrollClass` type acts as an owner of an underlying `GtkEventControllerScrollClass` instance.
/// It provides the methods that can operate on this data type through `EventControllerScrollClassProtocol` conformance.
/// Use `EventControllerScrollClass` as a strong reference or owner of a `GtkEventControllerScrollClass` instance.
///

open class EventControllerScrollClass: EventControllerScrollClassProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerScrollClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EventControllerScrollClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkEventControllerScrollClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EventControllerScrollClassProtocol`
    /// `GtkEventControllerScrollClass` does not allow reference counting.
    public convenience init<T: EventControllerScrollClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkEventControllerScrollClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkEventControllerScrollClass`.
    deinit {
        // no reference counting for GtkEventControllerScrollClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEventControllerScrollClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEventControllerScrollClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEventControllerScrollClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEventControllerScrollClass>(opaquePointer))
    }



}

// MARK: - no EventControllerScrollClass properties

// MARK: - no signals


public extension EventControllerScrollClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerScrollClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventControllerScrollClass> { return ptr.assumingMemoryBound(to: GtkEventControllerScrollClass.self) }

}



// MARK: - ExpanderAccessibleClass Record

/// The `ExpanderAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkExpanderAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ExpanderAccessibleClass`.
/// Alternatively, use `ExpanderAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ExpanderAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkExpanderAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkExpanderAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkExpanderAccessibleClass> { get }
}

/// The `ExpanderAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkExpanderAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ExpanderAccessibleClassProtocol` conformance.
/// Use `ExpanderAccessibleClassRef` only as an `unowned` reference to an existing `GtkExpanderAccessibleClass` instance.
///

public struct ExpanderAccessibleClassRef: ExpanderAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkExpanderAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ExpanderAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkExpanderAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ExpanderAccessibleClassProtocol`
    init<T: ExpanderAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ExpanderAccessibleClass` type acts as an owner of an underlying `GtkExpanderAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ExpanderAccessibleClassProtocol` conformance.
/// Use `ExpanderAccessibleClass` as a strong reference or owner of a `GtkExpanderAccessibleClass` instance.
///

open class ExpanderAccessibleClass: ExpanderAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkExpanderAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ExpanderAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkExpanderAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ExpanderAccessibleClassProtocol`
    /// `GtkExpanderAccessibleClass` does not allow reference counting.
    public convenience init<T: ExpanderAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkExpanderAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkExpanderAccessibleClass`.
    deinit {
        // no reference counting for GtkExpanderAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkExpanderAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkExpanderAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkExpanderAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkExpanderAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ExpanderAccessibleClass properties

// MARK: - no signals


public extension ExpanderAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkExpanderAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkExpanderAccessibleClass> { return ptr.assumingMemoryBound(to: GtkExpanderAccessibleClass.self) }

}



// MARK: - ExpanderAccessiblePrivate Record

/// The `ExpanderAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkExpanderAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ExpanderAccessiblePrivate`.
/// Alternatively, use `ExpanderAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ExpanderAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkExpanderAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkExpanderAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkExpanderAccessiblePrivate> { get }
}

/// The `ExpanderAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkExpanderAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `ExpanderAccessiblePrivateProtocol` conformance.
/// Use `ExpanderAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkExpanderAccessiblePrivate` instance.
///

public struct ExpanderAccessiblePrivateRef: ExpanderAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkExpanderAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ExpanderAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkExpanderAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ExpanderAccessiblePrivateProtocol`
    init<T: ExpanderAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ExpanderAccessiblePrivate` type acts as an owner of an underlying `GtkExpanderAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `ExpanderAccessiblePrivateProtocol` conformance.
/// Use `ExpanderAccessiblePrivate` as a strong reference or owner of a `GtkExpanderAccessiblePrivate` instance.
///

open class ExpanderAccessiblePrivate: ExpanderAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkExpanderAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ExpanderAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkExpanderAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ExpanderAccessiblePrivateProtocol`
    /// `GtkExpanderAccessiblePrivate` does not allow reference counting.
    public convenience init<T: ExpanderAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkExpanderAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkExpanderAccessiblePrivate`.
    deinit {
        // no reference counting for GtkExpanderAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkExpanderAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkExpanderAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkExpanderAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkExpanderAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no ExpanderAccessiblePrivate properties

// MARK: - no signals


public extension ExpanderAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkExpanderAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkExpanderAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkExpanderAccessiblePrivate.self) }

}



// MARK: - ExpanderClass Record

/// The `ExpanderClassProtocol` protocol exposes the methods and properties of an underlying `GtkExpanderClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ExpanderClass`.
/// Alternatively, use `ExpanderClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ExpanderClassProtocol {
    /// Untyped pointer to the underlying `GtkExpanderClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkExpanderClass` instance.
    var _ptr: UnsafeMutablePointer<GtkExpanderClass> { get }
}

/// The `ExpanderClassRef` type acts as a lightweight Swift reference to an underlying `GtkExpanderClass` instance.
/// It exposes methods that can operate on this data type through `ExpanderClassProtocol` conformance.
/// Use `ExpanderClassRef` only as an `unowned` reference to an existing `GtkExpanderClass` instance.
///

public struct ExpanderClassRef: ExpanderClassProtocol {
    /// Untyped pointer to the underlying `GtkExpanderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ExpanderClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkExpanderClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ExpanderClassProtocol`
    init<T: ExpanderClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ExpanderClass` type acts as an owner of an underlying `GtkExpanderClass` instance.
/// It provides the methods that can operate on this data type through `ExpanderClassProtocol` conformance.
/// Use `ExpanderClass` as a strong reference or owner of a `GtkExpanderClass` instance.
///

open class ExpanderClass: ExpanderClassProtocol {
    /// Untyped pointer to the underlying `GtkExpanderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ExpanderClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkExpanderClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ExpanderClassProtocol`
    /// `GtkExpanderClass` does not allow reference counting.
    public convenience init<T: ExpanderClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkExpanderClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkExpanderClass`.
    deinit {
        // no reference counting for GtkExpanderClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkExpanderClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkExpanderClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkExpanderClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkExpanderClass>(opaquePointer))
    }



}

// MARK: - no ExpanderClass properties

// MARK: - no signals


public extension ExpanderClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkExpanderClass` instance.
    var _ptr: UnsafeMutablePointer<GtkExpanderClass> { return ptr.assumingMemoryBound(to: GtkExpanderClass.self) }

}



// MARK: - ExpanderPrivate Record

/// The `ExpanderPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkExpanderPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ExpanderPrivate`.
/// Alternatively, use `ExpanderPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ExpanderPrivateProtocol {
    /// Untyped pointer to the underlying `GtkExpanderPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkExpanderPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkExpanderPrivate> { get }
}

/// The `ExpanderPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkExpanderPrivate` instance.
/// It exposes methods that can operate on this data type through `ExpanderPrivateProtocol` conformance.
/// Use `ExpanderPrivateRef` only as an `unowned` reference to an existing `GtkExpanderPrivate` instance.
///

public struct ExpanderPrivateRef: ExpanderPrivateProtocol {
    /// Untyped pointer to the underlying `GtkExpanderPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ExpanderPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkExpanderPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ExpanderPrivateProtocol`
    init<T: ExpanderPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ExpanderPrivate` type acts as an owner of an underlying `GtkExpanderPrivate` instance.
/// It provides the methods that can operate on this data type through `ExpanderPrivateProtocol` conformance.
/// Use `ExpanderPrivate` as a strong reference or owner of a `GtkExpanderPrivate` instance.
///

open class ExpanderPrivate: ExpanderPrivateProtocol {
    /// Untyped pointer to the underlying `GtkExpanderPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ExpanderPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkExpanderPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ExpanderPrivateProtocol`
    /// `GtkExpanderPrivate` does not allow reference counting.
    public convenience init<T: ExpanderPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkExpanderPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkExpanderPrivate`.
    deinit {
        // no reference counting for GtkExpanderPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkExpanderPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkExpanderPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkExpanderPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkExpanderPrivate>(opaquePointer))
    }



}

// MARK: - no ExpanderPrivate properties

// MARK: - no signals


public extension ExpanderPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkExpanderPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkExpanderPrivate> { return ptr.assumingMemoryBound(to: GtkExpanderPrivate.self) }

}



// MARK: - FileChooserButtonClass Record

/// The `FileChooserButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserButtonClass`.
/// Alternatively, use `FileChooserButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileChooserButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFileChooserButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserButtonClass> { get }
}

/// The `FileChooserButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserButtonClass` instance.
/// It exposes methods that can operate on this data type through `FileChooserButtonClassProtocol` conformance.
/// Use `FileChooserButtonClassRef` only as an `unowned` reference to an existing `GtkFileChooserButtonClass` instance.
///

public struct FileChooserButtonClassRef: FileChooserButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileChooserButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFileChooserButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileChooserButtonClassProtocol`
    init<T: FileChooserButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileChooserButtonClass` type acts as an owner of an underlying `GtkFileChooserButtonClass` instance.
/// It provides the methods that can operate on this data type through `FileChooserButtonClassProtocol` conformance.
/// Use `FileChooserButtonClass` as a strong reference or owner of a `GtkFileChooserButtonClass` instance.
///

open class FileChooserButtonClass: FileChooserButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FileChooserButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFileChooserButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FileChooserButtonClassProtocol`
    /// `GtkFileChooserButtonClass` does not allow reference counting.
    public convenience init<T: FileChooserButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFileChooserButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFileChooserButtonClass`.
    deinit {
        // no reference counting for GtkFileChooserButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFileChooserButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFileChooserButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFileChooserButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFileChooserButtonClass>(opaquePointer))
    }



}

// MARK: - no FileChooserButtonClass properties

// MARK: - no signals


public extension FileChooserButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserButtonClass> { return ptr.assumingMemoryBound(to: GtkFileChooserButtonClass.self) }

}



