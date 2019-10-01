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

// MARK: - TableClass Record

/// The `TableClassProtocol` protocol exposes the methods and properties of an underlying `GtkTableClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TableClass`.
/// Alternatively, use `TableClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TableClassProtocol {
    /// Untyped pointer to the underlying `GtkTableClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTableClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTableClass> { get }
}

/// The `TableClassRef` type acts as a lightweight Swift reference to an underlying `GtkTableClass` instance.
/// It exposes methods that can operate on this data type through `TableClassProtocol` conformance.
/// Use `TableClassRef` only as an `unowned` reference to an existing `GtkTableClass` instance.
///

public struct TableClassRef: TableClassProtocol {
    /// Untyped pointer to the underlying `GtkTableClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TableClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTableClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TableClassProtocol`
    init<T: TableClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TableClass` type acts as an owner of an underlying `GtkTableClass` instance.
/// It provides the methods that can operate on this data type through `TableClassProtocol` conformance.
/// Use `TableClass` as a strong reference or owner of a `GtkTableClass` instance.
///

open class TableClass: TableClassProtocol {
    /// Untyped pointer to the underlying `GtkTableClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TableClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTableClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TableClassProtocol`
    /// `GtkTableClass` does not allow reference counting.
    public convenience init<T: TableClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTableClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTableClass`.
    deinit {
        // no reference counting for GtkTableClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTableClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTableClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTableClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTableClass>(opaquePointer))
    }



}

// MARK: - no TableClass properties

// MARK: - no signals


public extension TableClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTableClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTableClass> { return ptr.assumingMemoryBound(to: GtkTableClass.self) }

}



// MARK: - TablePrivate Record

/// The `TablePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkTablePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TablePrivate`.
/// Alternatively, use `TablePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TablePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTablePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTablePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTablePrivate> { get }
}

/// The `TablePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkTablePrivate` instance.
/// It exposes methods that can operate on this data type through `TablePrivateProtocol` conformance.
/// Use `TablePrivateRef` only as an `unowned` reference to an existing `GtkTablePrivate` instance.
///

public struct TablePrivateRef: TablePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTablePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TablePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTablePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TablePrivateProtocol`
    init<T: TablePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TablePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TablePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TablePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TablePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TablePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TablePrivate` type acts as an owner of an underlying `GtkTablePrivate` instance.
/// It provides the methods that can operate on this data type through `TablePrivateProtocol` conformance.
/// Use `TablePrivate` as a strong reference or owner of a `GtkTablePrivate` instance.
///

open class TablePrivate: TablePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTablePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TablePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkTablePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TablePrivateProtocol`
    /// `GtkTablePrivate` does not allow reference counting.
    public convenience init<T: TablePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTablePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTablePrivate`.
    deinit {
        // no reference counting for GtkTablePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TablePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTablePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TablePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTablePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TablePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTablePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TablePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTablePrivate>(opaquePointer))
    }



}

// MARK: - no TablePrivate properties

// MARK: - no signals


public extension TablePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTablePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTablePrivate> { return ptr.assumingMemoryBound(to: GtkTablePrivate.self) }

}



// MARK: - TableRowCol Record

/// The `TableRowColProtocol` protocol exposes the methods and properties of an underlying `GtkTableRowCol` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TableRowCol`.
/// Alternatively, use `TableRowColRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TableRowColProtocol {
    /// Untyped pointer to the underlying `GtkTableRowCol` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTableRowCol` instance.
    var _ptr: UnsafeMutablePointer<GtkTableRowCol> { get }
}

/// The `TableRowColRef` type acts as a lightweight Swift reference to an underlying `GtkTableRowCol` instance.
/// It exposes methods that can operate on this data type through `TableRowColProtocol` conformance.
/// Use `TableRowColRef` only as an `unowned` reference to an existing `GtkTableRowCol` instance.
///

public struct TableRowColRef: TableRowColProtocol {
    /// Untyped pointer to the underlying `GtkTableRowCol` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TableRowColRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTableRowCol>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TableRowColProtocol`
    init<T: TableRowColProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TableRowCol` type acts as an owner of an underlying `GtkTableRowCol` instance.
/// It provides the methods that can operate on this data type through `TableRowColProtocol` conformance.
/// Use `TableRowCol` as a strong reference or owner of a `GtkTableRowCol` instance.
///

open class TableRowCol: TableRowColProtocol {
    /// Untyped pointer to the underlying `GtkTableRowCol` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TableRowCol` instance.
    public init(_ op: UnsafeMutablePointer<GtkTableRowCol>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TableRowColProtocol`
    /// `GtkTableRowCol` does not allow reference counting.
    public convenience init<T: TableRowColProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTableRowCol, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTableRowCol`.
    deinit {
        // no reference counting for GtkTableRowCol, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTableRowCol.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTableRowCol.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTableRowCol.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TableRowColProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTableRowCol>(opaquePointer))
    }



}

// MARK: - no TableRowCol properties

// MARK: - no signals


public extension TableRowColProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTableRowCol` instance.
    var _ptr: UnsafeMutablePointer<GtkTableRowCol> { return ptr.assumingMemoryBound(to: GtkTableRowCol.self) }

}



// MARK: - TargetEntry Record

/// The `TargetEntryProtocol` protocol exposes the methods and properties of an underlying `GtkTargetEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TargetEntry`.
/// Alternatively, use `TargetEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkTargetEntry` represents a single type of
/// data than can be supplied for by a widget for a selection
/// or for supplied or received during drag-and-drop.
public protocol TargetEntryProtocol {
    /// Untyped pointer to the underlying `GtkTargetEntry` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTargetEntry` instance.
    var target_entry_ptr: UnsafeMutablePointer<GtkTargetEntry> { get }
}

/// The `TargetEntryRef` type acts as a lightweight Swift reference to an underlying `GtkTargetEntry` instance.
/// It exposes methods that can operate on this data type through `TargetEntryProtocol` conformance.
/// Use `TargetEntryRef` only as an `unowned` reference to an existing `GtkTargetEntry` instance.
///
/// A `GtkTargetEntry` represents a single type of
/// data than can be supplied for by a widget for a selection
/// or for supplied or received during drag-and-drop.
public struct TargetEntryRef: TargetEntryProtocol {
    /// Untyped pointer to the underlying `GtkTargetEntry` instance.
    /// For type-safe access, use the generated, typed pointer `target_entry_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TargetEntryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTargetEntry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TargetEntryProtocol`
    init<T: TargetEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Makes a new `GtkTargetEntry`.
    init( target: UnsafePointer<gchar>, flags: CUnsignedInt, info: CUnsignedInt) {
        let rv = gtk_target_entry_new(target, guint(flags), guint(info))
        self.init(cast(rv))
    }
}

/// The `TargetEntry` type acts as an owner of an underlying `GtkTargetEntry` instance.
/// It provides the methods that can operate on this data type through `TargetEntryProtocol` conformance.
/// Use `TargetEntry` as a strong reference or owner of a `GtkTargetEntry` instance.
///
/// A `GtkTargetEntry` represents a single type of
/// data than can be supplied for by a widget for a selection
/// or for supplied or received during drag-and-drop.
open class TargetEntry: TargetEntryProtocol {
    /// Untyped pointer to the underlying `GtkTargetEntry` instance.
    /// For type-safe access, use the generated, typed pointer `target_entry_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TargetEntry` instance.
    public init(_ op: UnsafeMutablePointer<GtkTargetEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TargetEntryProtocol`
    /// `GtkTargetEntry` does not allow reference counting.
    public convenience init<T: TargetEntryProtocol>(_ other: T) {
        self.init(cast(other.target_entry_ptr))
        // no reference counting for GtkTargetEntry, cannot ref(cast(target_entry_ptr))
    }

    /// Do-nothing destructor for`GtkTargetEntry`.
    deinit {
        // no reference counting for GtkTargetEntry, cannot unref(cast(target_entry_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTargetEntry.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTargetEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTargetEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetEntryProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTargetEntry>(opaquePointer))
    }

    /// Makes a new `GtkTargetEntry`.
    public convenience init( target: UnsafePointer<gchar>, flags: CUnsignedInt, info: CUnsignedInt) {
        let rv = gtk_target_entry_new(target, guint(flags), guint(info))
        self.init(cast(rv))
    }


}

// MARK: - no TargetEntry properties

// MARK: - no signals


public extension TargetEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTargetEntry` instance.
    var target_entry_ptr: UnsafeMutablePointer<GtkTargetEntry> { return ptr.assumingMemoryBound(to: GtkTargetEntry.self) }

    /// Makes a copy of a `GtkTargetEntry` and its data.
    func copy() -> UnsafeMutablePointer<GtkTargetEntry>! {
        let rv = gtk_target_entry_copy(cast(target_entry_ptr))
        return cast(rv)
    }

    /// Frees a `GtkTargetEntry` returned from
    /// gtk_target_entry_new() or gtk_target_entry_copy().
    func free() {
        gtk_target_entry_free(cast(target_entry_ptr))
    
    }
}



// MARK: - TargetList Record

/// The `TargetListProtocol` protocol exposes the methods and properties of an underlying `GtkTargetList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TargetList`.
/// Alternatively, use `TargetListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkTargetList`-struct is a reference counted list
/// of `GtkTargetPair` and should be treated as
/// opaque.
public protocol TargetListProtocol {
    /// Untyped pointer to the underlying `GtkTargetList` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTargetList` instance.
    var target_list_ptr: UnsafeMutablePointer<GtkTargetList> { get }
}

/// The `TargetListRef` type acts as a lightweight Swift reference to an underlying `GtkTargetList` instance.
/// It exposes methods that can operate on this data type through `TargetListProtocol` conformance.
/// Use `TargetListRef` only as an `unowned` reference to an existing `GtkTargetList` instance.
///
/// A `GtkTargetList`-struct is a reference counted list
/// of `GtkTargetPair` and should be treated as
/// opaque.
public struct TargetListRef: TargetListProtocol {
    /// Untyped pointer to the underlying `GtkTargetList` instance.
    /// For type-safe access, use the generated, typed pointer `target_list_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TargetListRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTargetList>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TargetListProtocol`
    init<T: TargetListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkTargetList` from an array of `GtkTargetEntry`.
    init( targets: UnsafePointer<GtkTargetEntry>, ntargets: CUnsignedInt) {
        let rv = gtk_target_list_new(cast(targets), guint(ntargets))
        self.init(cast(rv))
    }
}

/// The `TargetList` type acts as a reference-counted owner of an underlying `GtkTargetList` instance.
/// It provides the methods that can operate on this data type through `TargetListProtocol` conformance.
/// Use `TargetList` as a strong reference or owner of a `GtkTargetList` instance.
///
/// A `GtkTargetList`-struct is a reference counted list
/// of `GtkTargetPair` and should be treated as
/// opaque.
open class TargetList: TargetListProtocol {
    /// Untyped pointer to the underlying `GtkTargetList` instance.
    /// For type-safe access, use the generated, typed pointer `target_list_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TargetList` instance.
    public init(_ op: UnsafeMutablePointer<GtkTargetList>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TargetListProtocol`
    /// Will retain `GtkTargetList`.
    public convenience init<T: TargetListProtocol>(_ other: T) {
        self.init(cast(other.target_list_ptr))
        gtk_target_list_ref(cast(target_list_ptr))
    }

    /// Releases the underlying `GtkTargetList` instance using `gtk_target_list_unref`.
    deinit {
        gtk_target_list_unref(cast(target_list_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTargetList.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTargetList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTargetList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetListProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTargetList>(opaquePointer))
    }

    /// Creates a new `GtkTargetList` from an array of `GtkTargetEntry`.
    public convenience init( targets: UnsafePointer<GtkTargetEntry>, ntargets: CUnsignedInt) {
        let rv = gtk_target_list_new(cast(targets), guint(ntargets))
        self.init(cast(rv))
    }


}

// MARK: - no TargetList properties

// MARK: - no signals


public extension TargetListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTargetList` instance.
    var target_list_ptr: UnsafeMutablePointer<GtkTargetList> { return ptr.assumingMemoryBound(to: GtkTargetList.self) }

    /// Appends another target to a `GtkTargetList`.
    func add(target: Gdk.Atom, flags: CUnsignedInt, info: CUnsignedInt) {
        gtk_target_list_add(cast(target_list_ptr), cast(target.ptr), guint(flags), guint(info))
    
    }

    /// Appends the image targets supported by `GtkSelectionData` to
    /// the target list. All targets are added with the same `info`.
    func addImageTargets(info: CUnsignedInt, writable: Bool) {
        gtk_target_list_add_image_targets(cast(target_list_ptr), guint(info), gboolean(writable ? 1 : 0))
    
    }

    /// Appends the rich text targets registered with
    /// gtk_text_buffer_register_serialize_format() or
    /// gtk_text_buffer_register_deserialize_format() to the target list. All
    /// targets are added with the same `info`.
    func addRichTextTargets(info: CUnsignedInt, deserializable: Bool, buffer: TextBufferProtocol) {
        gtk_target_list_add_rich_text_targets(cast(target_list_ptr), guint(info), gboolean(deserializable ? 1 : 0), cast(buffer.ptr))
    
    }

    /// Prepends a table of `GtkTargetEntry` to a target list.
    func addTable(targets: UnsafePointer<GtkTargetEntry>, ntargets: CUnsignedInt) {
        gtk_target_list_add_table(cast(target_list_ptr), cast(targets), guint(ntargets))
    
    }

    /// Appends the text targets supported by `GtkSelectionData` to
    /// the target list. All targets are added with the same `info`.
    func addTextTargets(info: CUnsignedInt) {
        gtk_target_list_add_text_targets(cast(target_list_ptr), guint(info))
    
    }

    /// Appends the URI targets supported by `GtkSelectionData` to
    /// the target list. All targets are added with the same `info`.
    func addURITargets(info: CUnsignedInt) {
        gtk_target_list_add_uri_targets(cast(target_list_ptr), guint(info))
    
    }

    /// Looks up a given target in a `GtkTargetList`.
    func find(target: Gdk.Atom, info: UnsafeMutablePointer<CUnsignedInt>) -> Bool {
        let rv = gtk_target_list_find(cast(target_list_ptr), cast(target.ptr), cast(info))
        return Bool(rv != 0)
    }

    /// Increases the reference count of a `GtkTargetList` by one.
    func ref() -> UnsafeMutablePointer<GtkTargetList>! {
        let rv = gtk_target_list_ref(cast(target_list_ptr))
        return cast(rv)
    }

    /// Removes a target from a target list.
    func remove(target: Gdk.Atom) {
        gtk_target_list_remove(cast(target_list_ptr), cast(target.ptr))
    
    }

    /// Decreases the reference count of a `GtkTargetList` by one.
    /// If the resulting reference count is zero, frees the list.
    func unref() {
        gtk_target_list_unref(cast(target_list_ptr))
    
    }

    /// This function creates an `GtkTargetEntry` array that contains the
    /// same targets as the passed `list`. The returned table is newly
    /// allocated and should be freed using gtk_target_table_free() when no
    /// longer needed.
    func targetTableNewFromList(nTargets n_targets: UnsafeMutablePointer<CInt>) -> UnsafeMutablePointer<GtkTargetEntry>! {
        let rv = gtk_target_table_new_from_list(cast(target_list_ptr), cast(n_targets))
        return cast(rv)
    }
}



// MARK: - TargetPair Record

/// The `TargetPairProtocol` protocol exposes the methods and properties of an underlying `GtkTargetPair` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TargetPair`.
/// Alternatively, use `TargetPairRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkTargetPair` is used to represent the same
/// information as a table of `GtkTargetEntry`, but in
/// an efficient form.
public protocol TargetPairProtocol {
    /// Untyped pointer to the underlying `GtkTargetPair` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTargetPair` instance.
    var _ptr: UnsafeMutablePointer<GtkTargetPair> { get }
}

/// The `TargetPairRef` type acts as a lightweight Swift reference to an underlying `GtkTargetPair` instance.
/// It exposes methods that can operate on this data type through `TargetPairProtocol` conformance.
/// Use `TargetPairRef` only as an `unowned` reference to an existing `GtkTargetPair` instance.
///
/// A `GtkTargetPair` is used to represent the same
/// information as a table of `GtkTargetEntry`, but in
/// an efficient form.
public struct TargetPairRef: TargetPairProtocol {
    /// Untyped pointer to the underlying `GtkTargetPair` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TargetPairRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTargetPair>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TargetPairProtocol`
    init<T: TargetPairProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TargetPair` type acts as an owner of an underlying `GtkTargetPair` instance.
/// It provides the methods that can operate on this data type through `TargetPairProtocol` conformance.
/// Use `TargetPair` as a strong reference or owner of a `GtkTargetPair` instance.
///
/// A `GtkTargetPair` is used to represent the same
/// information as a table of `GtkTargetEntry`, but in
/// an efficient form.
open class TargetPair: TargetPairProtocol {
    /// Untyped pointer to the underlying `GtkTargetPair` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TargetPair` instance.
    public init(_ op: UnsafeMutablePointer<GtkTargetPair>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TargetPairProtocol`
    /// `GtkTargetPair` does not allow reference counting.
    public convenience init<T: TargetPairProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTargetPair, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTargetPair`.
    deinit {
        // no reference counting for GtkTargetPair, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTargetPair.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTargetPair.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTargetPair.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TargetPairProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTargetPair>(opaquePointer))
    }



}

// MARK: - no TargetPair properties

// MARK: - no signals


public extension TargetPairProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTargetPair` instance.
    var _ptr: UnsafeMutablePointer<GtkTargetPair> { return ptr.assumingMemoryBound(to: GtkTargetPair.self) }

}



// MARK: - TearoffMenuItemClass Record

/// The `TearoffMenuItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkTearoffMenuItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TearoffMenuItemClass`.
/// Alternatively, use `TearoffMenuItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TearoffMenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkTearoffMenuItemClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTearoffMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTearoffMenuItemClass> { get }
}

/// The `TearoffMenuItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkTearoffMenuItemClass` instance.
/// It exposes methods that can operate on this data type through `TearoffMenuItemClassProtocol` conformance.
/// Use `TearoffMenuItemClassRef` only as an `unowned` reference to an existing `GtkTearoffMenuItemClass` instance.
///

public struct TearoffMenuItemClassRef: TearoffMenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkTearoffMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TearoffMenuItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTearoffMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TearoffMenuItemClassProtocol`
    init<T: TearoffMenuItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TearoffMenuItemClass` type acts as an owner of an underlying `GtkTearoffMenuItemClass` instance.
/// It provides the methods that can operate on this data type through `TearoffMenuItemClassProtocol` conformance.
/// Use `TearoffMenuItemClass` as a strong reference or owner of a `GtkTearoffMenuItemClass` instance.
///

open class TearoffMenuItemClass: TearoffMenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkTearoffMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TearoffMenuItemClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTearoffMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TearoffMenuItemClassProtocol`
    /// `GtkTearoffMenuItemClass` does not allow reference counting.
    public convenience init<T: TearoffMenuItemClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTearoffMenuItemClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTearoffMenuItemClass`.
    deinit {
        // no reference counting for GtkTearoffMenuItemClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTearoffMenuItemClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTearoffMenuItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTearoffMenuItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTearoffMenuItemClass>(opaquePointer))
    }



}

// MARK: - no TearoffMenuItemClass properties

// MARK: - no signals


public extension TearoffMenuItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTearoffMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTearoffMenuItemClass> { return ptr.assumingMemoryBound(to: GtkTearoffMenuItemClass.self) }

}



// MARK: - TearoffMenuItemPrivate Record

/// The `TearoffMenuItemPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkTearoffMenuItemPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TearoffMenuItemPrivate`.
/// Alternatively, use `TearoffMenuItemPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TearoffMenuItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTearoffMenuItemPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTearoffMenuItemPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTearoffMenuItemPrivate> { get }
}

/// The `TearoffMenuItemPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkTearoffMenuItemPrivate` instance.
/// It exposes methods that can operate on this data type through `TearoffMenuItemPrivateProtocol` conformance.
/// Use `TearoffMenuItemPrivateRef` only as an `unowned` reference to an existing `GtkTearoffMenuItemPrivate` instance.
///

public struct TearoffMenuItemPrivateRef: TearoffMenuItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTearoffMenuItemPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TearoffMenuItemPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTearoffMenuItemPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TearoffMenuItemPrivateProtocol`
    init<T: TearoffMenuItemPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TearoffMenuItemPrivate` type acts as an owner of an underlying `GtkTearoffMenuItemPrivate` instance.
/// It provides the methods that can operate on this data type through `TearoffMenuItemPrivateProtocol` conformance.
/// Use `TearoffMenuItemPrivate` as a strong reference or owner of a `GtkTearoffMenuItemPrivate` instance.
///

open class TearoffMenuItemPrivate: TearoffMenuItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTearoffMenuItemPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TearoffMenuItemPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkTearoffMenuItemPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TearoffMenuItemPrivateProtocol`
    /// `GtkTearoffMenuItemPrivate` does not allow reference counting.
    public convenience init<T: TearoffMenuItemPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTearoffMenuItemPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTearoffMenuItemPrivate`.
    deinit {
        // no reference counting for GtkTearoffMenuItemPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTearoffMenuItemPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTearoffMenuItemPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTearoffMenuItemPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TearoffMenuItemPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTearoffMenuItemPrivate>(opaquePointer))
    }



}

// MARK: - no TearoffMenuItemPrivate properties

// MARK: - no signals


public extension TearoffMenuItemPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTearoffMenuItemPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTearoffMenuItemPrivate> { return ptr.assumingMemoryBound(to: GtkTearoffMenuItemPrivate.self) }

}



// MARK: - TextAppearance Record

/// The `TextAppearanceProtocol` protocol exposes the methods and properties of an underlying `GtkTextAppearance` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextAppearance`.
/// Alternatively, use `TextAppearanceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextAppearanceProtocol {
    /// Untyped pointer to the underlying `GtkTextAppearance` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextAppearance` instance.
    var _ptr: UnsafeMutablePointer<GtkTextAppearance> { get }
}

/// The `TextAppearanceRef` type acts as a lightweight Swift reference to an underlying `GtkTextAppearance` instance.
/// It exposes methods that can operate on this data type through `TextAppearanceProtocol` conformance.
/// Use `TextAppearanceRef` only as an `unowned` reference to an existing `GtkTextAppearance` instance.
///

public struct TextAppearanceRef: TextAppearanceProtocol {
    /// Untyped pointer to the underlying `GtkTextAppearance` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextAppearanceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextAppearance>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextAppearanceProtocol`
    init<T: TextAppearanceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextAppearance` type acts as an owner of an underlying `GtkTextAppearance` instance.
/// It provides the methods that can operate on this data type through `TextAppearanceProtocol` conformance.
/// Use `TextAppearance` as a strong reference or owner of a `GtkTextAppearance` instance.
///

open class TextAppearance: TextAppearanceProtocol {
    /// Untyped pointer to the underlying `GtkTextAppearance` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextAppearance` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextAppearance>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextAppearanceProtocol`
    /// `GtkTextAppearance` does not allow reference counting.
    public convenience init<T: TextAppearanceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextAppearance, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextAppearance`.
    deinit {
        // no reference counting for GtkTextAppearance, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextAppearance.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextAppearance.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextAppearance.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAppearanceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextAppearance>(opaquePointer))
    }



}

// MARK: - no TextAppearance properties

// MARK: - no signals


public extension TextAppearanceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextAppearance` instance.
    var _ptr: UnsafeMutablePointer<GtkTextAppearance> { return ptr.assumingMemoryBound(to: GtkTextAppearance.self) }

}



// MARK: - TextAttributes Record

/// The `TextAttributesProtocol` protocol exposes the methods and properties of an underlying `GtkTextAttributes` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextAttributes`.
/// Alternatively, use `TextAttributesRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Using `GtkTextAttributes` directly should rarely be necessary.
/// It’s primarily useful with gtk_text_iter_get_attributes().
/// As with most GTK+ structs, the fields in this struct should only
/// be read, never modified directly.
public protocol TextAttributesProtocol {
    /// Untyped pointer to the underlying `GtkTextAttributes` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextAttributes` instance.
    var text_attributes_ptr: UnsafeMutablePointer<GtkTextAttributes> { get }
}

/// The `TextAttributesRef` type acts as a lightweight Swift reference to an underlying `GtkTextAttributes` instance.
/// It exposes methods that can operate on this data type through `TextAttributesProtocol` conformance.
/// Use `TextAttributesRef` only as an `unowned` reference to an existing `GtkTextAttributes` instance.
///
/// Using `GtkTextAttributes` directly should rarely be necessary.
/// It’s primarily useful with gtk_text_iter_get_attributes().
/// As with most GTK+ structs, the fields in this struct should only
/// be read, never modified directly.
public struct TextAttributesRef: TextAttributesProtocol {
    /// Untyped pointer to the underlying `GtkTextAttributes` instance.
    /// For type-safe access, use the generated, typed pointer `text_attributes_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextAttributesRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextAttributes>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextAttributesProtocol`
    init<T: TextAttributesProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GtkTextAttributes`, which describes
    /// a set of properties on some text.
    init() {
        let rv = gtk_text_attributes_new()
        self.init(cast(rv))
    }
}

/// The `TextAttributes` type acts as a reference-counted owner of an underlying `GtkTextAttributes` instance.
/// It provides the methods that can operate on this data type through `TextAttributesProtocol` conformance.
/// Use `TextAttributes` as a strong reference or owner of a `GtkTextAttributes` instance.
///
/// Using `GtkTextAttributes` directly should rarely be necessary.
/// It’s primarily useful with gtk_text_iter_get_attributes().
/// As with most GTK+ structs, the fields in this struct should only
/// be read, never modified directly.
open class TextAttributes: TextAttributesProtocol {
    /// Untyped pointer to the underlying `GtkTextAttributes` instance.
    /// For type-safe access, use the generated, typed pointer `text_attributes_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextAttributes` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextAttributes>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextAttributesProtocol`
    /// Will retain `GtkTextAttributes`.
    public convenience init<T: TextAttributesProtocol>(_ other: T) {
        self.init(cast(other.text_attributes_ptr))
        gtk_text_attributes_ref(cast(text_attributes_ptr))
    }

    /// Releases the underlying `GtkTextAttributes` instance using `gtk_text_attributes_unref`.
    deinit {
        gtk_text_attributes_unref(cast(text_attributes_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextAttributes.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextAttributes.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextAttributes.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextAttributesProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextAttributes>(opaquePointer))
    }

    /// Creates a `GtkTextAttributes`, which describes
    /// a set of properties on some text.
    public convenience init() {
        let rv = gtk_text_attributes_new()
        self.init(cast(rv))
    }


}

// MARK: - no TextAttributes properties

// MARK: - no signals


public extension TextAttributesProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextAttributes` instance.
    var text_attributes_ptr: UnsafeMutablePointer<GtkTextAttributes> { return ptr.assumingMemoryBound(to: GtkTextAttributes.self) }

    /// Copies `src` and returns a new `GtkTextAttributes`.
    func copy() -> UnsafeMutablePointer<GtkTextAttributes>! {
        let rv = gtk_text_attributes_copy(cast(text_attributes_ptr))
        return cast(rv)
    }

    /// Copies the values from `src` to `dest` so that `dest` has
    /// the same values as `src`. Frees existing values in `dest`.
    func copyValues(dest: TextAttributesProtocol) {
        gtk_text_attributes_copy_values(cast(text_attributes_ptr), cast(dest.ptr))
    
    }

    /// Increments the reference count on `values`.
    func ref() -> UnsafeMutablePointer<GtkTextAttributes>! {
        let rv = gtk_text_attributes_ref(cast(text_attributes_ptr))
        return cast(rv)
    }

    /// Decrements the reference count on `values`, freeing the structure
    /// if the reference count reaches 0.
    func unref() {
        gtk_text_attributes_unref(cast(text_attributes_ptr))
    
    }
}



// MARK: - TextBTree Record

/// The `TextBTreeProtocol` protocol exposes the methods and properties of an underlying `GtkTextBTree` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextBTree`.
/// Alternatively, use `TextBTreeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextBTreeProtocol {
    /// Untyped pointer to the underlying `GtkTextBTree` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextBTree` instance.
    var _ptr: UnsafeMutablePointer<GtkTextBTree> { get }
}

/// The `TextBTreeRef` type acts as a lightweight Swift reference to an underlying `GtkTextBTree` instance.
/// It exposes methods that can operate on this data type through `TextBTreeProtocol` conformance.
/// Use `TextBTreeRef` only as an `unowned` reference to an existing `GtkTextBTree` instance.
///

public struct TextBTreeRef: TextBTreeProtocol {
    /// Untyped pointer to the underlying `GtkTextBTree` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextBTreeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextBTree>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextBTreeProtocol`
    init<T: TextBTreeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextBTree` type acts as an owner of an underlying `GtkTextBTree` instance.
/// It provides the methods that can operate on this data type through `TextBTreeProtocol` conformance.
/// Use `TextBTree` as a strong reference or owner of a `GtkTextBTree` instance.
///

open class TextBTree: TextBTreeProtocol {
    /// Untyped pointer to the underlying `GtkTextBTree` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextBTree` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextBTree>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextBTreeProtocol`
    /// `GtkTextBTree` does not allow reference counting.
    public convenience init<T: TextBTreeProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextBTree, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextBTree`.
    deinit {
        // no reference counting for GtkTextBTree, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextBTree.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextBTree.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextBTree.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBTreeProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextBTree>(opaquePointer))
    }



}

// MARK: - no TextBTree properties

// MARK: - no signals


public extension TextBTreeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextBTree` instance.
    var _ptr: UnsafeMutablePointer<GtkTextBTree> { return ptr.assumingMemoryBound(to: GtkTextBTree.self) }

}



// MARK: - TextBufferClass Record

/// The `TextBufferClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextBufferClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextBufferClass`.
/// Alternatively, use `TextBufferClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextBufferClassProtocol {
    /// Untyped pointer to the underlying `GtkTextBufferClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextBufferClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextBufferClass> { get }
}

/// The `TextBufferClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextBufferClass` instance.
/// It exposes methods that can operate on this data type through `TextBufferClassProtocol` conformance.
/// Use `TextBufferClassRef` only as an `unowned` reference to an existing `GtkTextBufferClass` instance.
///

public struct TextBufferClassRef: TextBufferClassProtocol {
    /// Untyped pointer to the underlying `GtkTextBufferClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextBufferClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextBufferClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextBufferClassProtocol`
    init<T: TextBufferClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextBufferClass` type acts as an owner of an underlying `GtkTextBufferClass` instance.
/// It provides the methods that can operate on this data type through `TextBufferClassProtocol` conformance.
/// Use `TextBufferClass` as a strong reference or owner of a `GtkTextBufferClass` instance.
///

open class TextBufferClass: TextBufferClassProtocol {
    /// Untyped pointer to the underlying `GtkTextBufferClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextBufferClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextBufferClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextBufferClassProtocol`
    /// `GtkTextBufferClass` does not allow reference counting.
    public convenience init<T: TextBufferClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextBufferClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextBufferClass`.
    deinit {
        // no reference counting for GtkTextBufferClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextBufferClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextBufferClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextBufferClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextBufferClass>(opaquePointer))
    }



}

// MARK: - no TextBufferClass properties

// MARK: - no signals


public extension TextBufferClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextBufferClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextBufferClass> { return ptr.assumingMemoryBound(to: GtkTextBufferClass.self) }

}



// MARK: - TextBufferPrivate Record

/// The `TextBufferPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkTextBufferPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextBufferPrivate`.
/// Alternatively, use `TextBufferPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextBufferPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextBufferPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextBufferPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTextBufferPrivate> { get }
}

/// The `TextBufferPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkTextBufferPrivate` instance.
/// It exposes methods that can operate on this data type through `TextBufferPrivateProtocol` conformance.
/// Use `TextBufferPrivateRef` only as an `unowned` reference to an existing `GtkTextBufferPrivate` instance.
///

public struct TextBufferPrivateRef: TextBufferPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextBufferPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextBufferPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextBufferPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextBufferPrivateProtocol`
    init<T: TextBufferPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextBufferPrivate` type acts as an owner of an underlying `GtkTextBufferPrivate` instance.
/// It provides the methods that can operate on this data type through `TextBufferPrivateProtocol` conformance.
/// Use `TextBufferPrivate` as a strong reference or owner of a `GtkTextBufferPrivate` instance.
///

open class TextBufferPrivate: TextBufferPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextBufferPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextBufferPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextBufferPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextBufferPrivateProtocol`
    /// `GtkTextBufferPrivate` does not allow reference counting.
    public convenience init<T: TextBufferPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextBufferPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextBufferPrivate`.
    deinit {
        // no reference counting for GtkTextBufferPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextBufferPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextBufferPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextBufferPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextBufferPrivate>(opaquePointer))
    }



}

// MARK: - no TextBufferPrivate properties

// MARK: - no signals


public extension TextBufferPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextBufferPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTextBufferPrivate> { return ptr.assumingMemoryBound(to: GtkTextBufferPrivate.self) }

}



// MARK: - TextCellAccessibleClass Record

/// The `TextCellAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextCellAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextCellAccessibleClass`.
/// Alternatively, use `TextCellAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextCellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkTextCellAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextCellAccessibleClass> { get }
}

/// The `TextCellAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextCellAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `TextCellAccessibleClassProtocol` conformance.
/// Use `TextCellAccessibleClassRef` only as an `unowned` reference to an existing `GtkTextCellAccessibleClass` instance.
///

public struct TextCellAccessibleClassRef: TextCellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkTextCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextCellAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextCellAccessibleClassProtocol`
    init<T: TextCellAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextCellAccessibleClass` type acts as an owner of an underlying `GtkTextCellAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `TextCellAccessibleClassProtocol` conformance.
/// Use `TextCellAccessibleClass` as a strong reference or owner of a `GtkTextCellAccessibleClass` instance.
///

open class TextCellAccessibleClass: TextCellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkTextCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextCellAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextCellAccessibleClassProtocol`
    /// `GtkTextCellAccessibleClass` does not allow reference counting.
    public convenience init<T: TextCellAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextCellAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextCellAccessibleClass`.
    deinit {
        // no reference counting for GtkTextCellAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextCellAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextCellAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextCellAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextCellAccessibleClass>(opaquePointer))
    }



}

// MARK: - no TextCellAccessibleClass properties

// MARK: - no signals


public extension TextCellAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextCellAccessibleClass> { return ptr.assumingMemoryBound(to: GtkTextCellAccessibleClass.self) }

}



// MARK: - TextCellAccessiblePrivate Record

/// The `TextCellAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkTextCellAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextCellAccessiblePrivate`.
/// Alternatively, use `TextCellAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextCellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextCellAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextCellAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTextCellAccessiblePrivate> { get }
}

/// The `TextCellAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkTextCellAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `TextCellAccessiblePrivateProtocol` conformance.
/// Use `TextCellAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkTextCellAccessiblePrivate` instance.
///

public struct TextCellAccessiblePrivateRef: TextCellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextCellAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextCellAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextCellAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextCellAccessiblePrivateProtocol`
    init<T: TextCellAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextCellAccessiblePrivate` type acts as an owner of an underlying `GtkTextCellAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `TextCellAccessiblePrivateProtocol` conformance.
/// Use `TextCellAccessiblePrivate` as a strong reference or owner of a `GtkTextCellAccessiblePrivate` instance.
///

open class TextCellAccessiblePrivate: TextCellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextCellAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextCellAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextCellAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextCellAccessiblePrivateProtocol`
    /// `GtkTextCellAccessiblePrivate` does not allow reference counting.
    public convenience init<T: TextCellAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextCellAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextCellAccessiblePrivate`.
    deinit {
        // no reference counting for GtkTextCellAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextCellAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextCellAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextCellAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextCellAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextCellAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no TextCellAccessiblePrivate properties

// MARK: - no signals


public extension TextCellAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextCellAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTextCellAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkTextCellAccessiblePrivate.self) }

}



// MARK: - TextChildAnchorClass Record

/// The `TextChildAnchorClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextChildAnchorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextChildAnchorClass`.
/// Alternatively, use `TextChildAnchorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextChildAnchorClassProtocol {
    /// Untyped pointer to the underlying `GtkTextChildAnchorClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextChildAnchorClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextChildAnchorClass> { get }
}

/// The `TextChildAnchorClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextChildAnchorClass` instance.
/// It exposes methods that can operate on this data type through `TextChildAnchorClassProtocol` conformance.
/// Use `TextChildAnchorClassRef` only as an `unowned` reference to an existing `GtkTextChildAnchorClass` instance.
///

public struct TextChildAnchorClassRef: TextChildAnchorClassProtocol {
    /// Untyped pointer to the underlying `GtkTextChildAnchorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextChildAnchorClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextChildAnchorClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextChildAnchorClassProtocol`
    init<T: TextChildAnchorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextChildAnchorClass` type acts as an owner of an underlying `GtkTextChildAnchorClass` instance.
/// It provides the methods that can operate on this data type through `TextChildAnchorClassProtocol` conformance.
/// Use `TextChildAnchorClass` as a strong reference or owner of a `GtkTextChildAnchorClass` instance.
///

open class TextChildAnchorClass: TextChildAnchorClassProtocol {
    /// Untyped pointer to the underlying `GtkTextChildAnchorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextChildAnchorClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextChildAnchorClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextChildAnchorClassProtocol`
    /// `GtkTextChildAnchorClass` does not allow reference counting.
    public convenience init<T: TextChildAnchorClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextChildAnchorClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextChildAnchorClass`.
    deinit {
        // no reference counting for GtkTextChildAnchorClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextChildAnchorClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextChildAnchorClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextChildAnchorClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextChildAnchorClass>(opaquePointer))
    }



}

// MARK: - no TextChildAnchorClass properties

// MARK: - no signals


public extension TextChildAnchorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextChildAnchorClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextChildAnchorClass> { return ptr.assumingMemoryBound(to: GtkTextChildAnchorClass.self) }

}



// MARK: - TextIter Record

/// The `TextIterProtocol` protocol exposes the methods and properties of an underlying `GtkTextIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextIter`.
/// Alternatively, use `TextIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// You may wish to begin by reading the
/// [text widget conceptual overview][TextWidget]
/// which gives an overview of all the objects and data
/// types related to the text widget and how they work together.
public protocol TextIterProtocol {
    /// Untyped pointer to the underlying `GtkTextIter` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextIter` instance.
    var text_iter_ptr: UnsafeMutablePointer<GtkTextIter> { get }
}

/// The `TextIterRef` type acts as a lightweight Swift reference to an underlying `GtkTextIter` instance.
/// It exposes methods that can operate on this data type through `TextIterProtocol` conformance.
/// Use `TextIterRef` only as an `unowned` reference to an existing `GtkTextIter` instance.
///
/// You may wish to begin by reading the
/// [text widget conceptual overview][TextWidget]
/// which gives an overview of all the objects and data
/// types related to the text widget and how they work together.
public struct TextIterRef: TextIterProtocol {
    /// Untyped pointer to the underlying `GtkTextIter` instance.
    /// For type-safe access, use the generated, typed pointer `text_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextIterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextIter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextIterProtocol`
    init<T: TextIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextIter` type acts as an owner of an underlying `GtkTextIter` instance.
/// It provides the methods that can operate on this data type through `TextIterProtocol` conformance.
/// Use `TextIter` as a strong reference or owner of a `GtkTextIter` instance.
///
/// You may wish to begin by reading the
/// [text widget conceptual overview][TextWidget]
/// which gives an overview of all the objects and data
/// types related to the text widget and how they work together.
open class TextIter: TextIterProtocol {
    /// Untyped pointer to the underlying `GtkTextIter` instance.
    /// For type-safe access, use the generated, typed pointer `text_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextIter` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextIterProtocol`
    /// `GtkTextIter` does not allow reference counting.
    public convenience init<T: TextIterProtocol>(_ other: T) {
        self.init(cast(other.text_iter_ptr))
        // no reference counting for GtkTextIter, cannot ref(cast(text_iter_ptr))
    }

    /// Do-nothing destructor for`GtkTextIter`.
    deinit {
        // no reference counting for GtkTextIter, cannot unref(cast(text_iter_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextIter.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextIter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextIter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextIter>(opaquePointer))
    }



}

// MARK: - no TextIter properties

// MARK: - no signals


public extension TextIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextIter` instance.
    var text_iter_ptr: UnsafeMutablePointer<GtkTextIter> { return ptr.assumingMemoryBound(to: GtkTextIter.self) }

    /// Assigns the value of `other` to `iter`.  This function
    /// is not useful in applications, because iterators can be assigned
    /// with `GtkTextIter i = j;`. The
    /// function is used by language bindings.
    func assign(other: TextIterProtocol) {
        gtk_text_iter_assign(cast(text_iter_ptr), cast(other.ptr))
    
    }

    /// Moves backward by one character offset. Returns `true` if movement
    /// was possible; if `iter` was the first in the buffer (character
    /// offset 0), gtk_text_iter_backward_char() returns `false` for convenience when
    /// writing loops.
    func backwardChar() -> Bool {
        let rv = gtk_text_iter_backward_char(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Moves `count` characters backward, if possible (if `count` would move
    /// past the start or end of the buffer, moves to the start or end of
    /// the buffer).  The return value indicates whether the iterator moved
    /// onto a dereferenceable position; if the iterator didn’t move, or
    /// moved onto the end iterator, then `false` is returned. If `count` is 0,
    /// the function does nothing and returns `false`.
    func backwardChars(count: CInt) -> Bool {
        let rv = gtk_text_iter_backward_chars(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Like gtk_text_iter_forward_cursor_position(), but moves backward.
    func backwardCursorPosition() -> Bool {
        let rv = gtk_text_iter_backward_cursor_position(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Moves up to `count` cursor positions. See
    /// gtk_text_iter_forward_cursor_position() for details.
    func backwardCursorPositions(count: CInt) -> Bool {
        let rv = gtk_text_iter_backward_cursor_positions(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Same as gtk_text_iter_forward_find_char(), but goes backward from `iter`.
    func backwardFindChar(pred: @escaping TextCharPredicate, userData user_data: UnsafeMutableRawPointer, limit: TextIterProtocol) -> Bool {
        let rv = gtk_text_iter_backward_find_char(cast(text_iter_ptr), pred, cast(user_data), cast(limit.ptr))
        return Bool(rv != 0)
    }

    /// Moves `iter` to the start of the previous line. Returns `true` if
    /// `iter` could be moved; i.e. if `iter` was at character offset 0, this
    /// function returns `false`. Therefore if `iter` was already on line 0,
    /// but not at the start of the line, `iter` is snapped to the start of
    /// the line and the function returns `true`. (Note that this implies that
    /// in a loop calling this function, the line number may not change on
    /// every iteration, if your first iteration is on line 0.)
    func backwardLine() -> Bool {
        let rv = gtk_text_iter_backward_line(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Moves `count` lines backward, if possible (if `count` would move
    /// past the start or end of the buffer, moves to the start or end of
    /// the buffer).  The return value indicates whether the iterator moved
    /// onto a dereferenceable position; if the iterator didn’t move, or
    /// moved onto the end iterator, then `false` is returned. If `count` is 0,
    /// the function does nothing and returns `false`. If `count` is negative,
    /// moves forward by 0 - `count` lines.
    func backwardLines(count: CInt) -> Bool {
        let rv = gtk_text_iter_backward_lines(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Same as gtk_text_iter_forward_search(), but moves backward.
    /// 
    /// `match_end` will never be set to a `GtkTextIter` located after `iter`, even if
    /// there is a possible `match_start` before or at `iter`.
    func backwardSearch(_ str: UnsafePointer<gchar>, flags: TextSearchFlags, matchStart match_start: TextIterProtocol, matchEnd match_end: TextIterProtocol, limit: TextIterProtocol) -> Bool {
        let rv = gtk_text_iter_backward_search(cast(text_iter_ptr), str, flags, cast(match_start.ptr), cast(match_end.ptr), cast(limit.ptr))
        return Bool(rv != 0)
    }

    /// Moves backward to the previous sentence start; if `iter` is already at
    /// the start of a sentence, moves backward to the next one.  Sentence
    /// boundaries are determined by Pango and should be correct for nearly
    /// any language (if not, the correct fix would be to the Pango text
    /// boundary algorithms).
    func backwardSentenceStart() -> Bool {
        let rv = gtk_text_iter_backward_sentence_start(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Calls gtk_text_iter_backward_sentence_start() up to `count` times,
    /// or until it returns `false`. If `count` is negative, moves forward
    /// instead of backward.
    func backwardSentenceStarts(count: CInt) -> Bool {
        let rv = gtk_text_iter_backward_sentence_starts(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Moves backward to the next toggle (on or off) of the
    /// `GtkTextTag` `tag`, or to the next toggle of any tag if
    /// `tag` is `nil`. If no matching tag toggles are found,
    /// returns `false`, otherwise `true`. Does not return toggles
    /// located at `iter`, only toggles before `iter`. Sets `iter`
    /// to the location of the toggle, or the start of the buffer
    /// if no toggle is found.
    func backwardToTagToggle(tag: TextTagProtocol) -> Bool {
        let rv = gtk_text_iter_backward_to_tag_toggle(cast(text_iter_ptr), cast(tag.ptr))
        return Bool(rv != 0)
    }

    /// Moves `iter` forward to the previous visible cursor position. See
    /// gtk_text_iter_backward_cursor_position() for details.
    func backwardVisibleCursorPosition() -> Bool {
        let rv = gtk_text_iter_backward_visible_cursor_position(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Moves up to `count` visible cursor positions. See
    /// gtk_text_iter_backward_cursor_position() for details.
    func backwardVisibleCursorPositions(count: CInt) -> Bool {
        let rv = gtk_text_iter_backward_visible_cursor_positions(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Moves `iter` to the start of the previous visible line. Returns `true` if
    /// `iter` could be moved; i.e. if `iter` was at character offset 0, this
    /// function returns `false`. Therefore if `iter` was already on line 0,
    /// but not at the start of the line, `iter` is snapped to the start of
    /// the line and the function returns `true`. (Note that this implies that
    /// in a loop calling this function, the line number may not change on
    /// every iteration, if your first iteration is on line 0.)
    func backwardVisibleLine() -> Bool {
        let rv = gtk_text_iter_backward_visible_line(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Moves `count` visible lines backward, if possible (if `count` would move
    /// past the start or end of the buffer, moves to the start or end of
    /// the buffer).  The return value indicates whether the iterator moved
    /// onto a dereferenceable position; if the iterator didn’t move, or
    /// moved onto the end iterator, then `false` is returned. If `count` is 0,
    /// the function does nothing and returns `false`. If `count` is negative,
    /// moves forward by 0 - `count` lines.
    func backwardVisibleLines(count: CInt) -> Bool {
        let rv = gtk_text_iter_backward_visible_lines(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Moves backward to the previous visible word start. (If `iter` is currently
    /// on a word start, moves backward to the next one after that.) Word breaks
    /// are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    func backwardVisibleWordStart() -> Bool {
        let rv = gtk_text_iter_backward_visible_word_start(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Calls gtk_text_iter_backward_visible_word_start() up to `count` times.
    func backwardVisibleWordStarts(count: CInt) -> Bool {
        let rv = gtk_text_iter_backward_visible_word_starts(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Moves backward to the previous word start. (If `iter` is currently on a
    /// word start, moves backward to the next one after that.) Word breaks
    /// are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    func backwardWordStart() -> Bool {
        let rv = gtk_text_iter_backward_word_start(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Calls gtk_text_iter_backward_word_start() up to `count` times.
    func backwardWordStarts(count: CInt) -> Bool {
        let rv = gtk_text_iter_backward_word_starts(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Returns `true` if `tag` is toggled on at exactly this point. If `tag`
    /// is `nil`, returns `true` if any tag is toggled on at this point.
    /// 
    /// Note that if gtk_text_iter_begins_tag() returns `true`, it means that `iter` is
    /// at the beginning of the tagged range, and that the
    /// character at `iter` is inside the tagged range. In other
    /// words, unlike gtk_text_iter_ends_tag(), if gtk_text_iter_begins_tag() returns
    /// `true`, gtk_text_iter_has_tag() will also return `true` for the same
    /// parameters.
    ///
    /// **begins_tag is deprecated:**
    /// Use gtk_text_iter_starts_tag() instead.
    @available(*, deprecated) func begins(tag: TextTagProtocol) -> Bool {
        let rv = gtk_text_iter_begins_tag(cast(text_iter_ptr), cast(tag.ptr))
        return Bool(rv != 0)
    }

    /// Considering the default editability of the buffer, and tags that
    /// affect editability, determines whether text inserted at `iter` would
    /// be editable. If text inserted at `iter` would be editable then the
    /// user should be allowed to insert text at `iter`.
    /// gtk_text_buffer_insert_interactive() uses this function to decide
    /// whether insertions are allowed at a given position.
    func canInsert(defaultEditability default_editability: Bool) -> Bool {
        let rv = gtk_text_iter_can_insert(cast(text_iter_ptr), gboolean(default_editability ? 1 : 0))
        return Bool(rv != 0)
    }

    /// A qsort()-style function that returns negative if `lhs` is less than
    /// `rhs`, positive if `lhs` is greater than `rhs`, and 0 if they’re equal.
    /// Ordering is in character offset order, i.e. the first character in the buffer
    /// is less than the second character in the buffer.
    func compare(rhs: TextIterProtocol) -> CInt {
        let rv = gtk_text_iter_compare(cast(text_iter_ptr), cast(rhs.ptr))
        return CInt(rv)
    }

    /// Creates a dynamically-allocated copy of an iterator. This function
    /// is not useful in applications, because iterators can be copied with a
    /// simple assignment (`GtkTextIter i = j;`). The
    /// function is used by language bindings.
    func copy() -> UnsafeMutablePointer<GtkTextIter>! {
        let rv = gtk_text_iter_copy(cast(text_iter_ptr))
        return cast(rv)
    }

    /// Returns whether the character at `iter` is within an editable region
    /// of text.  Non-editable text is “locked” and can’t be changed by the
    /// user via `GtkTextView`. This function is simply a convenience
    /// wrapper around gtk_text_iter_get_attributes(). If no tags applied
    /// to this text affect editability, `default_setting` will be returned.
    /// 
    /// You don’t want to use this function to decide whether text can be
    /// inserted at `iter`, because for insertion you don’t want to know
    /// whether the char at `iter` is inside an editable range, you want to
    /// know whether a new character inserted at `iter` would be inside an
    /// editable range. Use gtk_text_iter_can_insert() to handle this
    /// case.
    func editable(defaultSetting default_setting: Bool) -> Bool {
        let rv = gtk_text_iter_editable(cast(text_iter_ptr), gboolean(default_setting ? 1 : 0))
        return Bool(rv != 0)
    }

    /// Returns `true` if `iter` points to the start of the paragraph
    /// delimiter characters for a line (delimiters will be either a
    /// newline, a carriage return, a carriage return followed by a
    /// newline, or a Unicode paragraph separator character). Note that an
    /// iterator pointing to the \n of a \r\n pair will not be counted as
    /// the end of a line, the line ends before the \r. The end iterator is
    /// considered to be at the end of a line, even though there are no
    /// paragraph delimiter chars there.
    func endsLine() -> Bool {
        let rv = gtk_text_iter_ends_line(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Determines whether `iter` ends a sentence.  Sentence boundaries are
    /// determined by Pango and should be correct for nearly any language
    /// (if not, the correct fix would be to the Pango text boundary
    /// algorithms).
    func endsSentence() -> Bool {
        let rv = gtk_text_iter_ends_sentence(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Returns `true` if `tag` is toggled off at exactly this point. If `tag`
    /// is `nil`, returns `true` if any tag is toggled off at this point.
    /// 
    /// Note that if gtk_text_iter_ends_tag() returns `true`, it means that `iter` is
    /// at the end of the tagged range, but that the character
    /// at `iter` is outside the tagged range. In other words,
    /// unlike gtk_text_iter_starts_tag(), if gtk_text_iter_ends_tag() returns `true`,
    /// gtk_text_iter_has_tag() will return `false` for the same parameters.
    func ends(tag: TextTagProtocol) -> Bool {
        let rv = gtk_text_iter_ends_tag(cast(text_iter_ptr), cast(tag.ptr))
        return Bool(rv != 0)
    }

    /// Determines whether `iter` ends a natural-language word.  Word breaks
    /// are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    func endsWord() -> Bool {
        let rv = gtk_text_iter_ends_word(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Tests whether two iterators are equal, using the fastest possible
    /// mechanism. This function is very fast; you can expect it to perform
    /// better than e.g. getting the character offset for each iterator and
    /// comparing the offsets yourself. Also, it’s a bit faster than
    /// gtk_text_iter_compare().
    func equal(rhs: TextIterProtocol) -> Bool {
        let rv = gtk_text_iter_equal(cast(text_iter_ptr), cast(rhs.ptr))
        return Bool(rv != 0)
    }

    /// Moves `iter` forward by one character offset. Note that images
    /// embedded in the buffer occupy 1 character slot, so
    /// gtk_text_iter_forward_char() may actually move onto an image instead
    /// of a character, if you have images in your buffer.  If `iter` is the
    /// end iterator or one character before it, `iter` will now point at
    /// the end iterator, and gtk_text_iter_forward_char() returns `false` for
    /// convenience when writing loops.
    func forwardChar() -> Bool {
        let rv = gtk_text_iter_forward_char(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Moves `count` characters if possible (if `count` would move past the
    /// start or end of the buffer, moves to the start or end of the
    /// buffer). The return value indicates whether the new position of
    /// `iter` is different from its original position, and dereferenceable
    /// (the last iterator in the buffer is not dereferenceable). If `count`
    /// is 0, the function does nothing and returns `false`.
    func forwardChars(count: CInt) -> Bool {
        let rv = gtk_text_iter_forward_chars(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Moves `iter` forward by a single cursor position. Cursor positions
    /// are (unsurprisingly) positions where the cursor can appear. Perhaps
    /// surprisingly, there may not be a cursor position between all
    /// characters. The most common example for European languages would be
    /// a carriage return/newline sequence. For some Unicode characters,
    /// the equivalent of say the letter “a” with an accent mark will be
    /// represented as two characters, first the letter then a "combining
    /// mark" that causes the accent to be rendered; so the cursor can’t go
    /// between those two characters. See also the `PangoLogAttr`-struct and
    /// pango_break() function.
    func forwardCursorPosition() -> Bool {
        let rv = gtk_text_iter_forward_cursor_position(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Moves up to `count` cursor positions. See
    /// gtk_text_iter_forward_cursor_position() for details.
    func forwardCursorPositions(count: CInt) -> Bool {
        let rv = gtk_text_iter_forward_cursor_positions(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Advances `iter`, calling `pred` on each character. If
    /// `pred` returns `true`, returns `true` and stops scanning.
    /// If `pred` never returns `true`, `iter` is set to `limit` if
    /// `limit` is non-`nil`, otherwise to the end iterator.
    func forwardFindChar(pred: @escaping TextCharPredicate, userData user_data: UnsafeMutableRawPointer, limit: TextIterProtocol) -> Bool {
        let rv = gtk_text_iter_forward_find_char(cast(text_iter_ptr), pred, cast(user_data), cast(limit.ptr))
        return Bool(rv != 0)
    }

    /// Moves `iter` to the start of the next line. If the iter is already on the
    /// last line of the buffer, moves the iter to the end of the current line.
    /// If after the operation, the iter is at the end of the buffer and not
    /// dereferencable, returns `false`. Otherwise, returns `true`.
    func forwardLine() -> Bool {
        let rv = gtk_text_iter_forward_line(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Moves `count` lines forward, if possible (if `count` would move
    /// past the start or end of the buffer, moves to the start or end of
    /// the buffer).  The return value indicates whether the iterator moved
    /// onto a dereferenceable position; if the iterator didn’t move, or
    /// moved onto the end iterator, then `false` is returned. If `count` is 0,
    /// the function does nothing and returns `false`. If `count` is negative,
    /// moves backward by 0 - `count` lines.
    func forwardLines(count: CInt) -> Bool {
        let rv = gtk_text_iter_forward_lines(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Searches forward for `str`. Any match is returned by setting
    /// `match_start` to the first character of the match and `match_end` to the
    /// first character after the match. The search will not continue past
    /// `limit`. Note that a search is a linear or O(n) operation, so you
    /// may wish to use `limit` to avoid locking up your UI on large
    /// buffers.
    /// 
    /// `match_start` will never be set to a `GtkTextIter` located before `iter`, even if
    /// there is a possible `match_end` after or at `iter`.
    func forwardSearch(_ str: UnsafePointer<gchar>, flags: TextSearchFlags, matchStart match_start: TextIterProtocol, matchEnd match_end: TextIterProtocol, limit: TextIterProtocol) -> Bool {
        let rv = gtk_text_iter_forward_search(cast(text_iter_ptr), str, flags, cast(match_start.ptr), cast(match_end.ptr), cast(limit.ptr))
        return Bool(rv != 0)
    }

    /// Moves forward to the next sentence end. (If `iter` is at the end of
    /// a sentence, moves to the next end of sentence.)  Sentence
    /// boundaries are determined by Pango and should be correct for nearly
    /// any language (if not, the correct fix would be to the Pango text
    /// boundary algorithms).
    func forwardSentenceEnd() -> Bool {
        let rv = gtk_text_iter_forward_sentence_end(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Calls gtk_text_iter_forward_sentence_end() `count` times (or until
    /// gtk_text_iter_forward_sentence_end() returns `false`). If `count` is
    /// negative, moves backward instead of forward.
    func forwardSentenceEnds(count: CInt) -> Bool {
        let rv = gtk_text_iter_forward_sentence_ends(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Moves `iter` forward to the “end iterator,” which points one past the last
    /// valid character in the buffer. gtk_text_iter_get_char() called on the
    /// end iterator returns 0, which is convenient for writing loops.
    func forwardToEnd() {
        gtk_text_iter_forward_to_end(cast(text_iter_ptr))
    
    }

    /// Moves the iterator to point to the paragraph delimiter characters,
    /// which will be either a newline, a carriage return, a carriage
    /// return/newline in sequence, or the Unicode paragraph separator
    /// character. If the iterator is already at the paragraph delimiter
    /// characters, moves to the paragraph delimiter characters for the
    /// next line. If `iter` is on the last line in the buffer, which does
    /// not end in paragraph delimiters, moves to the end iterator (end of
    /// the last line), and returns `false`.
    func forwardToLineEnd() -> Bool {
        let rv = gtk_text_iter_forward_to_line_end(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Moves forward to the next toggle (on or off) of the
    /// `GtkTextTag` `tag`, or to the next toggle of any tag if
    /// `tag` is `nil`. If no matching tag toggles are found,
    /// returns `false`, otherwise `true`. Does not return toggles
    /// located at `iter`, only toggles after `iter`. Sets `iter` to
    /// the location of the toggle, or to the end of the buffer
    /// if no toggle is found.
    func forwardToTagToggle(tag: TextTagProtocol) -> Bool {
        let rv = gtk_text_iter_forward_to_tag_toggle(cast(text_iter_ptr), cast(tag.ptr))
        return Bool(rv != 0)
    }

    /// Moves `iter` forward to the next visible cursor position. See
    /// gtk_text_iter_forward_cursor_position() for details.
    func forwardVisibleCursorPosition() -> Bool {
        let rv = gtk_text_iter_forward_visible_cursor_position(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Moves up to `count` visible cursor positions. See
    /// gtk_text_iter_forward_cursor_position() for details.
    func forwardVisibleCursorPositions(count: CInt) -> Bool {
        let rv = gtk_text_iter_forward_visible_cursor_positions(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Moves `iter` to the start of the next visible line. Returns `true` if there
    /// was a next line to move to, and `false` if `iter` was simply moved to
    /// the end of the buffer and is now not dereferenceable, or if `iter` was
    /// already at the end of the buffer.
    func forwardVisibleLine() -> Bool {
        let rv = gtk_text_iter_forward_visible_line(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Moves `count` visible lines forward, if possible (if `count` would move
    /// past the start or end of the buffer, moves to the start or end of
    /// the buffer).  The return value indicates whether the iterator moved
    /// onto a dereferenceable position; if the iterator didn’t move, or
    /// moved onto the end iterator, then `false` is returned. If `count` is 0,
    /// the function does nothing and returns `false`. If `count` is negative,
    /// moves backward by 0 - `count` lines.
    func forwardVisibleLines(count: CInt) -> Bool {
        let rv = gtk_text_iter_forward_visible_lines(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Moves forward to the next visible word end. (If `iter` is currently on a
    /// word end, moves forward to the next one after that.) Word breaks
    /// are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    func forwardVisibleWordEnd() -> Bool {
        let rv = gtk_text_iter_forward_visible_word_end(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Calls gtk_text_iter_forward_visible_word_end() up to `count` times.
    func forwardVisibleWordEnds(count: CInt) -> Bool {
        let rv = gtk_text_iter_forward_visible_word_ends(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Moves forward to the next word end. (If `iter` is currently on a
    /// word end, moves forward to the next one after that.) Word breaks
    /// are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    func forwardWordEnd() -> Bool {
        let rv = gtk_text_iter_forward_word_end(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Calls gtk_text_iter_forward_word_end() up to `count` times.
    func forwardWordEnds(count: CInt) -> Bool {
        let rv = gtk_text_iter_forward_word_ends(cast(text_iter_ptr), gint(count))
        return Bool(rv != 0)
    }

    /// Free an iterator allocated on the heap. This function
    /// is intended for use in language bindings, and is not
    /// especially useful for applications, because iterators can
    /// simply be allocated on the stack.
    func free() {
        gtk_text_iter_free(cast(text_iter_ptr))
    
    }

    /// Computes the effect of any tags applied to this spot in the
    /// text. The `values` parameter should be initialized to the default
    /// settings you wish to use if no tags are in effect. You’d typically
    /// obtain the defaults from gtk_text_view_get_default_attributes().
    /// 
    /// gtk_text_iter_get_attributes() will modify `values`, applying the
    /// effects of any tags present at `iter`. If any tags affected `values`,
    /// the function returns `true`.
    func getAttributes(values: TextAttributesProtocol) -> Bool {
        let rv = gtk_text_iter_get_attributes(cast(text_iter_ptr), cast(values.ptr))
        return Bool(rv != 0)
    }

    /// Returns the `GtkTextBuffer` this iterator is associated with.
    func getBuffer() -> UnsafeMutablePointer<GtkTextBuffer>! {
        let rv = gtk_text_iter_get_buffer(cast(text_iter_ptr))
        return cast(rv)
    }

    /// Returns the number of bytes in the line containing `iter`,
    /// including the paragraph delimiters.
    func getBytesInLine() -> CInt {
        let rv = gtk_text_iter_get_bytes_in_line(cast(text_iter_ptr))
        return CInt(rv)
    }

    /// The Unicode character at this iterator is returned.  (Equivalent to
    /// operator* on a C++ iterator.)  If the element at this iterator is a
    /// non-character element, such as an image embedded in the buffer, the
    /// Unicode “unknown” character 0xFFFC is returned. If invoked on
    /// the end iterator, zero is returned; zero is not a valid Unicode character.
    /// So you can write a loop which ends when gtk_text_iter_get_char()
    /// returns 0.
    func getChar() -> gunichar {
        let rv = gtk_text_iter_get_char(cast(text_iter_ptr))
        return rv
    }

    /// Returns the number of characters in the line containing `iter`,
    /// including the paragraph delimiters.
    func getCharsInLine() -> CInt {
        let rv = gtk_text_iter_get_chars_in_line(cast(text_iter_ptr))
        return CInt(rv)
    }

    /// If the location at `iter` contains a child anchor, the
    /// anchor is returned (with no new reference count added). Otherwise,
    /// `nil` is returned.
    func getChildAnchor() -> UnsafeMutablePointer<GtkTextChildAnchor>! {
        let rv = gtk_text_iter_get_child_anchor(cast(text_iter_ptr))
        return cast(rv)
    }

    /// A convenience wrapper around gtk_text_iter_get_attributes(),
    /// which returns the language in effect at `iter`. If no tags affecting
    /// language apply to `iter`, the return value is identical to that of
    /// gtk_get_default_language().
    func getLanguage() -> UnsafeMutablePointer<PangoLanguage>! {
        let rv = gtk_text_iter_get_language(cast(text_iter_ptr))
        return cast(rv)
    }

    /// Returns the line number containing the iterator. Lines in
    /// a `GtkTextBuffer` are numbered beginning with 0 for the first
    /// line in the buffer.
    func getLine() -> CInt {
        let rv = gtk_text_iter_get_line(cast(text_iter_ptr))
        return CInt(rv)
    }

    /// Returns the byte index of the iterator, counting
    /// from the start of a newline-terminated line.
    /// Remember that `GtkTextBuffer` encodes text in
    /// UTF-8, and that characters can require a variable
    /// number of bytes to represent.
    func getLineIndex() -> CInt {
        let rv = gtk_text_iter_get_line_index(cast(text_iter_ptr))
        return CInt(rv)
    }

    /// Returns the character offset of the iterator,
    /// counting from the start of a newline-terminated line.
    /// The first character on the line has offset 0.
    func getLineOffset() -> CInt {
        let rv = gtk_text_iter_get_line_offset(cast(text_iter_ptr))
        return CInt(rv)
    }

    /// Returns a list of all `GtkTextMark` at this location. Because marks
    /// are not iterable (they don’t take up any "space" in the buffer,
    /// they are just marks in between iterable locations), multiple marks
    /// can exist in the same place. The returned list is not in any
    /// meaningful order.
    func getMarks() -> SListRef! {
        let rv = gtk_text_iter_get_marks(cast(text_iter_ptr))
        return cast(rv.map { SListRef($0) })
    }

    /// Returns the character offset of an iterator.
    /// Each character in a `GtkTextBuffer` has an offset,
    /// starting with 0 for the first character in the buffer.
    /// Use gtk_text_buffer_get_iter_at_offset() to convert an
    /// offset back into an iterator.
    func getOffset() -> CInt {
        let rv = gtk_text_iter_get_offset(cast(text_iter_ptr))
        return CInt(rv)
    }

    /// If the element at `iter` is a pixbuf, the pixbuf is returned
    /// (with no new reference count added). Otherwise,
    /// `nil` is returned.
    func getPixbuf() -> UnsafeMutablePointer<GdkPixbuf>! {
        let rv = gtk_text_iter_get_pixbuf(cast(text_iter_ptr))
        return cast(rv)
    }

    /// Returns the text in the given range. A “slice” is an array of
    /// characters encoded in UTF-8 format, including the Unicode “unknown”
    /// character 0xFFFC for iterable non-character elements in the buffer,
    /// such as images.  Because images are encoded in the slice, byte and
    /// character offsets in the returned array will correspond to byte
    /// offsets in the text buffer. Note that 0xFFFC can occur in normal
    /// text as well, so it is not a reliable indicator that a pixbuf or
    /// widget is in the buffer.
    func getSlice(end: TextIterProtocol) -> String! {
        let rv = gtk_text_iter_get_slice(cast(text_iter_ptr), cast(end.ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns a list of tags that apply to `iter`, in ascending order of
    /// priority (highest-priority tags are last). The `GtkTextTag` in the
    /// list don’t have a reference added, but you have to free the list
    /// itself.
    func getTags() -> SListRef! {
        let rv = gtk_text_iter_get_tags(cast(text_iter_ptr))
        return cast(rv.map { SListRef($0) })
    }

    /// Returns text in the given range.  If the range
    /// contains non-text elements such as images, the character and byte
    /// offsets in the returned string will not correspond to character and
    /// byte offsets in the buffer. If you want offsets to correspond, see
    /// gtk_text_iter_get_slice().
    func getText(end: TextIterProtocol) -> String! {
        let rv = gtk_text_iter_get_text(cast(text_iter_ptr), cast(end.ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns a list of `GtkTextTag` that are toggled on or off at this
    /// point.  (If `toggled_on` is `true`, the list contains tags that are
    /// toggled on.) If a tag is toggled on at `iter`, then some non-empty
    /// range of characters following `iter` has that tag applied to it.  If
    /// a tag is toggled off, then some non-empty range following `iter`
    /// does not have the tag applied to it.
    func getToggledTags(toggledOn toggled_on: Bool) -> SListRef! {
        let rv = gtk_text_iter_get_toggled_tags(cast(text_iter_ptr), gboolean(toggled_on ? 1 : 0))
        return cast(rv.map { SListRef($0) })
    }

    /// Returns the number of bytes from the start of the
    /// line to the given `iter`, not counting bytes that
    /// are invisible due to tags with the “invisible” flag
    /// toggled on.
    func getVisibleLineIndex() -> CInt {
        let rv = gtk_text_iter_get_visible_line_index(cast(text_iter_ptr))
        return CInt(rv)
    }

    /// Returns the offset in characters from the start of the
    /// line to the given `iter`, not counting characters that
    /// are invisible due to tags with the “invisible” flag
    /// toggled on.
    func getVisibleLineOffset() -> CInt {
        let rv = gtk_text_iter_get_visible_line_offset(cast(text_iter_ptr))
        return CInt(rv)
    }

    /// Like gtk_text_iter_get_slice(), but invisible text is not included.
    /// Invisible text is usually invisible because a `GtkTextTag` with the
    /// “invisible” attribute turned on has been applied to it.
    func getVisibleSlice(end: TextIterProtocol) -> String! {
        let rv = gtk_text_iter_get_visible_slice(cast(text_iter_ptr), cast(end.ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Like gtk_text_iter_get_text(), but invisible text is not included.
    /// Invisible text is usually invisible because a `GtkTextTag` with the
    /// “invisible” attribute turned on has been applied to it.
    func getVisibleText(end: TextIterProtocol) -> String! {
        let rv = gtk_text_iter_get_visible_text(cast(text_iter_ptr), cast(end.ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns `true` if `iter` points to a character that is part of a range tagged
    /// with `tag`. See also gtk_text_iter_starts_tag() and gtk_text_iter_ends_tag().
    func has(tag: TextTagProtocol) -> Bool {
        let rv = gtk_text_iter_has_tag(cast(text_iter_ptr), cast(tag.ptr))
        return Bool(rv != 0)
    }

    /// Checks whether `iter` falls in the range [`start`, `end`).
    /// `start` and `end` must be in ascending order.
    func inRange(start: TextIterProtocol, end: TextIterProtocol) -> Bool {
        let rv = gtk_text_iter_in_range(cast(text_iter_ptr), cast(start.ptr), cast(end.ptr))
        return Bool(rv != 0)
    }

    /// Determines whether `iter` is inside a sentence (as opposed to in
    /// between two sentences, e.g. after a period and before the first
    /// letter of the next sentence).  Sentence boundaries are determined
    /// by Pango and should be correct for nearly any language (if not, the
    /// correct fix would be to the Pango text boundary algorithms).
    func insideSentence() -> Bool {
        let rv = gtk_text_iter_inside_sentence(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Determines whether the character pointed by `iter` is part of a
    /// natural-language word (as opposed to say inside some whitespace).  Word
    /// breaks are determined by Pango and should be correct for nearly any language
    /// (if not, the correct fix would be to the Pango word break algorithms).
    /// 
    /// Note that if gtk_text_iter_starts_word() returns `true`, then this function
    /// returns `true` too, since `iter` points to the first character of the word.
    func insideWord() -> Bool {
        let rv = gtk_text_iter_inside_word(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Swaps the value of `first` and `second` if `second` comes before
    /// `first` in the buffer. That is, ensures that `first` and `second` are
    /// in sequence. Most text buffer functions that take a range call this
    /// automatically on your behalf, so there’s no real reason to call it yourself
    /// in those cases. There are some exceptions, such as gtk_text_iter_in_range(),
    /// that expect a pre-sorted range.
    func order(second: TextIterProtocol) {
        gtk_text_iter_order(cast(text_iter_ptr), cast(second.ptr))
    
    }

    /// Moves iterator `iter` to the start of the line `line_number`.  If
    /// `line_number` is negative or larger than the number of lines in the
    /// buffer, moves `iter` to the start of the last line in the buffer.
    func setLine(lineNumber line_number: CInt) {
        gtk_text_iter_set_line(cast(text_iter_ptr), gint(line_number))
    
    }

    /// Same as gtk_text_iter_set_line_offset(), but works with a
    /// byte index. The given byte index must be at
    /// the start of a character, it can’t be in the middle of a UTF-8
    /// encoded character.
    func setLineIndex(byteOnLine byte_on_line: CInt) {
        gtk_text_iter_set_line_index(cast(text_iter_ptr), gint(byte_on_line))
    
    }

    /// Moves `iter` within a line, to a new character
    /// (not byte) offset. The given character offset must be less than or
    /// equal to the number of characters in the line; if equal, `iter`
    /// moves to the start of the next line. See
    /// gtk_text_iter_set_line_index() if you have a byte index rather than
    /// a character offset.
    func setLineOffset(charOnLine char_on_line: CInt) {
        gtk_text_iter_set_line_offset(cast(text_iter_ptr), gint(char_on_line))
    
    }

    /// Sets `iter` to point to `char_offset`. `char_offset` counts from the start
    /// of the entire text buffer, starting with 0.
    func setOffset(charOffset char_offset: CInt) {
        gtk_text_iter_set_offset(cast(text_iter_ptr), gint(char_offset))
    
    }

    /// Like gtk_text_iter_set_line_index(), but the index is in visible
    /// bytes, i.e. text with a tag making it invisible is not counted
    /// in the index.
    func setVisibleLineIndex(byteOnLine byte_on_line: CInt) {
        gtk_text_iter_set_visible_line_index(cast(text_iter_ptr), gint(byte_on_line))
    
    }

    /// Like gtk_text_iter_set_line_offset(), but the offset is in visible
    /// characters, i.e. text with a tag making it invisible is not
    /// counted in the offset.
    func setVisibleLineOffset(charOnLine char_on_line: CInt) {
        gtk_text_iter_set_visible_line_offset(cast(text_iter_ptr), gint(char_on_line))
    
    }

    /// Returns `true` if `iter` begins a paragraph,
    /// i.e. if gtk_text_iter_get_line_offset() would return 0.
    /// However this function is potentially more efficient than
    /// gtk_text_iter_get_line_offset() because it doesn’t have to compute
    /// the offset, it just has to see whether it’s 0.
    func startsLine() -> Bool {
        let rv = gtk_text_iter_starts_line(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Determines whether `iter` begins a sentence.  Sentence boundaries are
    /// determined by Pango and should be correct for nearly any language
    /// (if not, the correct fix would be to the Pango text boundary
    /// algorithms).
    func startsSentence() -> Bool {
        let rv = gtk_text_iter_starts_sentence(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// Returns `true` if `tag` is toggled on at exactly this point. If `tag`
    /// is `nil`, returns `true` if any tag is toggled on at this point.
    /// 
    /// Note that if gtk_text_iter_starts_tag() returns `true`, it means that `iter` is
    /// at the beginning of the tagged range, and that the
    /// character at `iter` is inside the tagged range. In other
    /// words, unlike gtk_text_iter_ends_tag(), if gtk_text_iter_starts_tag() returns
    /// `true`, gtk_text_iter_has_tag() will also return `true` for the same
    /// parameters.
    func starts(tag: TextTagProtocol) -> Bool {
        let rv = gtk_text_iter_starts_tag(cast(text_iter_ptr), cast(tag.ptr))
        return Bool(rv != 0)
    }

    /// Determines whether `iter` begins a natural-language word.  Word
    /// breaks are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    func startsWord() -> Bool {
        let rv = gtk_text_iter_starts_word(cast(text_iter_ptr))
        return Bool(rv != 0)
    }

    /// This is equivalent to (gtk_text_iter_starts_tag() ||
    /// gtk_text_iter_ends_tag()), i.e. it tells you whether a range with
    /// `tag` applied to it begins or ends at `iter`.
    func toggles(tag: TextTagProtocol) -> Bool {
        let rv = gtk_text_iter_toggles_tag(cast(text_iter_ptr), cast(tag.ptr))
        return Bool(rv != 0)
    }
    /// Returns the `GtkTextBuffer` this iterator is associated with.
    var buffer: UnsafeMutablePointer<GtkTextBuffer>! {
        /// Returns the `GtkTextBuffer` this iterator is associated with.
        get {
            let rv = gtk_text_iter_get_buffer(cast(text_iter_ptr))
            return cast(rv)
        }
    }

    /// Returns the number of bytes in the line containing `iter`,
    /// including the paragraph delimiters.
    var bytesInLine: CInt {
        /// Returns the number of bytes in the line containing `iter`,
        /// including the paragraph delimiters.
        get {
            let rv = gtk_text_iter_get_bytes_in_line(cast(text_iter_ptr))
            return CInt(rv)
        }
    }

    /// The Unicode character at this iterator is returned.  (Equivalent to
    /// operator* on a C++ iterator.)  If the element at this iterator is a
    /// non-character element, such as an image embedded in the buffer, the
    /// Unicode “unknown” character 0xFFFC is returned. If invoked on
    /// the end iterator, zero is returned; zero is not a valid Unicode character.
    /// So you can write a loop which ends when gtk_text_iter_get_char()
    /// returns 0.
    var char: gunichar {
        /// The Unicode character at this iterator is returned.  (Equivalent to
        /// operator* on a C++ iterator.)  If the element at this iterator is a
        /// non-character element, such as an image embedded in the buffer, the
        /// Unicode “unknown” character 0xFFFC is returned. If invoked on
        /// the end iterator, zero is returned; zero is not a valid Unicode character.
        /// So you can write a loop which ends when gtk_text_iter_get_char()
        /// returns 0.
        get {
            let rv = gtk_text_iter_get_char(cast(text_iter_ptr))
            return rv
        }
    }

    /// Returns the number of characters in the line containing `iter`,
    /// including the paragraph delimiters.
    var charsInLine: CInt {
        /// Returns the number of characters in the line containing `iter`,
        /// including the paragraph delimiters.
        get {
            let rv = gtk_text_iter_get_chars_in_line(cast(text_iter_ptr))
            return CInt(rv)
        }
    }

    /// If the location at `iter` contains a child anchor, the
    /// anchor is returned (with no new reference count added). Otherwise,
    /// `nil` is returned.
    var childAnchor: UnsafeMutablePointer<GtkTextChildAnchor>! {
        /// If the location at `iter` contains a child anchor, the
        /// anchor is returned (with no new reference count added). Otherwise,
        /// `nil` is returned.
        get {
            let rv = gtk_text_iter_get_child_anchor(cast(text_iter_ptr))
            return cast(rv)
        }
    }

    /// See gtk_text_iter_forward_cursor_position() or `PangoLogAttr` or
    /// pango_break() for details on what a cursor position is.
    var isCursorPosition: Bool {
        /// See gtk_text_iter_forward_cursor_position() or `PangoLogAttr` or
        /// pango_break() for details on what a cursor position is.
        get {
            let rv = gtk_text_iter_is_cursor_position(cast(text_iter_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns `true` if `iter` is the end iterator, i.e. one past the last
    /// dereferenceable iterator in the buffer. gtk_text_iter_is_end() is
    /// the most efficient way to check whether an iterator is the end
    /// iterator.
    var isEnd: Bool {
        /// Returns `true` if `iter` is the end iterator, i.e. one past the last
        /// dereferenceable iterator in the buffer. gtk_text_iter_is_end() is
        /// the most efficient way to check whether an iterator is the end
        /// iterator.
        get {
            let rv = gtk_text_iter_is_end(cast(text_iter_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns `true` if `iter` is the first iterator in the buffer, that is
    /// if `iter` has a character offset of 0.
    var isStart: Bool {
        /// Returns `true` if `iter` is the first iterator in the buffer, that is
        /// if `iter` has a character offset of 0.
        get {
            let rv = gtk_text_iter_is_start(cast(text_iter_ptr))
            return Bool(rv != 0)
        }
    }

    /// A convenience wrapper around gtk_text_iter_get_attributes(),
    /// which returns the language in effect at `iter`. If no tags affecting
    /// language apply to `iter`, the return value is identical to that of
    /// gtk_get_default_language().
    var language: UnsafeMutablePointer<PangoLanguage>! {
        /// A convenience wrapper around gtk_text_iter_get_attributes(),
        /// which returns the language in effect at `iter`. If no tags affecting
        /// language apply to `iter`, the return value is identical to that of
        /// gtk_get_default_language().
        get {
            let rv = gtk_text_iter_get_language(cast(text_iter_ptr))
            return cast(rv)
        }
    }

    /// Returns the line number containing the iterator. Lines in
    /// a `GtkTextBuffer` are numbered beginning with 0 for the first
    /// line in the buffer.
    var line: CInt {
        /// Returns the line number containing the iterator. Lines in
        /// a `GtkTextBuffer` are numbered beginning with 0 for the first
        /// line in the buffer.
        get {
            let rv = gtk_text_iter_get_line(cast(text_iter_ptr))
            return CInt(rv)
        }
        /// Moves iterator `iter` to the start of the line `line_number`.  If
        /// `line_number` is negative or larger than the number of lines in the
        /// buffer, moves `iter` to the start of the last line in the buffer.
        nonmutating set {
            gtk_text_iter_set_line(cast(text_iter_ptr), gint(newValue))
        }
    }

    /// Returns the byte index of the iterator, counting
    /// from the start of a newline-terminated line.
    /// Remember that `GtkTextBuffer` encodes text in
    /// UTF-8, and that characters can require a variable
    /// number of bytes to represent.
    var lineIndex: CInt {
        /// Returns the byte index of the iterator, counting
        /// from the start of a newline-terminated line.
        /// Remember that `GtkTextBuffer` encodes text in
        /// UTF-8, and that characters can require a variable
        /// number of bytes to represent.
        get {
            let rv = gtk_text_iter_get_line_index(cast(text_iter_ptr))
            return CInt(rv)
        }
        /// Same as gtk_text_iter_set_line_offset(), but works with a
        /// byte index. The given byte index must be at
        /// the start of a character, it can’t be in the middle of a UTF-8
        /// encoded character.
        nonmutating set {
            gtk_text_iter_set_line_index(cast(text_iter_ptr), gint(newValue))
        }
    }

    /// Returns the character offset of the iterator,
    /// counting from the start of a newline-terminated line.
    /// The first character on the line has offset 0.
    var lineOffset: CInt {
        /// Returns the character offset of the iterator,
        /// counting from the start of a newline-terminated line.
        /// The first character on the line has offset 0.
        get {
            let rv = gtk_text_iter_get_line_offset(cast(text_iter_ptr))
            return CInt(rv)
        }
        /// Moves `iter` within a line, to a new character
        /// (not byte) offset. The given character offset must be less than or
        /// equal to the number of characters in the line; if equal, `iter`
        /// moves to the start of the next line. See
        /// gtk_text_iter_set_line_index() if you have a byte index rather than
        /// a character offset.
        nonmutating set {
            gtk_text_iter_set_line_offset(cast(text_iter_ptr), gint(newValue))
        }
    }

    /// Returns a list of all `GtkTextMark` at this location. Because marks
    /// are not iterable (they don’t take up any "space" in the buffer,
    /// they are just marks in between iterable locations), multiple marks
    /// can exist in the same place. The returned list is not in any
    /// meaningful order.
    var marks: SListRef! {
        /// Returns a list of all `GtkTextMark` at this location. Because marks
        /// are not iterable (they don’t take up any "space" in the buffer,
        /// they are just marks in between iterable locations), multiple marks
        /// can exist in the same place. The returned list is not in any
        /// meaningful order.
        get {
            let rv = gtk_text_iter_get_marks(cast(text_iter_ptr))
            return cast(rv.map { SListRef($0) })
        }
    }

    /// Returns the character offset of an iterator.
    /// Each character in a `GtkTextBuffer` has an offset,
    /// starting with 0 for the first character in the buffer.
    /// Use gtk_text_buffer_get_iter_at_offset() to convert an
    /// offset back into an iterator.
    var offset: CInt {
        /// Returns the character offset of an iterator.
        /// Each character in a `GtkTextBuffer` has an offset,
        /// starting with 0 for the first character in the buffer.
        /// Use gtk_text_buffer_get_iter_at_offset() to convert an
        /// offset back into an iterator.
        get {
            let rv = gtk_text_iter_get_offset(cast(text_iter_ptr))
            return CInt(rv)
        }
        /// Sets `iter` to point to `char_offset`. `char_offset` counts from the start
        /// of the entire text buffer, starting with 0.
        nonmutating set {
            gtk_text_iter_set_offset(cast(text_iter_ptr), gint(newValue))
        }
    }

    /// If the element at `iter` is a pixbuf, the pixbuf is returned
    /// (with no new reference count added). Otherwise,
    /// `nil` is returned.
    var pixbuf: UnsafeMutablePointer<GdkPixbuf>! {
        /// If the element at `iter` is a pixbuf, the pixbuf is returned
        /// (with no new reference count added). Otherwise,
        /// `nil` is returned.
        get {
            let rv = gtk_text_iter_get_pixbuf(cast(text_iter_ptr))
            return cast(rv)
        }
    }

    /// Returns a list of tags that apply to `iter`, in ascending order of
    /// priority (highest-priority tags are last). The `GtkTextTag` in the
    /// list don’t have a reference added, but you have to free the list
    /// itself.
    var tags: SListRef! {
        /// Returns a list of tags that apply to `iter`, in ascending order of
        /// priority (highest-priority tags are last). The `GtkTextTag` in the
        /// list don’t have a reference added, but you have to free the list
        /// itself.
        get {
            let rv = gtk_text_iter_get_tags(cast(text_iter_ptr))
            return cast(rv.map { SListRef($0) })
        }
    }

    /// Returns the number of bytes from the start of the
    /// line to the given `iter`, not counting bytes that
    /// are invisible due to tags with the “invisible” flag
    /// toggled on.
    var visibleLineIndex: CInt {
        /// Returns the number of bytes from the start of the
        /// line to the given `iter`, not counting bytes that
        /// are invisible due to tags with the “invisible” flag
        /// toggled on.
        get {
            let rv = gtk_text_iter_get_visible_line_index(cast(text_iter_ptr))
            return CInt(rv)
        }
        /// Like gtk_text_iter_set_line_index(), but the index is in visible
        /// bytes, i.e. text with a tag making it invisible is not counted
        /// in the index.
        nonmutating set {
            gtk_text_iter_set_visible_line_index(cast(text_iter_ptr), gint(newValue))
        }
    }

    /// Returns the offset in characters from the start of the
    /// line to the given `iter`, not counting characters that
    /// are invisible due to tags with the “invisible” flag
    /// toggled on.
    var visibleLineOffset: CInt {
        /// Returns the offset in characters from the start of the
        /// line to the given `iter`, not counting characters that
        /// are invisible due to tags with the “invisible” flag
        /// toggled on.
        get {
            let rv = gtk_text_iter_get_visible_line_offset(cast(text_iter_ptr))
            return CInt(rv)
        }
        /// Like gtk_text_iter_set_line_offset(), but the offset is in visible
        /// characters, i.e. text with a tag making it invisible is not
        /// counted in the offset.
        nonmutating set {
            gtk_text_iter_set_visible_line_offset(cast(text_iter_ptr), gint(newValue))
        }
    }
}



// MARK: - TextMarkClass Record

/// The `TextMarkClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextMarkClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextMarkClass`.
/// Alternatively, use `TextMarkClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextMarkClassProtocol {
    /// Untyped pointer to the underlying `GtkTextMarkClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextMarkClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextMarkClass> { get }
}

/// The `TextMarkClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextMarkClass` instance.
/// It exposes methods that can operate on this data type through `TextMarkClassProtocol` conformance.
/// Use `TextMarkClassRef` only as an `unowned` reference to an existing `GtkTextMarkClass` instance.
///

public struct TextMarkClassRef: TextMarkClassProtocol {
    /// Untyped pointer to the underlying `GtkTextMarkClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextMarkClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextMarkClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextMarkClassProtocol`
    init<T: TextMarkClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextMarkClass` type acts as an owner of an underlying `GtkTextMarkClass` instance.
/// It provides the methods that can operate on this data type through `TextMarkClassProtocol` conformance.
/// Use `TextMarkClass` as a strong reference or owner of a `GtkTextMarkClass` instance.
///

open class TextMarkClass: TextMarkClassProtocol {
    /// Untyped pointer to the underlying `GtkTextMarkClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextMarkClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextMarkClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextMarkClassProtocol`
    /// `GtkTextMarkClass` does not allow reference counting.
    public convenience init<T: TextMarkClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextMarkClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextMarkClass`.
    deinit {
        // no reference counting for GtkTextMarkClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextMarkClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextMarkClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextMarkClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextMarkClass>(opaquePointer))
    }



}

// MARK: - no TextMarkClass properties

// MARK: - no signals


public extension TextMarkClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextMarkClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextMarkClass> { return ptr.assumingMemoryBound(to: GtkTextMarkClass.self) }

}



// MARK: - TextTagClass Record

/// The `TextTagClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextTagClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextTagClass`.
/// Alternatively, use `TextTagClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextTagClassProtocol {
    /// Untyped pointer to the underlying `GtkTextTagClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextTagClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextTagClass> { get }
}

/// The `TextTagClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextTagClass` instance.
/// It exposes methods that can operate on this data type through `TextTagClassProtocol` conformance.
/// Use `TextTagClassRef` only as an `unowned` reference to an existing `GtkTextTagClass` instance.
///

public struct TextTagClassRef: TextTagClassProtocol {
    /// Untyped pointer to the underlying `GtkTextTagClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextTagClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextTagClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextTagClassProtocol`
    init<T: TextTagClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextTagClass` type acts as an owner of an underlying `GtkTextTagClass` instance.
/// It provides the methods that can operate on this data type through `TextTagClassProtocol` conformance.
/// Use `TextTagClass` as a strong reference or owner of a `GtkTextTagClass` instance.
///

open class TextTagClass: TextTagClassProtocol {
    /// Untyped pointer to the underlying `GtkTextTagClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextTagClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextTagClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextTagClassProtocol`
    /// `GtkTextTagClass` does not allow reference counting.
    public convenience init<T: TextTagClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextTagClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextTagClass`.
    deinit {
        // no reference counting for GtkTextTagClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextTagClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextTagClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextTagClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextTagClass>(opaquePointer))
    }



}

// MARK: - no TextTagClass properties

// MARK: - no signals


public extension TextTagClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextTagClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextTagClass> { return ptr.assumingMemoryBound(to: GtkTextTagClass.self) }

}



// MARK: - TextTagPrivate Record

/// The `TextTagPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkTextTagPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextTagPrivate`.
/// Alternatively, use `TextTagPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextTagPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextTagPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextTagPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTextTagPrivate> { get }
}

/// The `TextTagPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkTextTagPrivate` instance.
/// It exposes methods that can operate on this data type through `TextTagPrivateProtocol` conformance.
/// Use `TextTagPrivateRef` only as an `unowned` reference to an existing `GtkTextTagPrivate` instance.
///

public struct TextTagPrivateRef: TextTagPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextTagPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextTagPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextTagPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextTagPrivateProtocol`
    init<T: TextTagPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextTagPrivate` type acts as an owner of an underlying `GtkTextTagPrivate` instance.
/// It provides the methods that can operate on this data type through `TextTagPrivateProtocol` conformance.
/// Use `TextTagPrivate` as a strong reference or owner of a `GtkTextTagPrivate` instance.
///

open class TextTagPrivate: TextTagPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextTagPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextTagPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextTagPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextTagPrivateProtocol`
    /// `GtkTextTagPrivate` does not allow reference counting.
    public convenience init<T: TextTagPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextTagPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextTagPrivate`.
    deinit {
        // no reference counting for GtkTextTagPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextTagPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextTagPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextTagPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextTagPrivate>(opaquePointer))
    }



}

// MARK: - no TextTagPrivate properties

// MARK: - no signals


public extension TextTagPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextTagPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTextTagPrivate> { return ptr.assumingMemoryBound(to: GtkTextTagPrivate.self) }

}



// MARK: - TextTagTableClass Record

/// The `TextTagTableClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextTagTableClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextTagTableClass`.
/// Alternatively, use `TextTagTableClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextTagTableClassProtocol {
    /// Untyped pointer to the underlying `GtkTextTagTableClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextTagTableClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextTagTableClass> { get }
}

/// The `TextTagTableClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextTagTableClass` instance.
/// It exposes methods that can operate on this data type through `TextTagTableClassProtocol` conformance.
/// Use `TextTagTableClassRef` only as an `unowned` reference to an existing `GtkTextTagTableClass` instance.
///

public struct TextTagTableClassRef: TextTagTableClassProtocol {
    /// Untyped pointer to the underlying `GtkTextTagTableClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextTagTableClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextTagTableClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextTagTableClassProtocol`
    init<T: TextTagTableClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTableClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTableClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTableClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTableClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTableClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextTagTableClass` type acts as an owner of an underlying `GtkTextTagTableClass` instance.
/// It provides the methods that can operate on this data type through `TextTagTableClassProtocol` conformance.
/// Use `TextTagTableClass` as a strong reference or owner of a `GtkTextTagTableClass` instance.
///

open class TextTagTableClass: TextTagTableClassProtocol {
    /// Untyped pointer to the underlying `GtkTextTagTableClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextTagTableClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextTagTableClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextTagTableClassProtocol`
    /// `GtkTextTagTableClass` does not allow reference counting.
    public convenience init<T: TextTagTableClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextTagTableClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextTagTableClass`.
    deinit {
        // no reference counting for GtkTextTagTableClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTableClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextTagTableClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTableClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextTagTableClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTableClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextTagTableClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTableClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextTagTableClass>(opaquePointer))
    }



}

// MARK: - no TextTagTableClass properties

// MARK: - no signals


public extension TextTagTableClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextTagTableClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextTagTableClass> { return ptr.assumingMemoryBound(to: GtkTextTagTableClass.self) }

}



// MARK: - TextTagTablePrivate Record

/// The `TextTagTablePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkTextTagTablePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextTagTablePrivate`.
/// Alternatively, use `TextTagTablePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextTagTablePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextTagTablePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextTagTablePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTextTagTablePrivate> { get }
}

/// The `TextTagTablePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkTextTagTablePrivate` instance.
/// It exposes methods that can operate on this data type through `TextTagTablePrivateProtocol` conformance.
/// Use `TextTagTablePrivateRef` only as an `unowned` reference to an existing `GtkTextTagTablePrivate` instance.
///

public struct TextTagTablePrivateRef: TextTagTablePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextTagTablePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextTagTablePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextTagTablePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextTagTablePrivateProtocol`
    init<T: TextTagTablePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTablePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTablePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTablePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTablePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTablePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextTagTablePrivate` type acts as an owner of an underlying `GtkTextTagTablePrivate` instance.
/// It provides the methods that can operate on this data type through `TextTagTablePrivateProtocol` conformance.
/// Use `TextTagTablePrivate` as a strong reference or owner of a `GtkTextTagTablePrivate` instance.
///

open class TextTagTablePrivate: TextTagTablePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextTagTablePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextTagTablePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextTagTablePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextTagTablePrivateProtocol`
    /// `GtkTextTagTablePrivate` does not allow reference counting.
    public convenience init<T: TextTagTablePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextTagTablePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextTagTablePrivate`.
    deinit {
        // no reference counting for GtkTextTagTablePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTablePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextTagTablePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTablePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextTagTablePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTablePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextTagTablePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagTablePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextTagTablePrivate>(opaquePointer))
    }



}

// MARK: - no TextTagTablePrivate properties

// MARK: - no signals


public extension TextTagTablePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextTagTablePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTextTagTablePrivate> { return ptr.assumingMemoryBound(to: GtkTextTagTablePrivate.self) }

}



// MARK: - TextViewAccessibleClass Record

/// The `TextViewAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextViewAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextViewAccessibleClass`.
/// Alternatively, use `TextViewAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextViewAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkTextViewAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextViewAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextViewAccessibleClass> { get }
}

/// The `TextViewAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextViewAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `TextViewAccessibleClassProtocol` conformance.
/// Use `TextViewAccessibleClassRef` only as an `unowned` reference to an existing `GtkTextViewAccessibleClass` instance.
///

public struct TextViewAccessibleClassRef: TextViewAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkTextViewAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextViewAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextViewAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextViewAccessibleClassProtocol`
    init<T: TextViewAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextViewAccessibleClass` type acts as an owner of an underlying `GtkTextViewAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `TextViewAccessibleClassProtocol` conformance.
/// Use `TextViewAccessibleClass` as a strong reference or owner of a `GtkTextViewAccessibleClass` instance.
///

open class TextViewAccessibleClass: TextViewAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkTextViewAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextViewAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextViewAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextViewAccessibleClassProtocol`
    /// `GtkTextViewAccessibleClass` does not allow reference counting.
    public convenience init<T: TextViewAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextViewAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextViewAccessibleClass`.
    deinit {
        // no reference counting for GtkTextViewAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextViewAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextViewAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextViewAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextViewAccessibleClass>(opaquePointer))
    }



}

// MARK: - no TextViewAccessibleClass properties

// MARK: - no signals


public extension TextViewAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextViewAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextViewAccessibleClass> { return ptr.assumingMemoryBound(to: GtkTextViewAccessibleClass.self) }

}



// MARK: - TextViewAccessiblePrivate Record

/// The `TextViewAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkTextViewAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextViewAccessiblePrivate`.
/// Alternatively, use `TextViewAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextViewAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextViewAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextViewAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTextViewAccessiblePrivate> { get }
}

/// The `TextViewAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkTextViewAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `TextViewAccessiblePrivateProtocol` conformance.
/// Use `TextViewAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkTextViewAccessiblePrivate` instance.
///

public struct TextViewAccessiblePrivateRef: TextViewAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextViewAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextViewAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextViewAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextViewAccessiblePrivateProtocol`
    init<T: TextViewAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextViewAccessiblePrivate` type acts as an owner of an underlying `GtkTextViewAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `TextViewAccessiblePrivateProtocol` conformance.
/// Use `TextViewAccessiblePrivate` as a strong reference or owner of a `GtkTextViewAccessiblePrivate` instance.
///

open class TextViewAccessiblePrivate: TextViewAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextViewAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextViewAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextViewAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextViewAccessiblePrivateProtocol`
    /// `GtkTextViewAccessiblePrivate` does not allow reference counting.
    public convenience init<T: TextViewAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextViewAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextViewAccessiblePrivate`.
    deinit {
        // no reference counting for GtkTextViewAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextViewAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextViewAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextViewAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextViewAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no TextViewAccessiblePrivate properties

// MARK: - no signals


public extension TextViewAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextViewAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTextViewAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkTextViewAccessiblePrivate.self) }

}



// MARK: - TextViewClass Record

/// The `TextViewClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextViewClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextViewClass`.
/// Alternatively, use `TextViewClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextViewClassProtocol {
    /// Untyped pointer to the underlying `GtkTextViewClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextViewClass> { get }
}

/// The `TextViewClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextViewClass` instance.
/// It exposes methods that can operate on this data type through `TextViewClassProtocol` conformance.
/// Use `TextViewClassRef` only as an `unowned` reference to an existing `GtkTextViewClass` instance.
///

public struct TextViewClassRef: TextViewClassProtocol {
    /// Untyped pointer to the underlying `GtkTextViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextViewClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextViewClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextViewClassProtocol`
    init<T: TextViewClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextViewClass` type acts as an owner of an underlying `GtkTextViewClass` instance.
/// It provides the methods that can operate on this data type through `TextViewClassProtocol` conformance.
/// Use `TextViewClass` as a strong reference or owner of a `GtkTextViewClass` instance.
///

open class TextViewClass: TextViewClassProtocol {
    /// Untyped pointer to the underlying `GtkTextViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextViewClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextViewClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextViewClassProtocol`
    /// `GtkTextViewClass` does not allow reference counting.
    public convenience init<T: TextViewClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextViewClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextViewClass`.
    deinit {
        // no reference counting for GtkTextViewClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextViewClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextViewClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextViewClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextViewClass>(opaquePointer))
    }



}

// MARK: - no TextViewClass properties

// MARK: - no signals


public extension TextViewClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextViewClass> { return ptr.assumingMemoryBound(to: GtkTextViewClass.self) }

}



// MARK: - TextViewPrivate Record

/// The `TextViewPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkTextViewPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextViewPrivate`.
/// Alternatively, use `TextViewPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextViewPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextViewPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTextViewPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTextViewPrivate> { get }
}

/// The `TextViewPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkTextViewPrivate` instance.
/// It exposes methods that can operate on this data type through `TextViewPrivateProtocol` conformance.
/// Use `TextViewPrivateRef` only as an `unowned` reference to an existing `GtkTextViewPrivate` instance.
///

public struct TextViewPrivateRef: TextViewPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextViewPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TextViewPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTextViewPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TextViewPrivateProtocol`
    init<T: TextViewPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextViewPrivate` type acts as an owner of an underlying `GtkTextViewPrivate` instance.
/// It provides the methods that can operate on this data type through `TextViewPrivateProtocol` conformance.
/// Use `TextViewPrivate` as a strong reference or owner of a `GtkTextViewPrivate` instance.
///

open class TextViewPrivate: TextViewPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTextViewPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TextViewPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkTextViewPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TextViewPrivateProtocol`
    /// `GtkTextViewPrivate` does not allow reference counting.
    public convenience init<T: TextViewPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTextViewPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTextViewPrivate`.
    deinit {
        // no reference counting for GtkTextViewPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTextViewPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTextViewPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTextViewPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTextViewPrivate>(opaquePointer))
    }



}

// MARK: - no TextViewPrivate properties

// MARK: - no signals


public extension TextViewPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextViewPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTextViewPrivate> { return ptr.assumingMemoryBound(to: GtkTextViewPrivate.self) }

}



// MARK: - ThemeEngine Record

/// The `ThemeEngineProtocol` protocol exposes the methods and properties of an underlying `GtkThemeEngine` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ThemeEngine`.
/// Alternatively, use `ThemeEngineRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ThemeEngineProtocol {
    /// Untyped pointer to the underlying `GtkThemeEngine` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkThemeEngine` instance.
    var _ptr: UnsafeMutablePointer<GtkThemeEngine> { get }
}

/// The `ThemeEngineRef` type acts as a lightweight Swift reference to an underlying `GtkThemeEngine` instance.
/// It exposes methods that can operate on this data type through `ThemeEngineProtocol` conformance.
/// Use `ThemeEngineRef` only as an `unowned` reference to an existing `GtkThemeEngine` instance.
///

public struct ThemeEngineRef: ThemeEngineProtocol {
    /// Untyped pointer to the underlying `GtkThemeEngine` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ThemeEngineRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkThemeEngine>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ThemeEngineProtocol`
    init<T: ThemeEngineProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ThemeEngine` type acts as an owner of an underlying `GtkThemeEngine` instance.
/// It provides the methods that can operate on this data type through `ThemeEngineProtocol` conformance.
/// Use `ThemeEngine` as a strong reference or owner of a `GtkThemeEngine` instance.
///

open class ThemeEngine: ThemeEngineProtocol {
    /// Untyped pointer to the underlying `GtkThemeEngine` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ThemeEngine` instance.
    public init(_ op: UnsafeMutablePointer<GtkThemeEngine>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ThemeEngineProtocol`
    /// `GtkThemeEngine` does not allow reference counting.
    public convenience init<T: ThemeEngineProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkThemeEngine, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkThemeEngine`.
    deinit {
        // no reference counting for GtkThemeEngine, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkThemeEngine.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkThemeEngine.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkThemeEngine.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemeEngineProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkThemeEngine>(opaquePointer))
    }



}

// MARK: - no ThemeEngine properties

// MARK: - no signals


public extension ThemeEngineProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkThemeEngine` instance.
    var _ptr: UnsafeMutablePointer<GtkThemeEngine> { return ptr.assumingMemoryBound(to: GtkThemeEngine.self) }

}



// MARK: - ThemingEngineClass Record

/// The `ThemingEngineClassProtocol` protocol exposes the methods and properties of an underlying `GtkThemingEngineClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ThemingEngineClass`.
/// Alternatively, use `ThemingEngineClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Base class for theming engines.
public protocol ThemingEngineClassProtocol {
    /// Untyped pointer to the underlying `GtkThemingEngineClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkThemingEngineClass` instance.
    var _ptr: UnsafeMutablePointer<GtkThemingEngineClass> { get }
}

/// The `ThemingEngineClassRef` type acts as a lightweight Swift reference to an underlying `GtkThemingEngineClass` instance.
/// It exposes methods that can operate on this data type through `ThemingEngineClassProtocol` conformance.
/// Use `ThemingEngineClassRef` only as an `unowned` reference to an existing `GtkThemingEngineClass` instance.
///
/// Base class for theming engines.
public struct ThemingEngineClassRef: ThemingEngineClassProtocol {
    /// Untyped pointer to the underlying `GtkThemingEngineClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ThemingEngineClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkThemingEngineClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ThemingEngineClassProtocol`
    init<T: ThemingEngineClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEngineClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEngineClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEngineClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEngineClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEngineClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ThemingEngineClass` type acts as an owner of an underlying `GtkThemingEngineClass` instance.
/// It provides the methods that can operate on this data type through `ThemingEngineClassProtocol` conformance.
/// Use `ThemingEngineClass` as a strong reference or owner of a `GtkThemingEngineClass` instance.
///
/// Base class for theming engines.
open class ThemingEngineClass: ThemingEngineClassProtocol {
    /// Untyped pointer to the underlying `GtkThemingEngineClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ThemingEngineClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkThemingEngineClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ThemingEngineClassProtocol`
    /// `GtkThemingEngineClass` does not allow reference counting.
    public convenience init<T: ThemingEngineClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkThemingEngineClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkThemingEngineClass`.
    deinit {
        // no reference counting for GtkThemingEngineClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEngineClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkThemingEngineClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEngineClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkThemingEngineClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEngineClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkThemingEngineClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEngineClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkThemingEngineClass>(opaquePointer))
    }



}

// MARK: - no ThemingEngineClass properties

// MARK: - no signals


public extension ThemingEngineClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkThemingEngineClass` instance.
    var _ptr: UnsafeMutablePointer<GtkThemingEngineClass> { return ptr.assumingMemoryBound(to: GtkThemingEngineClass.self) }

}



// MARK: - ThemingEnginePrivate Record

/// The `ThemingEnginePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkThemingEnginePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ThemingEnginePrivate`.
/// Alternatively, use `ThemingEnginePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ThemingEnginePrivateProtocol {
    /// Untyped pointer to the underlying `GtkThemingEnginePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkThemingEnginePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkThemingEnginePrivate> { get }
}

/// The `ThemingEnginePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkThemingEnginePrivate` instance.
/// It exposes methods that can operate on this data type through `ThemingEnginePrivateProtocol` conformance.
/// Use `ThemingEnginePrivateRef` only as an `unowned` reference to an existing `GtkThemingEnginePrivate` instance.
///

public struct ThemingEnginePrivateRef: ThemingEnginePrivateProtocol {
    /// Untyped pointer to the underlying `GtkThemingEnginePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ThemingEnginePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkThemingEnginePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ThemingEnginePrivateProtocol`
    init<T: ThemingEnginePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEnginePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEnginePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEnginePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEnginePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEnginePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ThemingEnginePrivate` type acts as an owner of an underlying `GtkThemingEnginePrivate` instance.
/// It provides the methods that can operate on this data type through `ThemingEnginePrivateProtocol` conformance.
/// Use `ThemingEnginePrivate` as a strong reference or owner of a `GtkThemingEnginePrivate` instance.
///

open class ThemingEnginePrivate: ThemingEnginePrivateProtocol {
    /// Untyped pointer to the underlying `GtkThemingEnginePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ThemingEnginePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkThemingEnginePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ThemingEnginePrivateProtocol`
    /// `GtkThemingEnginePrivate` does not allow reference counting.
    public convenience init<T: ThemingEnginePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkThemingEnginePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkThemingEnginePrivate`.
    deinit {
        // no reference counting for GtkThemingEnginePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEnginePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkThemingEnginePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEnginePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkThemingEnginePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEnginePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkThemingEnginePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemingEnginePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkThemingEnginePrivate>(opaquePointer))
    }



}

// MARK: - no ThemingEnginePrivate properties

// MARK: - no signals


public extension ThemingEnginePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkThemingEnginePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkThemingEnginePrivate> { return ptr.assumingMemoryBound(to: GtkThemingEnginePrivate.self) }

}



// MARK: - ToggleActionClass Record

/// The `ToggleActionClassProtocol` protocol exposes the methods and properties of an underlying `GtkToggleActionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToggleActionClass`.
/// Alternatively, use `ToggleActionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToggleActionClassProtocol {
    /// Untyped pointer to the underlying `GtkToggleActionClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToggleActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleActionClass> { get }
}

/// The `ToggleActionClassRef` type acts as a lightweight Swift reference to an underlying `GtkToggleActionClass` instance.
/// It exposes methods that can operate on this data type through `ToggleActionClassProtocol` conformance.
/// Use `ToggleActionClassRef` only as an `unowned` reference to an existing `GtkToggleActionClass` instance.
///

public struct ToggleActionClassRef: ToggleActionClassProtocol {
    /// Untyped pointer to the underlying `GtkToggleActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToggleActionClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToggleActionClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToggleActionClassProtocol`
    init<T: ToggleActionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToggleActionClass` type acts as an owner of an underlying `GtkToggleActionClass` instance.
/// It provides the methods that can operate on this data type through `ToggleActionClassProtocol` conformance.
/// Use `ToggleActionClass` as a strong reference or owner of a `GtkToggleActionClass` instance.
///

open class ToggleActionClass: ToggleActionClassProtocol {
    /// Untyped pointer to the underlying `GtkToggleActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToggleActionClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkToggleActionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToggleActionClassProtocol`
    /// `GtkToggleActionClass` does not allow reference counting.
    public convenience init<T: ToggleActionClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToggleActionClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToggleActionClass`.
    deinit {
        // no reference counting for GtkToggleActionClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToggleActionClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToggleActionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToggleActionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToggleActionClass>(opaquePointer))
    }



}

// MARK: - no ToggleActionClass properties

// MARK: - no signals


public extension ToggleActionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToggleActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleActionClass> { return ptr.assumingMemoryBound(to: GtkToggleActionClass.self) }

}



// MARK: - ToggleActionEntry Record

/// The `ToggleActionEntryProtocol` protocol exposes the methods and properties of an underlying `GtkToggleActionEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToggleActionEntry`.
/// Alternatively, use `ToggleActionEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkToggleActionEntry` structs are used with
/// gtk_action_group_add_toggle_actions() to construct toggle actions.
public protocol ToggleActionEntryProtocol {
    /// Untyped pointer to the underlying `GtkToggleActionEntry` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToggleActionEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleActionEntry> { get }
}

/// The `ToggleActionEntryRef` type acts as a lightweight Swift reference to an underlying `GtkToggleActionEntry` instance.
/// It exposes methods that can operate on this data type through `ToggleActionEntryProtocol` conformance.
/// Use `ToggleActionEntryRef` only as an `unowned` reference to an existing `GtkToggleActionEntry` instance.
///
/// `GtkToggleActionEntry` structs are used with
/// gtk_action_group_add_toggle_actions() to construct toggle actions.
public struct ToggleActionEntryRef: ToggleActionEntryProtocol {
    /// Untyped pointer to the underlying `GtkToggleActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToggleActionEntryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToggleActionEntry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToggleActionEntryProtocol`
    init<T: ToggleActionEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToggleActionEntry` type acts as an owner of an underlying `GtkToggleActionEntry` instance.
/// It provides the methods that can operate on this data type through `ToggleActionEntryProtocol` conformance.
/// Use `ToggleActionEntry` as a strong reference or owner of a `GtkToggleActionEntry` instance.
///
/// `GtkToggleActionEntry` structs are used with
/// gtk_action_group_add_toggle_actions() to construct toggle actions.
open class ToggleActionEntry: ToggleActionEntryProtocol {
    /// Untyped pointer to the underlying `GtkToggleActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToggleActionEntry` instance.
    public init(_ op: UnsafeMutablePointer<GtkToggleActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToggleActionEntryProtocol`
    /// `GtkToggleActionEntry` does not allow reference counting.
    public convenience init<T: ToggleActionEntryProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToggleActionEntry, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToggleActionEntry`.
    deinit {
        // no reference counting for GtkToggleActionEntry, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToggleActionEntry.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToggleActionEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToggleActionEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionEntryProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToggleActionEntry>(opaquePointer))
    }



}

// MARK: - no ToggleActionEntry properties

// MARK: - no signals


public extension ToggleActionEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToggleActionEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleActionEntry> { return ptr.assumingMemoryBound(to: GtkToggleActionEntry.self) }

}



// MARK: - ToggleActionPrivate Record

/// The `ToggleActionPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkToggleActionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToggleActionPrivate`.
/// Alternatively, use `ToggleActionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToggleActionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToggleActionPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToggleActionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleActionPrivate> { get }
}

/// The `ToggleActionPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkToggleActionPrivate` instance.
/// It exposes methods that can operate on this data type through `ToggleActionPrivateProtocol` conformance.
/// Use `ToggleActionPrivateRef` only as an `unowned` reference to an existing `GtkToggleActionPrivate` instance.
///

public struct ToggleActionPrivateRef: ToggleActionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToggleActionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToggleActionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToggleActionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToggleActionPrivateProtocol`
    init<T: ToggleActionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToggleActionPrivate` type acts as an owner of an underlying `GtkToggleActionPrivate` instance.
/// It provides the methods that can operate on this data type through `ToggleActionPrivateProtocol` conformance.
/// Use `ToggleActionPrivate` as a strong reference or owner of a `GtkToggleActionPrivate` instance.
///

open class ToggleActionPrivate: ToggleActionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToggleActionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToggleActionPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkToggleActionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToggleActionPrivateProtocol`
    /// `GtkToggleActionPrivate` does not allow reference counting.
    public convenience init<T: ToggleActionPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToggleActionPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToggleActionPrivate`.
    deinit {
        // no reference counting for GtkToggleActionPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToggleActionPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToggleActionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToggleActionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleActionPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToggleActionPrivate>(opaquePointer))
    }



}

// MARK: - no ToggleActionPrivate properties

// MARK: - no signals


public extension ToggleActionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToggleActionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleActionPrivate> { return ptr.assumingMemoryBound(to: GtkToggleActionPrivate.self) }

}



// MARK: - ToggleButtonAccessibleClass Record

/// The `ToggleButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkToggleButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToggleButtonAccessibleClass`.
/// Alternatively, use `ToggleButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToggleButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkToggleButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToggleButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleButtonAccessibleClass> { get }
}

/// The `ToggleButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkToggleButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ToggleButtonAccessibleClassProtocol` conformance.
/// Use `ToggleButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkToggleButtonAccessibleClass` instance.
///

public struct ToggleButtonAccessibleClassRef: ToggleButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkToggleButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToggleButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToggleButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToggleButtonAccessibleClassProtocol`
    init<T: ToggleButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToggleButtonAccessibleClass` type acts as an owner of an underlying `GtkToggleButtonAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ToggleButtonAccessibleClassProtocol` conformance.
/// Use `ToggleButtonAccessibleClass` as a strong reference or owner of a `GtkToggleButtonAccessibleClass` instance.
///

open class ToggleButtonAccessibleClass: ToggleButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkToggleButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToggleButtonAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkToggleButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToggleButtonAccessibleClassProtocol`
    /// `GtkToggleButtonAccessibleClass` does not allow reference counting.
    public convenience init<T: ToggleButtonAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToggleButtonAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToggleButtonAccessibleClass`.
    deinit {
        // no reference counting for GtkToggleButtonAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToggleButtonAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToggleButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToggleButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToggleButtonAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ToggleButtonAccessibleClass properties

// MARK: - no signals


public extension ToggleButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToggleButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleButtonAccessibleClass> { return ptr.assumingMemoryBound(to: GtkToggleButtonAccessibleClass.self) }

}



// MARK: - ToggleButtonAccessiblePrivate Record

/// The `ToggleButtonAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkToggleButtonAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToggleButtonAccessiblePrivate`.
/// Alternatively, use `ToggleButtonAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToggleButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkToggleButtonAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToggleButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleButtonAccessiblePrivate> { get }
}

/// The `ToggleButtonAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkToggleButtonAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `ToggleButtonAccessiblePrivateProtocol` conformance.
/// Use `ToggleButtonAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkToggleButtonAccessiblePrivate` instance.
///

public struct ToggleButtonAccessiblePrivateRef: ToggleButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkToggleButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToggleButtonAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToggleButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToggleButtonAccessiblePrivateProtocol`
    init<T: ToggleButtonAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToggleButtonAccessiblePrivate` type acts as an owner of an underlying `GtkToggleButtonAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `ToggleButtonAccessiblePrivateProtocol` conformance.
/// Use `ToggleButtonAccessiblePrivate` as a strong reference or owner of a `GtkToggleButtonAccessiblePrivate` instance.
///

open class ToggleButtonAccessiblePrivate: ToggleButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkToggleButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToggleButtonAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkToggleButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToggleButtonAccessiblePrivateProtocol`
    /// `GtkToggleButtonAccessiblePrivate` does not allow reference counting.
    public convenience init<T: ToggleButtonAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToggleButtonAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToggleButtonAccessiblePrivate`.
    deinit {
        // no reference counting for GtkToggleButtonAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToggleButtonAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToggleButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToggleButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToggleButtonAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no ToggleButtonAccessiblePrivate properties

// MARK: - no signals


public extension ToggleButtonAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToggleButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleButtonAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkToggleButtonAccessiblePrivate.self) }

}



// MARK: - ToggleButtonClass Record

/// The `ToggleButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkToggleButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToggleButtonClass`.
/// Alternatively, use `ToggleButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToggleButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkToggleButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToggleButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleButtonClass> { get }
}

/// The `ToggleButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkToggleButtonClass` instance.
/// It exposes methods that can operate on this data type through `ToggleButtonClassProtocol` conformance.
/// Use `ToggleButtonClassRef` only as an `unowned` reference to an existing `GtkToggleButtonClass` instance.
///

public struct ToggleButtonClassRef: ToggleButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkToggleButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToggleButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToggleButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToggleButtonClassProtocol`
    init<T: ToggleButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToggleButtonClass` type acts as an owner of an underlying `GtkToggleButtonClass` instance.
/// It provides the methods that can operate on this data type through `ToggleButtonClassProtocol` conformance.
/// Use `ToggleButtonClass` as a strong reference or owner of a `GtkToggleButtonClass` instance.
///

open class ToggleButtonClass: ToggleButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkToggleButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToggleButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkToggleButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToggleButtonClassProtocol`
    /// `GtkToggleButtonClass` does not allow reference counting.
    public convenience init<T: ToggleButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToggleButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToggleButtonClass`.
    deinit {
        // no reference counting for GtkToggleButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToggleButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToggleButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToggleButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToggleButtonClass>(opaquePointer))
    }



}

// MARK: - no ToggleButtonClass properties

// MARK: - no signals


public extension ToggleButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToggleButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleButtonClass> { return ptr.assumingMemoryBound(to: GtkToggleButtonClass.self) }

}



// MARK: - ToggleButtonPrivate Record

/// The `ToggleButtonPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkToggleButtonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToggleButtonPrivate`.
/// Alternatively, use `ToggleButtonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToggleButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToggleButtonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToggleButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleButtonPrivate> { get }
}

/// The `ToggleButtonPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkToggleButtonPrivate` instance.
/// It exposes methods that can operate on this data type through `ToggleButtonPrivateProtocol` conformance.
/// Use `ToggleButtonPrivateRef` only as an `unowned` reference to an existing `GtkToggleButtonPrivate` instance.
///

public struct ToggleButtonPrivateRef: ToggleButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToggleButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToggleButtonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToggleButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToggleButtonPrivateProtocol`
    init<T: ToggleButtonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToggleButtonPrivate` type acts as an owner of an underlying `GtkToggleButtonPrivate` instance.
/// It provides the methods that can operate on this data type through `ToggleButtonPrivateProtocol` conformance.
/// Use `ToggleButtonPrivate` as a strong reference or owner of a `GtkToggleButtonPrivate` instance.
///

open class ToggleButtonPrivate: ToggleButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToggleButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToggleButtonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkToggleButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToggleButtonPrivateProtocol`
    /// `GtkToggleButtonPrivate` does not allow reference counting.
    public convenience init<T: ToggleButtonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToggleButtonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToggleButtonPrivate`.
    deinit {
        // no reference counting for GtkToggleButtonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToggleButtonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToggleButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToggleButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToggleButtonPrivate>(opaquePointer))
    }



}

// MARK: - no ToggleButtonPrivate properties

// MARK: - no signals


public extension ToggleButtonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToggleButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleButtonPrivate> { return ptr.assumingMemoryBound(to: GtkToggleButtonPrivate.self) }

}



// MARK: - ToggleToolButtonClass Record

/// The `ToggleToolButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkToggleToolButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToggleToolButtonClass`.
/// Alternatively, use `ToggleToolButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToggleToolButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkToggleToolButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToggleToolButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleToolButtonClass> { get }
}

/// The `ToggleToolButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkToggleToolButtonClass` instance.
/// It exposes methods that can operate on this data type through `ToggleToolButtonClassProtocol` conformance.
/// Use `ToggleToolButtonClassRef` only as an `unowned` reference to an existing `GtkToggleToolButtonClass` instance.
///

public struct ToggleToolButtonClassRef: ToggleToolButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkToggleToolButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToggleToolButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToggleToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToggleToolButtonClassProtocol`
    init<T: ToggleToolButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToggleToolButtonClass` type acts as an owner of an underlying `GtkToggleToolButtonClass` instance.
/// It provides the methods that can operate on this data type through `ToggleToolButtonClassProtocol` conformance.
/// Use `ToggleToolButtonClass` as a strong reference or owner of a `GtkToggleToolButtonClass` instance.
///

open class ToggleToolButtonClass: ToggleToolButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkToggleToolButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToggleToolButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkToggleToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToggleToolButtonClassProtocol`
    /// `GtkToggleToolButtonClass` does not allow reference counting.
    public convenience init<T: ToggleToolButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToggleToolButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToggleToolButtonClass`.
    deinit {
        // no reference counting for GtkToggleToolButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToggleToolButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToggleToolButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToggleToolButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToggleToolButtonClass>(opaquePointer))
    }



}

// MARK: - no ToggleToolButtonClass properties

// MARK: - no signals


public extension ToggleToolButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToggleToolButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleToolButtonClass> { return ptr.assumingMemoryBound(to: GtkToggleToolButtonClass.self) }

}



// MARK: - ToggleToolButtonPrivate Record

/// The `ToggleToolButtonPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkToggleToolButtonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToggleToolButtonPrivate`.
/// Alternatively, use `ToggleToolButtonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToggleToolButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToggleToolButtonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToggleToolButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleToolButtonPrivate> { get }
}

/// The `ToggleToolButtonPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkToggleToolButtonPrivate` instance.
/// It exposes methods that can operate on this data type through `ToggleToolButtonPrivateProtocol` conformance.
/// Use `ToggleToolButtonPrivateRef` only as an `unowned` reference to an existing `GtkToggleToolButtonPrivate` instance.
///

public struct ToggleToolButtonPrivateRef: ToggleToolButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToggleToolButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToggleToolButtonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToggleToolButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToggleToolButtonPrivateProtocol`
    init<T: ToggleToolButtonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToggleToolButtonPrivate` type acts as an owner of an underlying `GtkToggleToolButtonPrivate` instance.
/// It provides the methods that can operate on this data type through `ToggleToolButtonPrivateProtocol` conformance.
/// Use `ToggleToolButtonPrivate` as a strong reference or owner of a `GtkToggleToolButtonPrivate` instance.
///

open class ToggleToolButtonPrivate: ToggleToolButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToggleToolButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToggleToolButtonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkToggleToolButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToggleToolButtonPrivateProtocol`
    /// `GtkToggleToolButtonPrivate` does not allow reference counting.
    public convenience init<T: ToggleToolButtonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToggleToolButtonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToggleToolButtonPrivate`.
    deinit {
        // no reference counting for GtkToggleToolButtonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToggleToolButtonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToggleToolButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToggleToolButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleToolButtonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToggleToolButtonPrivate>(opaquePointer))
    }



}

// MARK: - no ToggleToolButtonPrivate properties

// MARK: - no signals


public extension ToggleToolButtonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToggleToolButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleToolButtonPrivate> { return ptr.assumingMemoryBound(to: GtkToggleToolButtonPrivate.self) }

}



// MARK: - ToolButtonClass Record

/// The `ToolButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkToolButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolButtonClass`.
/// Alternatively, use `ToolButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToolButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkToolButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToolButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToolButtonClass> { get }
}

/// The `ToolButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkToolButtonClass` instance.
/// It exposes methods that can operate on this data type through `ToolButtonClassProtocol` conformance.
/// Use `ToolButtonClassRef` only as an `unowned` reference to an existing `GtkToolButtonClass` instance.
///

public struct ToolButtonClassRef: ToolButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkToolButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToolButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToolButtonClassProtocol`
    init<T: ToolButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToolButtonClass` type acts as an owner of an underlying `GtkToolButtonClass` instance.
/// It provides the methods that can operate on this data type through `ToolButtonClassProtocol` conformance.
/// Use `ToolButtonClass` as a strong reference or owner of a `GtkToolButtonClass` instance.
///

open class ToolButtonClass: ToolButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkToolButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToolButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToolButtonClassProtocol`
    /// `GtkToolButtonClass` does not allow reference counting.
    public convenience init<T: ToolButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToolButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToolButtonClass`.
    deinit {
        // no reference counting for GtkToolButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToolButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToolButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToolButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToolButtonClass>(opaquePointer))
    }



}

// MARK: - no ToolButtonClass properties

// MARK: - no signals


public extension ToolButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToolButtonClass> { return ptr.assumingMemoryBound(to: GtkToolButtonClass.self) }

}



// MARK: - ToolButtonPrivate Record

/// The `ToolButtonPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkToolButtonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolButtonPrivate`.
/// Alternatively, use `ToolButtonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToolButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToolButtonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToolButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToolButtonPrivate> { get }
}

/// The `ToolButtonPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkToolButtonPrivate` instance.
/// It exposes methods that can operate on this data type through `ToolButtonPrivateProtocol` conformance.
/// Use `ToolButtonPrivateRef` only as an `unowned` reference to an existing `GtkToolButtonPrivate` instance.
///

public struct ToolButtonPrivateRef: ToolButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToolButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToolButtonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToolButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToolButtonPrivateProtocol`
    init<T: ToolButtonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToolButtonPrivate` type acts as an owner of an underlying `GtkToolButtonPrivate` instance.
/// It provides the methods that can operate on this data type through `ToolButtonPrivateProtocol` conformance.
/// Use `ToolButtonPrivate` as a strong reference or owner of a `GtkToolButtonPrivate` instance.
///

open class ToolButtonPrivate: ToolButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToolButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToolButtonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkToolButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToolButtonPrivateProtocol`
    /// `GtkToolButtonPrivate` does not allow reference counting.
    public convenience init<T: ToolButtonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToolButtonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToolButtonPrivate`.
    deinit {
        // no reference counting for GtkToolButtonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToolButtonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToolButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToolButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolButtonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToolButtonPrivate>(opaquePointer))
    }



}

// MARK: - no ToolButtonPrivate properties

// MARK: - no signals


public extension ToolButtonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToolButtonPrivate> { return ptr.assumingMemoryBound(to: GtkToolButtonPrivate.self) }

}



// MARK: - ToolItemClass Record

/// The `ToolItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkToolItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolItemClass`.
/// Alternatively, use `ToolItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToolItemClassProtocol {
    /// Untyped pointer to the underlying `GtkToolItemClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToolItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToolItemClass> { get }
}

/// The `ToolItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkToolItemClass` instance.
/// It exposes methods that can operate on this data type through `ToolItemClassProtocol` conformance.
/// Use `ToolItemClassRef` only as an `unowned` reference to an existing `GtkToolItemClass` instance.
///

public struct ToolItemClassRef: ToolItemClassProtocol {
    /// Untyped pointer to the underlying `GtkToolItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToolItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToolItemClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToolItemClassProtocol`
    init<T: ToolItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToolItemClass` type acts as an owner of an underlying `GtkToolItemClass` instance.
/// It provides the methods that can operate on this data type through `ToolItemClassProtocol` conformance.
/// Use `ToolItemClass` as a strong reference or owner of a `GtkToolItemClass` instance.
///

open class ToolItemClass: ToolItemClassProtocol {
    /// Untyped pointer to the underlying `GtkToolItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToolItemClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkToolItemClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToolItemClassProtocol`
    /// `GtkToolItemClass` does not allow reference counting.
    public convenience init<T: ToolItemClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToolItemClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToolItemClass`.
    deinit {
        // no reference counting for GtkToolItemClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToolItemClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToolItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToolItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToolItemClass>(opaquePointer))
    }



}

// MARK: - no ToolItemClass properties

// MARK: - no signals


public extension ToolItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToolItemClass> { return ptr.assumingMemoryBound(to: GtkToolItemClass.self) }

}



// MARK: - ToolItemGroupClass Record

/// The `ToolItemGroupClassProtocol` protocol exposes the methods and properties of an underlying `GtkToolItemGroupClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolItemGroupClass`.
/// Alternatively, use `ToolItemGroupClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToolItemGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkToolItemGroupClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToolItemGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToolItemGroupClass> { get }
}

/// The `ToolItemGroupClassRef` type acts as a lightweight Swift reference to an underlying `GtkToolItemGroupClass` instance.
/// It exposes methods that can operate on this data type through `ToolItemGroupClassProtocol` conformance.
/// Use `ToolItemGroupClassRef` only as an `unowned` reference to an existing `GtkToolItemGroupClass` instance.
///

public struct ToolItemGroupClassRef: ToolItemGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkToolItemGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToolItemGroupClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToolItemGroupClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToolItemGroupClassProtocol`
    init<T: ToolItemGroupClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToolItemGroupClass` type acts as an owner of an underlying `GtkToolItemGroupClass` instance.
/// It provides the methods that can operate on this data type through `ToolItemGroupClassProtocol` conformance.
/// Use `ToolItemGroupClass` as a strong reference or owner of a `GtkToolItemGroupClass` instance.
///

open class ToolItemGroupClass: ToolItemGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkToolItemGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToolItemGroupClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkToolItemGroupClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToolItemGroupClassProtocol`
    /// `GtkToolItemGroupClass` does not allow reference counting.
    public convenience init<T: ToolItemGroupClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToolItemGroupClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToolItemGroupClass`.
    deinit {
        // no reference counting for GtkToolItemGroupClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToolItemGroupClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToolItemGroupClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToolItemGroupClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToolItemGroupClass>(opaquePointer))
    }



}

// MARK: - no ToolItemGroupClass properties

// MARK: - no signals


public extension ToolItemGroupClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolItemGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToolItemGroupClass> { return ptr.assumingMemoryBound(to: GtkToolItemGroupClass.self) }

}



// MARK: - ToolItemGroupPrivate Record

/// The `ToolItemGroupPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkToolItemGroupPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolItemGroupPrivate`.
/// Alternatively, use `ToolItemGroupPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToolItemGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToolItemGroupPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToolItemGroupPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToolItemGroupPrivate> { get }
}

/// The `ToolItemGroupPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkToolItemGroupPrivate` instance.
/// It exposes methods that can operate on this data type through `ToolItemGroupPrivateProtocol` conformance.
/// Use `ToolItemGroupPrivateRef` only as an `unowned` reference to an existing `GtkToolItemGroupPrivate` instance.
///

public struct ToolItemGroupPrivateRef: ToolItemGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToolItemGroupPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToolItemGroupPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToolItemGroupPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToolItemGroupPrivateProtocol`
    init<T: ToolItemGroupPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToolItemGroupPrivate` type acts as an owner of an underlying `GtkToolItemGroupPrivate` instance.
/// It provides the methods that can operate on this data type through `ToolItemGroupPrivateProtocol` conformance.
/// Use `ToolItemGroupPrivate` as a strong reference or owner of a `GtkToolItemGroupPrivate` instance.
///

open class ToolItemGroupPrivate: ToolItemGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToolItemGroupPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToolItemGroupPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkToolItemGroupPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToolItemGroupPrivateProtocol`
    /// `GtkToolItemGroupPrivate` does not allow reference counting.
    public convenience init<T: ToolItemGroupPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToolItemGroupPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToolItemGroupPrivate`.
    deinit {
        // no reference counting for GtkToolItemGroupPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToolItemGroupPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToolItemGroupPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToolItemGroupPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemGroupPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToolItemGroupPrivate>(opaquePointer))
    }



}

// MARK: - no ToolItemGroupPrivate properties

// MARK: - no signals


public extension ToolItemGroupPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolItemGroupPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToolItemGroupPrivate> { return ptr.assumingMemoryBound(to: GtkToolItemGroupPrivate.self) }

}



// MARK: - ToolItemPrivate Record

/// The `ToolItemPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkToolItemPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolItemPrivate`.
/// Alternatively, use `ToolItemPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToolItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToolItemPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToolItemPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToolItemPrivate> { get }
}

/// The `ToolItemPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkToolItemPrivate` instance.
/// It exposes methods that can operate on this data type through `ToolItemPrivateProtocol` conformance.
/// Use `ToolItemPrivateRef` only as an `unowned` reference to an existing `GtkToolItemPrivate` instance.
///

public struct ToolItemPrivateRef: ToolItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToolItemPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToolItemPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToolItemPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToolItemPrivateProtocol`
    init<T: ToolItemPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToolItemPrivate` type acts as an owner of an underlying `GtkToolItemPrivate` instance.
/// It provides the methods that can operate on this data type through `ToolItemPrivateProtocol` conformance.
/// Use `ToolItemPrivate` as a strong reference or owner of a `GtkToolItemPrivate` instance.
///

open class ToolItemPrivate: ToolItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToolItemPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToolItemPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkToolItemPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToolItemPrivateProtocol`
    /// `GtkToolItemPrivate` does not allow reference counting.
    public convenience init<T: ToolItemPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToolItemPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToolItemPrivate`.
    deinit {
        // no reference counting for GtkToolItemPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToolItemPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToolItemPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToolItemPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolItemPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToolItemPrivate>(opaquePointer))
    }



}

// MARK: - no ToolItemPrivate properties

// MARK: - no signals


public extension ToolItemPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolItemPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToolItemPrivate> { return ptr.assumingMemoryBound(to: GtkToolItemPrivate.self) }

}



// MARK: - ToolPaletteClass Record

/// The `ToolPaletteClassProtocol` protocol exposes the methods and properties of an underlying `GtkToolPaletteClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolPaletteClass`.
/// Alternatively, use `ToolPaletteClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToolPaletteClassProtocol {
    /// Untyped pointer to the underlying `GtkToolPaletteClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToolPaletteClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToolPaletteClass> { get }
}

/// The `ToolPaletteClassRef` type acts as a lightweight Swift reference to an underlying `GtkToolPaletteClass` instance.
/// It exposes methods that can operate on this data type through `ToolPaletteClassProtocol` conformance.
/// Use `ToolPaletteClassRef` only as an `unowned` reference to an existing `GtkToolPaletteClass` instance.
///

public struct ToolPaletteClassRef: ToolPaletteClassProtocol {
    /// Untyped pointer to the underlying `GtkToolPaletteClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToolPaletteClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToolPaletteClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToolPaletteClassProtocol`
    init<T: ToolPaletteClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPaletteClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPaletteClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPaletteClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPaletteClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPaletteClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToolPaletteClass` type acts as an owner of an underlying `GtkToolPaletteClass` instance.
/// It provides the methods that can operate on this data type through `ToolPaletteClassProtocol` conformance.
/// Use `ToolPaletteClass` as a strong reference or owner of a `GtkToolPaletteClass` instance.
///

open class ToolPaletteClass: ToolPaletteClassProtocol {
    /// Untyped pointer to the underlying `GtkToolPaletteClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToolPaletteClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkToolPaletteClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToolPaletteClassProtocol`
    /// `GtkToolPaletteClass` does not allow reference counting.
    public convenience init<T: ToolPaletteClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToolPaletteClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToolPaletteClass`.
    deinit {
        // no reference counting for GtkToolPaletteClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPaletteClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToolPaletteClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPaletteClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToolPaletteClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPaletteClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToolPaletteClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPaletteClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToolPaletteClass>(opaquePointer))
    }



}

// MARK: - no ToolPaletteClass properties

// MARK: - no signals


public extension ToolPaletteClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolPaletteClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToolPaletteClass> { return ptr.assumingMemoryBound(to: GtkToolPaletteClass.self) }

}



// MARK: - ToolPalettePrivate Record

/// The `ToolPalettePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkToolPalettePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolPalettePrivate`.
/// Alternatively, use `ToolPalettePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToolPalettePrivateProtocol {
    /// Untyped pointer to the underlying `GtkToolPalettePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToolPalettePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToolPalettePrivate> { get }
}

/// The `ToolPalettePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkToolPalettePrivate` instance.
/// It exposes methods that can operate on this data type through `ToolPalettePrivateProtocol` conformance.
/// Use `ToolPalettePrivateRef` only as an `unowned` reference to an existing `GtkToolPalettePrivate` instance.
///

public struct ToolPalettePrivateRef: ToolPalettePrivateProtocol {
    /// Untyped pointer to the underlying `GtkToolPalettePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToolPalettePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToolPalettePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToolPalettePrivateProtocol`
    init<T: ToolPalettePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPalettePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPalettePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPalettePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPalettePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPalettePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToolPalettePrivate` type acts as an owner of an underlying `GtkToolPalettePrivate` instance.
/// It provides the methods that can operate on this data type through `ToolPalettePrivateProtocol` conformance.
/// Use `ToolPalettePrivate` as a strong reference or owner of a `GtkToolPalettePrivate` instance.
///

open class ToolPalettePrivate: ToolPalettePrivateProtocol {
    /// Untyped pointer to the underlying `GtkToolPalettePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToolPalettePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkToolPalettePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToolPalettePrivateProtocol`
    /// `GtkToolPalettePrivate` does not allow reference counting.
    public convenience init<T: ToolPalettePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToolPalettePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToolPalettePrivate`.
    deinit {
        // no reference counting for GtkToolPalettePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPalettePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToolPalettePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPalettePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToolPalettePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPalettePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToolPalettePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolPalettePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToolPalettePrivate>(opaquePointer))
    }



}

// MARK: - no ToolPalettePrivate properties

// MARK: - no signals


public extension ToolPalettePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolPalettePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToolPalettePrivate> { return ptr.assumingMemoryBound(to: GtkToolPalettePrivate.self) }

}



// MARK: - ToolShellIface Record

/// The `ToolShellIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkToolShellIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolShellIface`.
/// Alternatively, use `ToolShellIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Virtual function table for the `GtkToolShell` interface.
public protocol ToolShellIfaceProtocol {
    /// Untyped pointer to the underlying `GtkToolShellIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToolShellIface` instance.
    var _ptr: UnsafeMutablePointer<GtkToolShellIface> { get }
}

/// The `ToolShellIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkToolShellIface` instance.
/// It exposes methods that can operate on this data type through `ToolShellIfaceProtocol` conformance.
/// Use `ToolShellIfaceRef` only as an `unowned` reference to an existing `GtkToolShellIface` instance.
///
/// Virtual function table for the `GtkToolShell` interface.
public struct ToolShellIfaceRef: ToolShellIfaceProtocol {
    /// Untyped pointer to the underlying `GtkToolShellIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToolShellIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToolShellIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToolShellIfaceProtocol`
    init<T: ToolShellIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToolShellIface` type acts as an owner of an underlying `GtkToolShellIface` instance.
/// It provides the methods that can operate on this data type through `ToolShellIfaceProtocol` conformance.
/// Use `ToolShellIface` as a strong reference or owner of a `GtkToolShellIface` instance.
///
/// Virtual function table for the `GtkToolShell` interface.
open class ToolShellIface: ToolShellIfaceProtocol {
    /// Untyped pointer to the underlying `GtkToolShellIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToolShellIface` instance.
    public init(_ op: UnsafeMutablePointer<GtkToolShellIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToolShellIfaceProtocol`
    /// `GtkToolShellIface` does not allow reference counting.
    public convenience init<T: ToolShellIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToolShellIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToolShellIface`.
    deinit {
        // no reference counting for GtkToolShellIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToolShellIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToolShellIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToolShellIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToolShellIface>(opaquePointer))
    }



}

// MARK: - no ToolShellIface properties

// MARK: - no signals


public extension ToolShellIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolShellIface` instance.
    var _ptr: UnsafeMutablePointer<GtkToolShellIface> { return ptr.assumingMemoryBound(to: GtkToolShellIface.self) }

}



// MARK: - ToolbarClass Record

/// The `ToolbarClassProtocol` protocol exposes the methods and properties of an underlying `GtkToolbarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolbarClass`.
/// Alternatively, use `ToolbarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToolbarClassProtocol {
    /// Untyped pointer to the underlying `GtkToolbarClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToolbarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToolbarClass> { get }
}

/// The `ToolbarClassRef` type acts as a lightweight Swift reference to an underlying `GtkToolbarClass` instance.
/// It exposes methods that can operate on this data type through `ToolbarClassProtocol` conformance.
/// Use `ToolbarClassRef` only as an `unowned` reference to an existing `GtkToolbarClass` instance.
///

public struct ToolbarClassRef: ToolbarClassProtocol {
    /// Untyped pointer to the underlying `GtkToolbarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToolbarClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToolbarClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToolbarClassProtocol`
    init<T: ToolbarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToolbarClass` type acts as an owner of an underlying `GtkToolbarClass` instance.
/// It provides the methods that can operate on this data type through `ToolbarClassProtocol` conformance.
/// Use `ToolbarClass` as a strong reference or owner of a `GtkToolbarClass` instance.
///

open class ToolbarClass: ToolbarClassProtocol {
    /// Untyped pointer to the underlying `GtkToolbarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToolbarClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkToolbarClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToolbarClassProtocol`
    /// `GtkToolbarClass` does not allow reference counting.
    public convenience init<T: ToolbarClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToolbarClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToolbarClass`.
    deinit {
        // no reference counting for GtkToolbarClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToolbarClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToolbarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToolbarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToolbarClass>(opaquePointer))
    }



}

// MARK: - no ToolbarClass properties

// MARK: - no signals


public extension ToolbarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolbarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToolbarClass> { return ptr.assumingMemoryBound(to: GtkToolbarClass.self) }

}



// MARK: - ToolbarPrivate Record

/// The `ToolbarPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkToolbarPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolbarPrivate`.
/// Alternatively, use `ToolbarPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToolbarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToolbarPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToolbarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToolbarPrivate> { get }
}

/// The `ToolbarPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkToolbarPrivate` instance.
/// It exposes methods that can operate on this data type through `ToolbarPrivateProtocol` conformance.
/// Use `ToolbarPrivateRef` only as an `unowned` reference to an existing `GtkToolbarPrivate` instance.
///

public struct ToolbarPrivateRef: ToolbarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToolbarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToolbarPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToolbarPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToolbarPrivateProtocol`
    init<T: ToolbarPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToolbarPrivate` type acts as an owner of an underlying `GtkToolbarPrivate` instance.
/// It provides the methods that can operate on this data type through `ToolbarPrivateProtocol` conformance.
/// Use `ToolbarPrivate` as a strong reference or owner of a `GtkToolbarPrivate` instance.
///

open class ToolbarPrivate: ToolbarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkToolbarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToolbarPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkToolbarPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToolbarPrivateProtocol`
    /// `GtkToolbarPrivate` does not allow reference counting.
    public convenience init<T: ToolbarPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToolbarPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToolbarPrivate`.
    deinit {
        // no reference counting for GtkToolbarPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToolbarPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToolbarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToolbarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolbarPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToolbarPrivate>(opaquePointer))
    }



}

// MARK: - no ToolbarPrivate properties

// MARK: - no signals


public extension ToolbarPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolbarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToolbarPrivate> { return ptr.assumingMemoryBound(to: GtkToolbarPrivate.self) }

}



// MARK: - ToplevelAccessibleClass Record

/// The `ToplevelAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkToplevelAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToplevelAccessibleClass`.
/// Alternatively, use `ToplevelAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToplevelAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkToplevelAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToplevelAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToplevelAccessibleClass> { get }
}

/// The `ToplevelAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkToplevelAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ToplevelAccessibleClassProtocol` conformance.
/// Use `ToplevelAccessibleClassRef` only as an `unowned` reference to an existing `GtkToplevelAccessibleClass` instance.
///

public struct ToplevelAccessibleClassRef: ToplevelAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkToplevelAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToplevelAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToplevelAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToplevelAccessibleClassProtocol`
    init<T: ToplevelAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToplevelAccessibleClass` type acts as an owner of an underlying `GtkToplevelAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ToplevelAccessibleClassProtocol` conformance.
/// Use `ToplevelAccessibleClass` as a strong reference or owner of a `GtkToplevelAccessibleClass` instance.
///

open class ToplevelAccessibleClass: ToplevelAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkToplevelAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToplevelAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkToplevelAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToplevelAccessibleClassProtocol`
    /// `GtkToplevelAccessibleClass` does not allow reference counting.
    public convenience init<T: ToplevelAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToplevelAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToplevelAccessibleClass`.
    deinit {
        // no reference counting for GtkToplevelAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToplevelAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToplevelAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToplevelAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToplevelAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ToplevelAccessibleClass properties

// MARK: - no signals


public extension ToplevelAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToplevelAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToplevelAccessibleClass> { return ptr.assumingMemoryBound(to: GtkToplevelAccessibleClass.self) }

}



// MARK: - ToplevelAccessiblePrivate Record

/// The `ToplevelAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkToplevelAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToplevelAccessiblePrivate`.
/// Alternatively, use `ToplevelAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToplevelAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkToplevelAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToplevelAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToplevelAccessiblePrivate> { get }
}

/// The `ToplevelAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkToplevelAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `ToplevelAccessiblePrivateProtocol` conformance.
/// Use `ToplevelAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkToplevelAccessiblePrivate` instance.
///

public struct ToplevelAccessiblePrivateRef: ToplevelAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkToplevelAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToplevelAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToplevelAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToplevelAccessiblePrivateProtocol`
    init<T: ToplevelAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToplevelAccessiblePrivate` type acts as an owner of an underlying `GtkToplevelAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `ToplevelAccessiblePrivateProtocol` conformance.
/// Use `ToplevelAccessiblePrivate` as a strong reference or owner of a `GtkToplevelAccessiblePrivate` instance.
///

open class ToplevelAccessiblePrivate: ToplevelAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkToplevelAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ToplevelAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkToplevelAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ToplevelAccessiblePrivateProtocol`
    /// `GtkToplevelAccessiblePrivate` does not allow reference counting.
    public convenience init<T: ToplevelAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkToplevelAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkToplevelAccessiblePrivate`.
    deinit {
        // no reference counting for GtkToplevelAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToplevelAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToplevelAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToplevelAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToplevelAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no ToplevelAccessiblePrivate properties

// MARK: - no signals


public extension ToplevelAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToplevelAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkToplevelAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkToplevelAccessiblePrivate.self) }

}



// MARK: - TreeDragDestIface Record

/// The `TreeDragDestIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkTreeDragDestIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeDragDestIface`.
/// Alternatively, use `TreeDragDestIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeDragDestIfaceProtocol {
    /// Untyped pointer to the underlying `GtkTreeDragDestIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeDragDestIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeDragDestIface> { get }
}

/// The `TreeDragDestIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeDragDestIface` instance.
/// It exposes methods that can operate on this data type through `TreeDragDestIfaceProtocol` conformance.
/// Use `TreeDragDestIfaceRef` only as an `unowned` reference to an existing `GtkTreeDragDestIface` instance.
///

public struct TreeDragDestIfaceRef: TreeDragDestIfaceProtocol {
    /// Untyped pointer to the underlying `GtkTreeDragDestIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeDragDestIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeDragDestIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeDragDestIfaceProtocol`
    init<T: TreeDragDestIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeDragDestIface` type acts as an owner of an underlying `GtkTreeDragDestIface` instance.
/// It provides the methods that can operate on this data type through `TreeDragDestIfaceProtocol` conformance.
/// Use `TreeDragDestIface` as a strong reference or owner of a `GtkTreeDragDestIface` instance.
///

open class TreeDragDestIface: TreeDragDestIfaceProtocol {
    /// Untyped pointer to the underlying `GtkTreeDragDestIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeDragDestIface` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeDragDestIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeDragDestIfaceProtocol`
    /// `GtkTreeDragDestIface` does not allow reference counting.
    public convenience init<T: TreeDragDestIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeDragDestIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeDragDestIface`.
    deinit {
        // no reference counting for GtkTreeDragDestIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeDragDestIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeDragDestIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeDragDestIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeDragDestIface>(opaquePointer))
    }



}

// MARK: - no TreeDragDestIface properties

// MARK: - no signals


public extension TreeDragDestIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeDragDestIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeDragDestIface> { return ptr.assumingMemoryBound(to: GtkTreeDragDestIface.self) }

}



// MARK: - TreeDragSourceIface Record

/// The `TreeDragSourceIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkTreeDragSourceIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeDragSourceIface`.
/// Alternatively, use `TreeDragSourceIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeDragSourceIfaceProtocol {
    /// Untyped pointer to the underlying `GtkTreeDragSourceIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeDragSourceIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeDragSourceIface> { get }
}

/// The `TreeDragSourceIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeDragSourceIface` instance.
/// It exposes methods that can operate on this data type through `TreeDragSourceIfaceProtocol` conformance.
/// Use `TreeDragSourceIfaceRef` only as an `unowned` reference to an existing `GtkTreeDragSourceIface` instance.
///

public struct TreeDragSourceIfaceRef: TreeDragSourceIfaceProtocol {
    /// Untyped pointer to the underlying `GtkTreeDragSourceIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeDragSourceIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeDragSourceIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeDragSourceIfaceProtocol`
    init<T: TreeDragSourceIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeDragSourceIface` type acts as an owner of an underlying `GtkTreeDragSourceIface` instance.
/// It provides the methods that can operate on this data type through `TreeDragSourceIfaceProtocol` conformance.
/// Use `TreeDragSourceIface` as a strong reference or owner of a `GtkTreeDragSourceIface` instance.
///

open class TreeDragSourceIface: TreeDragSourceIfaceProtocol {
    /// Untyped pointer to the underlying `GtkTreeDragSourceIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeDragSourceIface` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeDragSourceIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeDragSourceIfaceProtocol`
    /// `GtkTreeDragSourceIface` does not allow reference counting.
    public convenience init<T: TreeDragSourceIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeDragSourceIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeDragSourceIface`.
    deinit {
        // no reference counting for GtkTreeDragSourceIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeDragSourceIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeDragSourceIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeDragSourceIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeDragSourceIface>(opaquePointer))
    }



}

// MARK: - no TreeDragSourceIface properties

// MARK: - no signals


public extension TreeDragSourceIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeDragSourceIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeDragSourceIface> { return ptr.assumingMemoryBound(to: GtkTreeDragSourceIface.self) }

}



// MARK: - TreeIter Record

/// The `TreeIterProtocol` protocol exposes the methods and properties of an underlying `GtkTreeIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeIter`.
/// Alternatively, use `TreeIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkTreeIter` is the primary structure
/// for accessing a `GtkTreeModel`. Models are expected to put a unique
/// integer in the `stamp` member, and put
/// model-specific data in the three `user_data`
/// members.
public protocol TreeIterProtocol {
    /// Untyped pointer to the underlying `GtkTreeIter` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeIter` instance.
    var tree_iter_ptr: UnsafeMutablePointer<GtkTreeIter> { get }
}

/// The `TreeIterRef` type acts as a lightweight Swift reference to an underlying `GtkTreeIter` instance.
/// It exposes methods that can operate on this data type through `TreeIterProtocol` conformance.
/// Use `TreeIterRef` only as an `unowned` reference to an existing `GtkTreeIter` instance.
///
/// The `GtkTreeIter` is the primary structure
/// for accessing a `GtkTreeModel`. Models are expected to put a unique
/// integer in the `stamp` member, and put
/// model-specific data in the three `user_data`
/// members.
public struct TreeIterRef: TreeIterProtocol {
    /// Untyped pointer to the underlying `GtkTreeIter` instance.
    /// For type-safe access, use the generated, typed pointer `tree_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeIterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeIter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeIterProtocol`
    init<T: TreeIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeIter` type acts as an owner of an underlying `GtkTreeIter` instance.
/// It provides the methods that can operate on this data type through `TreeIterProtocol` conformance.
/// Use `TreeIter` as a strong reference or owner of a `GtkTreeIter` instance.
///
/// The `GtkTreeIter` is the primary structure
/// for accessing a `GtkTreeModel`. Models are expected to put a unique
/// integer in the `stamp` member, and put
/// model-specific data in the three `user_data`
/// members.
open class TreeIterBase: TreeIterProtocol {
    /// Untyped pointer to the underlying `GtkTreeIter` instance.
    /// For type-safe access, use the generated, typed pointer `tree_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeIter` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeIterProtocol`
    /// `GtkTreeIter` does not allow reference counting.
    public convenience init<T: TreeIterProtocol>(_ other: T) {
        self.init(cast(other.tree_iter_ptr))
        // no reference counting for GtkTreeIter, cannot ref(cast(tree_iter_ptr))
    }

    /// Do-nothing destructor for`GtkTreeIter`.
    deinit {
        // no reference counting for GtkTreeIter, cannot unref(cast(tree_iter_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeIter.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeIter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeIter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeIter>(opaquePointer))
    }



}

// MARK: - no TreeIter properties

// MARK: - no signals


public extension TreeIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeIter` instance.
    var tree_iter_ptr: UnsafeMutablePointer<GtkTreeIter> { return ptr.assumingMemoryBound(to: GtkTreeIter.self) }

    /// Creates a dynamically allocated tree iterator as a copy of `iter`.
    /// 
    /// This function is not intended for use in applications,
    /// because you can just copy the structs by value
    /// (`GtkTreeIter new_iter = iter;`).
    /// You must free this iter with gtk_tree_iter_free().
    func copy() -> UnsafeMutablePointer<GtkTreeIter>! {
        let rv = gtk_tree_iter_copy(cast(tree_iter_ptr))
        return cast(rv)
    }

    /// Frees an iterator that has been allocated by gtk_tree_iter_copy().
    /// 
    /// This function is mainly used for language bindings.
    func free() {
        gtk_tree_iter_free(cast(tree_iter_ptr))
    
    }

    /// Lets a set of row reference created by
    /// gtk_tree_row_reference_new_proxy() know that the
    /// model emitted the `GtkTreeModel`::rows-reordered signal.
    func treeRowReferenceReordered(proxy: GLibObject.ObjectProtocol, path: TreePathProtocol, newOrder new_order: UnsafeMutablePointer<CInt>) {
        gtk_tree_row_reference_reordered(cast(proxy.ptr), cast(path.ptr), cast(tree_iter_ptr), cast(new_order))
    
    }
}



// MARK: - TreeModelFilterClass Record

/// The `TreeModelFilterClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeModelFilterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeModelFilterClass`.
/// Alternatively, use `TreeModelFilterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeModelFilterClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeModelFilterClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeModelFilterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelFilterClass> { get }
}

/// The `TreeModelFilterClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeModelFilterClass` instance.
/// It exposes methods that can operate on this data type through `TreeModelFilterClassProtocol` conformance.
/// Use `TreeModelFilterClassRef` only as an `unowned` reference to an existing `GtkTreeModelFilterClass` instance.
///

public struct TreeModelFilterClassRef: TreeModelFilterClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeModelFilterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeModelFilterClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeModelFilterClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeModelFilterClassProtocol`
    init<T: TreeModelFilterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeModelFilterClass` type acts as an owner of an underlying `GtkTreeModelFilterClass` instance.
/// It provides the methods that can operate on this data type through `TreeModelFilterClassProtocol` conformance.
/// Use `TreeModelFilterClass` as a strong reference or owner of a `GtkTreeModelFilterClass` instance.
///

open class TreeModelFilterClass: TreeModelFilterClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeModelFilterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeModelFilterClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeModelFilterClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeModelFilterClassProtocol`
    /// `GtkTreeModelFilterClass` does not allow reference counting.
    public convenience init<T: TreeModelFilterClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeModelFilterClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeModelFilterClass`.
    deinit {
        // no reference counting for GtkTreeModelFilterClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeModelFilterClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeModelFilterClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeModelFilterClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeModelFilterClass>(opaquePointer))
    }



}

// MARK: - no TreeModelFilterClass properties

// MARK: - no signals


public extension TreeModelFilterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeModelFilterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelFilterClass> { return ptr.assumingMemoryBound(to: GtkTreeModelFilterClass.self) }

}



// MARK: - TreeModelFilterPrivate Record

/// The `TreeModelFilterPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkTreeModelFilterPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeModelFilterPrivate`.
/// Alternatively, use `TreeModelFilterPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeModelFilterPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeModelFilterPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeModelFilterPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelFilterPrivate> { get }
}

/// The `TreeModelFilterPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkTreeModelFilterPrivate` instance.
/// It exposes methods that can operate on this data type through `TreeModelFilterPrivateProtocol` conformance.
/// Use `TreeModelFilterPrivateRef` only as an `unowned` reference to an existing `GtkTreeModelFilterPrivate` instance.
///

public struct TreeModelFilterPrivateRef: TreeModelFilterPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeModelFilterPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeModelFilterPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeModelFilterPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeModelFilterPrivateProtocol`
    init<T: TreeModelFilterPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeModelFilterPrivate` type acts as an owner of an underlying `GtkTreeModelFilterPrivate` instance.
/// It provides the methods that can operate on this data type through `TreeModelFilterPrivateProtocol` conformance.
/// Use `TreeModelFilterPrivate` as a strong reference or owner of a `GtkTreeModelFilterPrivate` instance.
///

open class TreeModelFilterPrivate: TreeModelFilterPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeModelFilterPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeModelFilterPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeModelFilterPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeModelFilterPrivateProtocol`
    /// `GtkTreeModelFilterPrivate` does not allow reference counting.
    public convenience init<T: TreeModelFilterPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeModelFilterPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeModelFilterPrivate`.
    deinit {
        // no reference counting for GtkTreeModelFilterPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeModelFilterPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeModelFilterPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeModelFilterPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeModelFilterPrivate>(opaquePointer))
    }



}

// MARK: - no TreeModelFilterPrivate properties

// MARK: - no signals


public extension TreeModelFilterPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeModelFilterPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelFilterPrivate> { return ptr.assumingMemoryBound(to: GtkTreeModelFilterPrivate.self) }

}



// MARK: - TreeModelIface Record

/// The `TreeModelIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkTreeModelIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeModelIface`.
/// Alternatively, use `TreeModelIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeModelIfaceProtocol {
    /// Untyped pointer to the underlying `GtkTreeModelIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeModelIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelIface> { get }
}

/// The `TreeModelIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeModelIface` instance.
/// It exposes methods that can operate on this data type through `TreeModelIfaceProtocol` conformance.
/// Use `TreeModelIfaceRef` only as an `unowned` reference to an existing `GtkTreeModelIface` instance.
///

public struct TreeModelIfaceRef: TreeModelIfaceProtocol {
    /// Untyped pointer to the underlying `GtkTreeModelIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeModelIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeModelIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeModelIfaceProtocol`
    init<T: TreeModelIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeModelIface` type acts as an owner of an underlying `GtkTreeModelIface` instance.
/// It provides the methods that can operate on this data type through `TreeModelIfaceProtocol` conformance.
/// Use `TreeModelIface` as a strong reference or owner of a `GtkTreeModelIface` instance.
///

open class TreeModelIface: TreeModelIfaceProtocol {
    /// Untyped pointer to the underlying `GtkTreeModelIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeModelIface` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeModelIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeModelIfaceProtocol`
    /// `GtkTreeModelIface` does not allow reference counting.
    public convenience init<T: TreeModelIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeModelIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeModelIface`.
    deinit {
        // no reference counting for GtkTreeModelIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeModelIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeModelIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeModelIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeModelIface>(opaquePointer))
    }



}

// MARK: - no TreeModelIface properties

// MARK: - no signals


public extension TreeModelIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeModelIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelIface> { return ptr.assumingMemoryBound(to: GtkTreeModelIface.self) }

}



// MARK: - TreeModelSortClass Record

/// The `TreeModelSortClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeModelSortClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeModelSortClass`.
/// Alternatively, use `TreeModelSortClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeModelSortClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeModelSortClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeModelSortClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelSortClass> { get }
}

/// The `TreeModelSortClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeModelSortClass` instance.
/// It exposes methods that can operate on this data type through `TreeModelSortClassProtocol` conformance.
/// Use `TreeModelSortClassRef` only as an `unowned` reference to an existing `GtkTreeModelSortClass` instance.
///

public struct TreeModelSortClassRef: TreeModelSortClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeModelSortClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeModelSortClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeModelSortClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeModelSortClassProtocol`
    init<T: TreeModelSortClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeModelSortClass` type acts as an owner of an underlying `GtkTreeModelSortClass` instance.
/// It provides the methods that can operate on this data type through `TreeModelSortClassProtocol` conformance.
/// Use `TreeModelSortClass` as a strong reference or owner of a `GtkTreeModelSortClass` instance.
///

open class TreeModelSortClass: TreeModelSortClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeModelSortClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeModelSortClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeModelSortClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeModelSortClassProtocol`
    /// `GtkTreeModelSortClass` does not allow reference counting.
    public convenience init<T: TreeModelSortClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeModelSortClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeModelSortClass`.
    deinit {
        // no reference counting for GtkTreeModelSortClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeModelSortClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeModelSortClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeModelSortClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeModelSortClass>(opaquePointer))
    }



}

// MARK: - no TreeModelSortClass properties

// MARK: - no signals


public extension TreeModelSortClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeModelSortClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelSortClass> { return ptr.assumingMemoryBound(to: GtkTreeModelSortClass.self) }

}



// MARK: - TreeModelSortPrivate Record

/// The `TreeModelSortPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkTreeModelSortPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeModelSortPrivate`.
/// Alternatively, use `TreeModelSortPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeModelSortPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeModelSortPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeModelSortPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelSortPrivate> { get }
}

/// The `TreeModelSortPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkTreeModelSortPrivate` instance.
/// It exposes methods that can operate on this data type through `TreeModelSortPrivateProtocol` conformance.
/// Use `TreeModelSortPrivateRef` only as an `unowned` reference to an existing `GtkTreeModelSortPrivate` instance.
///

public struct TreeModelSortPrivateRef: TreeModelSortPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeModelSortPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeModelSortPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeModelSortPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeModelSortPrivateProtocol`
    init<T: TreeModelSortPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeModelSortPrivate` type acts as an owner of an underlying `GtkTreeModelSortPrivate` instance.
/// It provides the methods that can operate on this data type through `TreeModelSortPrivateProtocol` conformance.
/// Use `TreeModelSortPrivate` as a strong reference or owner of a `GtkTreeModelSortPrivate` instance.
///

open class TreeModelSortPrivate: TreeModelSortPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeModelSortPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeModelSortPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeModelSortPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeModelSortPrivateProtocol`
    /// `GtkTreeModelSortPrivate` does not allow reference counting.
    public convenience init<T: TreeModelSortPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeModelSortPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeModelSortPrivate`.
    deinit {
        // no reference counting for GtkTreeModelSortPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeModelSortPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeModelSortPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeModelSortPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeModelSortPrivate>(opaquePointer))
    }



}

// MARK: - no TreeModelSortPrivate properties

// MARK: - no signals


public extension TreeModelSortPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeModelSortPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelSortPrivate> { return ptr.assumingMemoryBound(to: GtkTreeModelSortPrivate.self) }

}



// MARK: - TreePath Record

/// The `TreePathProtocol` protocol exposes the methods and properties of an underlying `GtkTreePath` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreePath`.
/// Alternatively, use `TreePathRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreePathProtocol {
    /// Untyped pointer to the underlying `GtkTreePath` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreePath` instance.
    var tree_path_ptr: UnsafeMutablePointer<GtkTreePath> { get }
}

/// The `TreePathRef` type acts as a lightweight Swift reference to an underlying `GtkTreePath` instance.
/// It exposes methods that can operate on this data type through `TreePathProtocol` conformance.
/// Use `TreePathRef` only as an `unowned` reference to an existing `GtkTreePath` instance.
///

public struct TreePathRef: TreePathProtocol {
    /// Untyped pointer to the underlying `GtkTreePath` instance.
    /// For type-safe access, use the generated, typed pointer `tree_path_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreePathRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreePath>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreePathProtocol`
    init<T: TreePathProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkTreePath`-struct.
    /// This refers to a row.
    init() {
        let rv = gtk_tree_path_new()
        self.init(cast(rv))
    }


    // *** newFromIndices() is not available because it has a varargs (...) parameter!


    /// Creates a new path with the given `indices` array of `length`.
    init(indicesv indices: UnsafeMutablePointer<CInt>, length: Int) {
        let rv = gtk_tree_path_new_from_indicesv(cast(indices), gsize(length))
        self.init(cast(rv))
    }

    /// Creates a new `GtkTreePath`-struct initialized to `path`.
    /// 
    /// `path` is expected to be a colon separated list of numbers.
    /// For example, the string “10:4:0” would create a path of depth
    /// 3 pointing to the 11th child of the root node, the 5th
    /// child of that 11th child, and the 1st child of that 5th child.
    /// If an invalid path string is passed in, `nil` is returned.
    init(string path: UnsafePointer<gchar>) {
        let rv = gtk_tree_path_new_from_string(path)
        self.init(cast(rv))
    }
    /// Creates a new `GtkTreePath`-struct.
    /// 
    /// The string representation of this path is “0”.
    static func newFirst() -> TreePathRef! {
        let rv = gtk_tree_path_new_first()
        return rv.map { TreePathRef(cast($0)) }
    }


    // *** newFromIndices() is not available because it has a varargs (...) parameter!


    /// Creates a new path with the given `indices` array of `length`.
    static func newFrom(indicesv indices: UnsafeMutablePointer<CInt>, length: Int) -> TreePathRef! {
        let rv = gtk_tree_path_new_from_indicesv(cast(indices), gsize(length))
        return rv.map { TreePathRef(cast($0)) }
    }

    /// Creates a new `GtkTreePath`-struct initialized to `path`.
    /// 
    /// `path` is expected to be a colon separated list of numbers.
    /// For example, the string “10:4:0” would create a path of depth
    /// 3 pointing to the 11th child of the root node, the 5th
    /// child of that 11th child, and the 1st child of that 5th child.
    /// If an invalid path string is passed in, `nil` is returned.
    static func newFrom(string path: UnsafePointer<gchar>) -> TreePathRef! {
        let rv = gtk_tree_path_new_from_string(path)
        return rv.map { TreePathRef(cast($0)) }
    }
}

/// The `TreePath` type acts as an owner of an underlying `GtkTreePath` instance.
/// It provides the methods that can operate on this data type through `TreePathProtocol` conformance.
/// Use `TreePath` as a strong reference or owner of a `GtkTreePath` instance.
///

open class TreePath: TreePathProtocol {
    /// Untyped pointer to the underlying `GtkTreePath` instance.
    /// For type-safe access, use the generated, typed pointer `tree_path_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreePath` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreePath>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreePathProtocol`
    /// `GtkTreePath` does not allow reference counting.
    public convenience init<T: TreePathProtocol>(_ other: T) {
        self.init(cast(other.tree_path_ptr))
        // no reference counting for GtkTreePath, cannot ref(cast(tree_path_ptr))
    }

    /// Do-nothing destructor for`GtkTreePath`.
    deinit {
        // no reference counting for GtkTreePath, cannot unref(cast(tree_path_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreePath.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreePath.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreePath.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreePath>(opaquePointer))
    }

    /// Creates a new `GtkTreePath`-struct.
    /// This refers to a row.
    public convenience init() {
        let rv = gtk_tree_path_new()
        self.init(cast(rv))
    }


    // *** newFromIndices() is not available because it has a varargs (...) parameter!


    /// Creates a new path with the given `indices` array of `length`.
    public convenience init(indicesv indices: UnsafeMutablePointer<CInt>, length: Int) {
        let rv = gtk_tree_path_new_from_indicesv(cast(indices), gsize(length))
        self.init(cast(rv))
    }

    /// Creates a new `GtkTreePath`-struct initialized to `path`.
    /// 
    /// `path` is expected to be a colon separated list of numbers.
    /// For example, the string “10:4:0” would create a path of depth
    /// 3 pointing to the 11th child of the root node, the 5th
    /// child of that 11th child, and the 1st child of that 5th child.
    /// If an invalid path string is passed in, `nil` is returned.
    public convenience init(string path: UnsafePointer<gchar>) {
        let rv = gtk_tree_path_new_from_string(path)
        self.init(cast(rv))
    }

    /// Creates a new `GtkTreePath`-struct.
    /// 
    /// The string representation of this path is “0”.
    public static func newFirst() -> TreePath! {
        let rv = gtk_tree_path_new_first()
        return rv.map { TreePath(cast($0)) }
    }


    // *** newFromIndices() is not available because it has a varargs (...) parameter!


    /// Creates a new path with the given `indices` array of `length`.
    public static func newFrom(indicesv indices: UnsafeMutablePointer<CInt>, length: Int) -> TreePath! {
        let rv = gtk_tree_path_new_from_indicesv(cast(indices), gsize(length))
        return rv.map { TreePath(cast($0)) }
    }

    /// Creates a new `GtkTreePath`-struct initialized to `path`.
    /// 
    /// `path` is expected to be a colon separated list of numbers.
    /// For example, the string “10:4:0” would create a path of depth
    /// 3 pointing to the 11th child of the root node, the 5th
    /// child of that 11th child, and the 1st child of that 5th child.
    /// If an invalid path string is passed in, `nil` is returned.
    public static func newFrom(string path: UnsafePointer<gchar>) -> TreePath! {
        let rv = gtk_tree_path_new_from_string(path)
        return rv.map { TreePath(cast($0)) }
    }

}

// MARK: - no TreePath properties

// MARK: - no signals


public extension TreePathProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreePath` instance.
    var tree_path_ptr: UnsafeMutablePointer<GtkTreePath> { return ptr.assumingMemoryBound(to: GtkTreePath.self) }

    /// Appends a new index to a path.
    /// 
    /// As a result, the depth of the path is increased.
    func appendIndex(index_: CInt) {
        gtk_tree_path_append_index(cast(tree_path_ptr), gint(index_))
    
    }

    /// Compares two paths.
    /// 
    /// If `a` appears before `b` in a tree, then -1 is returned.
    /// If `b` appears before `a`, then 1 is returned.
    /// If the two nodes are equal, then 0 is returned.
    func compare(b: TreePathProtocol) -> CInt {
        let rv = gtk_tree_path_compare(cast(tree_path_ptr), cast(b.ptr))
        return CInt(rv)
    }

    /// Creates a new `GtkTreePath`-struct as a copy of `path`.
    func copy() -> UnsafeMutablePointer<GtkTreePath>! {
        let rv = gtk_tree_path_copy(cast(tree_path_ptr))
        return cast(rv)
    }

    /// Moves `path` to point to the first child of the current path.
    func down() {
        gtk_tree_path_down(cast(tree_path_ptr))
    
    }

    /// Frees `path`. If `path` is `nil`, it simply returns.
    func free() {
        gtk_tree_path_free(cast(tree_path_ptr))
    
    }

    /// Returns the current depth of `path`.
    func getDepth() -> CInt {
        let rv = gtk_tree_path_get_depth(cast(tree_path_ptr))
        return CInt(rv)
    }

    /// Returns the current indices of `path`.
    /// 
    /// This is an array of integers, each representing a node in a tree.
    /// This value should not be freed.
    /// 
    /// The length of the array can be obtained with gtk_tree_path_get_depth().
    func getIndices() -> UnsafeMutablePointer<CInt>! {
        let rv = gtk_tree_path_get_indices(cast(tree_path_ptr))
        return cast(rv)
    }

    /// Returns the current indices of `path`.
    /// 
    /// This is an array of integers, each representing a node in a tree.
    /// It also returns the number of elements in the array.
    /// The array should not be freed.
    func getIndicesWith(depth: UnsafeMutablePointer<CInt>) -> UnsafeMutablePointer<CInt>! {
        let rv = gtk_tree_path_get_indices_with_depth(cast(tree_path_ptr), cast(depth))
        return cast(rv)
    }

    /// Returns `true` if `descendant` is a descendant of `path`.
    func isAncestor(descendant: TreePathProtocol) -> Bool {
        let rv = gtk_tree_path_is_ancestor(cast(tree_path_ptr), cast(descendant.ptr))
        return Bool(rv != 0)
    }

    /// Returns `true` if `path` is a descendant of `ancestor`.
    func isDescendant(ancestor: TreePathProtocol) -> Bool {
        let rv = gtk_tree_path_is_descendant(cast(tree_path_ptr), cast(ancestor.ptr))
        return Bool(rv != 0)
    }

    /// Moves the `path` to point to the next node at the current depth.
    func next() {
        gtk_tree_path_next(cast(tree_path_ptr))
    
    }

    /// Prepends a new index to a path.
    /// 
    /// As a result, the depth of the path is increased.
    func prependIndex(index_: CInt) {
        gtk_tree_path_prepend_index(cast(tree_path_ptr), gint(index_))
    
    }

    /// Moves the `path` to point to the previous node at the
    /// current depth, if it exists.
    func prev() -> Bool {
        let rv = gtk_tree_path_prev(cast(tree_path_ptr))
        return Bool(rv != 0)
    }

    /// Generates a string representation of the path.
    /// 
    /// This string is a “:” separated list of numbers.
    /// For example, “4:10:0:3” would be an acceptable
    /// return value for this string.
    func toString() -> String! {
        let rv = gtk_tree_path_to_string(cast(tree_path_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Moves the `path` to point to its parent node, if it has a parent.
    func up() -> Bool {
        let rv = gtk_tree_path_up(cast(tree_path_ptr))
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
    /// gtk_tree_path_free().
    func treeGetRowDragData(selectionData selection_data: SelectionDataProtocol, treeModel tree_model: TreeModelProtocol) -> Bool {
        let rv = gtk_tree_get_row_drag_data(cast(selection_data.ptr), cast(tree_model.ptr), cast(tree_path_ptr))
        return Bool(rv != 0)
    }

    /// Lets a set of row reference created by
    /// gtk_tree_row_reference_new_proxy() know that the
    /// model emitted the `GtkTreeModel`::row-deleted signal.
    func treeRowReferenceDeleted(proxy: GLibObject.ObjectProtocol) {
        gtk_tree_row_reference_deleted(cast(proxy.ptr), cast(tree_path_ptr))
    
    }

    /// Lets a set of row reference created by
    /// gtk_tree_row_reference_new_proxy() know that the
    /// model emitted the `GtkTreeModel`::row-inserted signal.
    func treeRowReferenceInserted(proxy: GLibObject.ObjectProtocol) {
        gtk_tree_row_reference_inserted(cast(proxy.ptr), cast(tree_path_ptr))
    
    }

    /// Lets a set of row reference created by
    /// gtk_tree_row_reference_new_proxy() know that the
    /// model emitted the `GtkTreeModel`::rows-reordered signal.
    func treeRowReferenceReordered(proxy: GLibObject.ObjectProtocol, iter: TreeIterProtocol, newOrder new_order: UnsafeMutablePointer<CInt>) {
        gtk_tree_row_reference_reordered(cast(proxy.ptr), cast(tree_path_ptr), cast(iter.ptr), cast(new_order))
    
    }

    /// Sets selection data of target type `GTK_TREE_MODEL_ROW`. Normally used
    /// in a drag_data_get handler.
    func treeSetRowDragData(selectionData selection_data: SelectionDataProtocol, treeModel tree_model: TreeModelProtocol) -> Bool {
        let rv = gtk_tree_set_row_drag_data(cast(selection_data.ptr), cast(tree_model.ptr), cast(tree_path_ptr))
        return Bool(rv != 0)
    }
    /// Returns the current depth of `path`.
    var depth: CInt {
        /// Returns the current depth of `path`.
        get {
            let rv = gtk_tree_path_get_depth(cast(tree_path_ptr))
            return CInt(rv)
        }
    }

    /// Returns the current indices of `path`.
    /// 
    /// This is an array of integers, each representing a node in a tree.
    /// This value should not be freed.
    /// 
    /// The length of the array can be obtained with gtk_tree_path_get_depth().
    var indices: UnsafeMutablePointer<CInt>! {
        /// Returns the current indices of `path`.
        /// 
        /// This is an array of integers, each representing a node in a tree.
        /// This value should not be freed.
        /// 
        /// The length of the array can be obtained with gtk_tree_path_get_depth().
        get {
            let rv = gtk_tree_path_get_indices(cast(tree_path_ptr))
            return cast(rv)
        }
    }
}



// MARK: - TreeRowReference Record

/// The `TreeRowReferenceProtocol` protocol exposes the methods and properties of an underlying `GtkTreeRowReference` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeRowReference`.
/// Alternatively, use `TreeRowReferenceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkTreeRowReference tracks model changes so that it always refers to the
/// same row (a `GtkTreePath` refers to a position, not a fixed row). Create a
/// new GtkTreeRowReference with gtk_tree_row_reference_new().
public protocol TreeRowReferenceProtocol {
    /// Untyped pointer to the underlying `GtkTreeRowReference` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeRowReference` instance.
    var tree_row_reference_ptr: UnsafeMutablePointer<GtkTreeRowReference> { get }
}

/// The `TreeRowReferenceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeRowReference` instance.
/// It exposes methods that can operate on this data type through `TreeRowReferenceProtocol` conformance.
/// Use `TreeRowReferenceRef` only as an `unowned` reference to an existing `GtkTreeRowReference` instance.
///
/// A GtkTreeRowReference tracks model changes so that it always refers to the
/// same row (a `GtkTreePath` refers to a position, not a fixed row). Create a
/// new GtkTreeRowReference with gtk_tree_row_reference_new().
public struct TreeRowReferenceRef: TreeRowReferenceProtocol {
    /// Untyped pointer to the underlying `GtkTreeRowReference` instance.
    /// For type-safe access, use the generated, typed pointer `tree_row_reference_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeRowReferenceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeRowReference>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeRowReferenceProtocol`
    init<T: TreeRowReferenceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. Any changes that occur on `model` are
    /// propagated, and the path is updated appropriately. If
    /// `path` isn’t a valid path in `model`, then `nil` is returned.
    init( model: TreeModelProtocol, path: TreePathProtocol) {
        let rv = gtk_tree_row_reference_new(cast(model.ptr), cast(path.ptr))
        self.init(cast(rv))
    }

    /// You do not need to use this function.
    /// 
    /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. If `path` isn’t a valid
    /// path in `model`, then `nil` is returned. However, unlike
    /// references created with gtk_tree_row_reference_new(), it
    /// does not listen to the model for changes. The creator of
    /// the row reference must do this explicitly using
    /// gtk_tree_row_reference_inserted(), gtk_tree_row_reference_deleted(),
    /// gtk_tree_row_reference_reordered().
    /// 
    /// These functions must be called exactly once per proxy when the
    /// corresponding signal on the model is emitted. This single call
    /// updates all row references for that proxy. Since built-in GTK+
    /// objects like `GtkTreeView` already use this mechanism internally,
    /// using them as the proxy object will produce unpredictable results.
    /// Further more, passing the same object as `model` and `proxy`
    /// doesn’t work for reasons of internal implementation.
    /// 
    /// This type of row reference is primarily meant by structures that
    /// need to carefully monitor exactly when a row reference updates
    /// itself, and is not generally needed by most applications.
    init(proxy: GLibObject.ObjectProtocol, model: TreeModelProtocol, path: TreePathProtocol) {
        let rv = gtk_tree_row_reference_new_proxy(cast(proxy.ptr), cast(model.ptr), cast(path.ptr))
        self.init(cast(rv))
    }
    /// You do not need to use this function.
    /// 
    /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. If `path` isn’t a valid
    /// path in `model`, then `nil` is returned. However, unlike
    /// references created with gtk_tree_row_reference_new(), it
    /// does not listen to the model for changes. The creator of
    /// the row reference must do this explicitly using
    /// gtk_tree_row_reference_inserted(), gtk_tree_row_reference_deleted(),
    /// gtk_tree_row_reference_reordered().
    /// 
    /// These functions must be called exactly once per proxy when the
    /// corresponding signal on the model is emitted. This single call
    /// updates all row references for that proxy. Since built-in GTK+
    /// objects like `GtkTreeView` already use this mechanism internally,
    /// using them as the proxy object will produce unpredictable results.
    /// Further more, passing the same object as `model` and `proxy`
    /// doesn’t work for reasons of internal implementation.
    /// 
    /// This type of row reference is primarily meant by structures that
    /// need to carefully monitor exactly when a row reference updates
    /// itself, and is not generally needed by most applications.
    static func new(proxy: GLibObject.ObjectProtocol, model: TreeModelProtocol, path: TreePathProtocol) -> TreeRowReferenceRef! {
        let rv = gtk_tree_row_reference_new_proxy(cast(proxy.ptr), cast(model.ptr), cast(path.ptr))
        return rv.map { TreeRowReferenceRef(cast($0)) }
    }
}

/// The `TreeRowReference` type acts as an owner of an underlying `GtkTreeRowReference` instance.
/// It provides the methods that can operate on this data type through `TreeRowReferenceProtocol` conformance.
/// Use `TreeRowReference` as a strong reference or owner of a `GtkTreeRowReference` instance.
///
/// A GtkTreeRowReference tracks model changes so that it always refers to the
/// same row (a `GtkTreePath` refers to a position, not a fixed row). Create a
/// new GtkTreeRowReference with gtk_tree_row_reference_new().
open class TreeRowReference: TreeRowReferenceProtocol {
    /// Untyped pointer to the underlying `GtkTreeRowReference` instance.
    /// For type-safe access, use the generated, typed pointer `tree_row_reference_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeRowReference` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeRowReference>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeRowReferenceProtocol`
    /// `GtkTreeRowReference` does not allow reference counting.
    public convenience init<T: TreeRowReferenceProtocol>(_ other: T) {
        self.init(cast(other.tree_row_reference_ptr))
        // no reference counting for GtkTreeRowReference, cannot ref(cast(tree_row_reference_ptr))
    }

    /// Do-nothing destructor for`GtkTreeRowReference`.
    deinit {
        // no reference counting for GtkTreeRowReference, cannot unref(cast(tree_row_reference_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeRowReference.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeRowReference.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeRowReference.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeRowReference>(opaquePointer))
    }

    /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. Any changes that occur on `model` are
    /// propagated, and the path is updated appropriately. If
    /// `path` isn’t a valid path in `model`, then `nil` is returned.
    public convenience init( model: TreeModelProtocol, path: TreePathProtocol) {
        let rv = gtk_tree_row_reference_new(cast(model.ptr), cast(path.ptr))
        self.init(cast(rv))
    }

    /// You do not need to use this function.
    /// 
    /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. If `path` isn’t a valid
    /// path in `model`, then `nil` is returned. However, unlike
    /// references created with gtk_tree_row_reference_new(), it
    /// does not listen to the model for changes. The creator of
    /// the row reference must do this explicitly using
    /// gtk_tree_row_reference_inserted(), gtk_tree_row_reference_deleted(),
    /// gtk_tree_row_reference_reordered().
    /// 
    /// These functions must be called exactly once per proxy when the
    /// corresponding signal on the model is emitted. This single call
    /// updates all row references for that proxy. Since built-in GTK+
    /// objects like `GtkTreeView` already use this mechanism internally,
    /// using them as the proxy object will produce unpredictable results.
    /// Further more, passing the same object as `model` and `proxy`
    /// doesn’t work for reasons of internal implementation.
    /// 
    /// This type of row reference is primarily meant by structures that
    /// need to carefully monitor exactly when a row reference updates
    /// itself, and is not generally needed by most applications.
    public convenience init(proxy: GLibObject.ObjectProtocol, model: TreeModelProtocol, path: TreePathProtocol) {
        let rv = gtk_tree_row_reference_new_proxy(cast(proxy.ptr), cast(model.ptr), cast(path.ptr))
        self.init(cast(rv))
    }

    /// You do not need to use this function.
    /// 
    /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. If `path` isn’t a valid
    /// path in `model`, then `nil` is returned. However, unlike
    /// references created with gtk_tree_row_reference_new(), it
    /// does not listen to the model for changes. The creator of
    /// the row reference must do this explicitly using
    /// gtk_tree_row_reference_inserted(), gtk_tree_row_reference_deleted(),
    /// gtk_tree_row_reference_reordered().
    /// 
    /// These functions must be called exactly once per proxy when the
    /// corresponding signal on the model is emitted. This single call
    /// updates all row references for that proxy. Since built-in GTK+
    /// objects like `GtkTreeView` already use this mechanism internally,
    /// using them as the proxy object will produce unpredictable results.
    /// Further more, passing the same object as `model` and `proxy`
    /// doesn’t work for reasons of internal implementation.
    /// 
    /// This type of row reference is primarily meant by structures that
    /// need to carefully monitor exactly when a row reference updates
    /// itself, and is not generally needed by most applications.
    public static func new(proxy: GLibObject.ObjectProtocol, model: TreeModelProtocol, path: TreePathProtocol) -> TreeRowReference! {
        let rv = gtk_tree_row_reference_new_proxy(cast(proxy.ptr), cast(model.ptr), cast(path.ptr))
        return rv.map { TreeRowReference(cast($0)) }
    }

}

// MARK: - no TreeRowReference properties

// MARK: - no signals


public extension TreeRowReferenceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeRowReference` instance.
    var tree_row_reference_ptr: UnsafeMutablePointer<GtkTreeRowReference> { return ptr.assumingMemoryBound(to: GtkTreeRowReference.self) }

    /// Copies a `GtkTreeRowReference`.
    func copy() -> UnsafeMutablePointer<GtkTreeRowReference>! {
        let rv = gtk_tree_row_reference_copy(cast(tree_row_reference_ptr))
        return cast(rv)
    }

    /// Free’s `reference`. `reference` may be `nil`
    func free() {
        gtk_tree_row_reference_free(cast(tree_row_reference_ptr))
    
    }

    /// Returns the model that the row reference is monitoring.
    func getModel() -> UnsafeMutablePointer<GtkTreeModel>! {
        let rv = gtk_tree_row_reference_get_model(cast(tree_row_reference_ptr))
        return cast(rv)
    }

    /// Returns a path that the row reference currently points to,
    /// or `nil` if the path pointed to is no longer valid.
    func getPath() -> UnsafeMutablePointer<GtkTreePath>! {
        let rv = gtk_tree_row_reference_get_path(cast(tree_row_reference_ptr))
        return cast(rv)
    }

    /// Returns `true` if the `reference` is non-`nil` and refers to
    /// a current valid path.
    func valid() -> Bool {
        let rv = gtk_tree_row_reference_valid(cast(tree_row_reference_ptr))
        return Bool(rv != 0)
    }
    /// Returns the model that the row reference is monitoring.
    var model: UnsafeMutablePointer<GtkTreeModel>! {
        /// Returns the model that the row reference is monitoring.
        get {
            let rv = gtk_tree_row_reference_get_model(cast(tree_row_reference_ptr))
            return cast(rv)
        }
    }

    /// Returns a path that the row reference currently points to,
    /// or `nil` if the path pointed to is no longer valid.
    var path: UnsafeMutablePointer<GtkTreePath>! {
        /// Returns a path that the row reference currently points to,
        /// or `nil` if the path pointed to is no longer valid.
        get {
            let rv = gtk_tree_row_reference_get_path(cast(tree_row_reference_ptr))
            return cast(rv)
        }
    }
}



// MARK: - TreeSelectionClass Record

/// The `TreeSelectionClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeSelectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeSelectionClass`.
/// Alternatively, use `TreeSelectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeSelectionClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeSelectionClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeSelectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeSelectionClass> { get }
}

/// The `TreeSelectionClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeSelectionClass` instance.
/// It exposes methods that can operate on this data type through `TreeSelectionClassProtocol` conformance.
/// Use `TreeSelectionClassRef` only as an `unowned` reference to an existing `GtkTreeSelectionClass` instance.
///

public struct TreeSelectionClassRef: TreeSelectionClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeSelectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeSelectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeSelectionClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeSelectionClassProtocol`
    init<T: TreeSelectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeSelectionClass` type acts as an owner of an underlying `GtkTreeSelectionClass` instance.
/// It provides the methods that can operate on this data type through `TreeSelectionClassProtocol` conformance.
/// Use `TreeSelectionClass` as a strong reference or owner of a `GtkTreeSelectionClass` instance.
///

open class TreeSelectionClass: TreeSelectionClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeSelectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeSelectionClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeSelectionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeSelectionClassProtocol`
    /// `GtkTreeSelectionClass` does not allow reference counting.
    public convenience init<T: TreeSelectionClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeSelectionClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeSelectionClass`.
    deinit {
        // no reference counting for GtkTreeSelectionClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeSelectionClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeSelectionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeSelectionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeSelectionClass>(opaquePointer))
    }



}

// MARK: - no TreeSelectionClass properties

// MARK: - no signals


public extension TreeSelectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeSelectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeSelectionClass> { return ptr.assumingMemoryBound(to: GtkTreeSelectionClass.self) }

}



// MARK: - TreeSelectionPrivate Record

/// The `TreeSelectionPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkTreeSelectionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeSelectionPrivate`.
/// Alternatively, use `TreeSelectionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeSelectionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeSelectionPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeSelectionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeSelectionPrivate> { get }
}

/// The `TreeSelectionPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkTreeSelectionPrivate` instance.
/// It exposes methods that can operate on this data type through `TreeSelectionPrivateProtocol` conformance.
/// Use `TreeSelectionPrivateRef` only as an `unowned` reference to an existing `GtkTreeSelectionPrivate` instance.
///

public struct TreeSelectionPrivateRef: TreeSelectionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeSelectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeSelectionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeSelectionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeSelectionPrivateProtocol`
    init<T: TreeSelectionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeSelectionPrivate` type acts as an owner of an underlying `GtkTreeSelectionPrivate` instance.
/// It provides the methods that can operate on this data type through `TreeSelectionPrivateProtocol` conformance.
/// Use `TreeSelectionPrivate` as a strong reference or owner of a `GtkTreeSelectionPrivate` instance.
///

open class TreeSelectionPrivate: TreeSelectionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeSelectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeSelectionPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeSelectionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeSelectionPrivateProtocol`
    /// `GtkTreeSelectionPrivate` does not allow reference counting.
    public convenience init<T: TreeSelectionPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeSelectionPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeSelectionPrivate`.
    deinit {
        // no reference counting for GtkTreeSelectionPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeSelectionPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeSelectionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeSelectionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSelectionPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeSelectionPrivate>(opaquePointer))
    }



}

// MARK: - no TreeSelectionPrivate properties

// MARK: - no signals


public extension TreeSelectionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeSelectionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeSelectionPrivate> { return ptr.assumingMemoryBound(to: GtkTreeSelectionPrivate.self) }

}



// MARK: - TreeSortableIface Record

/// The `TreeSortableIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkTreeSortableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeSortableIface`.
/// Alternatively, use `TreeSortableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeSortableIfaceProtocol {
    /// Untyped pointer to the underlying `GtkTreeSortableIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeSortableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeSortableIface> { get }
}

/// The `TreeSortableIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeSortableIface` instance.
/// It exposes methods that can operate on this data type through `TreeSortableIfaceProtocol` conformance.
/// Use `TreeSortableIfaceRef` only as an `unowned` reference to an existing `GtkTreeSortableIface` instance.
///

public struct TreeSortableIfaceRef: TreeSortableIfaceProtocol {
    /// Untyped pointer to the underlying `GtkTreeSortableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeSortableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeSortableIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeSortableIfaceProtocol`
    init<T: TreeSortableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeSortableIface` type acts as an owner of an underlying `GtkTreeSortableIface` instance.
/// It provides the methods that can operate on this data type through `TreeSortableIfaceProtocol` conformance.
/// Use `TreeSortableIface` as a strong reference or owner of a `GtkTreeSortableIface` instance.
///

open class TreeSortableIface: TreeSortableIfaceProtocol {
    /// Untyped pointer to the underlying `GtkTreeSortableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeSortableIface` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeSortableIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeSortableIfaceProtocol`
    /// `GtkTreeSortableIface` does not allow reference counting.
    public convenience init<T: TreeSortableIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeSortableIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeSortableIface`.
    deinit {
        // no reference counting for GtkTreeSortableIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeSortableIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeSortableIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeSortableIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeSortableIface>(opaquePointer))
    }



}

// MARK: - no TreeSortableIface properties

// MARK: - no signals


public extension TreeSortableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeSortableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeSortableIface> { return ptr.assumingMemoryBound(to: GtkTreeSortableIface.self) }

}



// MARK: - TreeStoreClass Record

/// The `TreeStoreClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeStoreClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeStoreClass`.
/// Alternatively, use `TreeStoreClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeStoreClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeStoreClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeStoreClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeStoreClass> { get }
}

/// The `TreeStoreClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeStoreClass` instance.
/// It exposes methods that can operate on this data type through `TreeStoreClassProtocol` conformance.
/// Use `TreeStoreClassRef` only as an `unowned` reference to an existing `GtkTreeStoreClass` instance.
///

public struct TreeStoreClassRef: TreeStoreClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeStoreClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeStoreClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeStoreClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeStoreClassProtocol`
    init<T: TreeStoreClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeStoreClass` type acts as an owner of an underlying `GtkTreeStoreClass` instance.
/// It provides the methods that can operate on this data type through `TreeStoreClassProtocol` conformance.
/// Use `TreeStoreClass` as a strong reference or owner of a `GtkTreeStoreClass` instance.
///

open class TreeStoreClass: TreeStoreClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeStoreClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeStoreClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeStoreClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeStoreClassProtocol`
    /// `GtkTreeStoreClass` does not allow reference counting.
    public convenience init<T: TreeStoreClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeStoreClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeStoreClass`.
    deinit {
        // no reference counting for GtkTreeStoreClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeStoreClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeStoreClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeStoreClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeStoreClass>(opaquePointer))
    }



}

// MARK: - no TreeStoreClass properties

// MARK: - no signals


public extension TreeStoreClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeStoreClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeStoreClass> { return ptr.assumingMemoryBound(to: GtkTreeStoreClass.self) }

}



// MARK: - TreeStorePrivate Record

/// The `TreeStorePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkTreeStorePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeStorePrivate`.
/// Alternatively, use `TreeStorePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeStorePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeStorePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeStorePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeStorePrivate> { get }
}

/// The `TreeStorePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkTreeStorePrivate` instance.
/// It exposes methods that can operate on this data type through `TreeStorePrivateProtocol` conformance.
/// Use `TreeStorePrivateRef` only as an `unowned` reference to an existing `GtkTreeStorePrivate` instance.
///

public struct TreeStorePrivateRef: TreeStorePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeStorePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeStorePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeStorePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeStorePrivateProtocol`
    init<T: TreeStorePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStorePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStorePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStorePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStorePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStorePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeStorePrivate` type acts as an owner of an underlying `GtkTreeStorePrivate` instance.
/// It provides the methods that can operate on this data type through `TreeStorePrivateProtocol` conformance.
/// Use `TreeStorePrivate` as a strong reference or owner of a `GtkTreeStorePrivate` instance.
///

open class TreeStorePrivate: TreeStorePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeStorePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeStorePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeStorePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeStorePrivateProtocol`
    /// `GtkTreeStorePrivate` does not allow reference counting.
    public convenience init<T: TreeStorePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeStorePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeStorePrivate`.
    deinit {
        // no reference counting for GtkTreeStorePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStorePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeStorePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStorePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeStorePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStorePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeStorePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStorePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeStorePrivate>(opaquePointer))
    }



}

// MARK: - no TreeStorePrivate properties

// MARK: - no signals


public extension TreeStorePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeStorePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeStorePrivate> { return ptr.assumingMemoryBound(to: GtkTreeStorePrivate.self) }

}



// MARK: - TreeViewAccessibleClass Record

/// The `TreeViewAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeViewAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeViewAccessibleClass`.
/// Alternatively, use `TreeViewAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeViewAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeViewAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewAccessibleClass> { get }
}

/// The `TreeViewAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeViewAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `TreeViewAccessibleClassProtocol` conformance.
/// Use `TreeViewAccessibleClassRef` only as an `unowned` reference to an existing `GtkTreeViewAccessibleClass` instance.
///

public struct TreeViewAccessibleClassRef: TreeViewAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeViewAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeViewAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeViewAccessibleClassProtocol`
    init<T: TreeViewAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeViewAccessibleClass` type acts as an owner of an underlying `GtkTreeViewAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `TreeViewAccessibleClassProtocol` conformance.
/// Use `TreeViewAccessibleClass` as a strong reference or owner of a `GtkTreeViewAccessibleClass` instance.
///

open class TreeViewAccessibleClass: TreeViewAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeViewAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeViewAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeViewAccessibleClassProtocol`
    /// `GtkTreeViewAccessibleClass` does not allow reference counting.
    public convenience init<T: TreeViewAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeViewAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeViewAccessibleClass`.
    deinit {
        // no reference counting for GtkTreeViewAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeViewAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeViewAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeViewAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeViewAccessibleClass>(opaquePointer))
    }



}

// MARK: - no TreeViewAccessibleClass properties

// MARK: - no signals


public extension TreeViewAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeViewAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewAccessibleClass> { return ptr.assumingMemoryBound(to: GtkTreeViewAccessibleClass.self) }

}



// MARK: - TreeViewAccessiblePrivate Record

/// The `TreeViewAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkTreeViewAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeViewAccessiblePrivate`.
/// Alternatively, use `TreeViewAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeViewAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeViewAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewAccessiblePrivate> { get }
}

/// The `TreeViewAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkTreeViewAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `TreeViewAccessiblePrivateProtocol` conformance.
/// Use `TreeViewAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkTreeViewAccessiblePrivate` instance.
///

public struct TreeViewAccessiblePrivateRef: TreeViewAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeViewAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeViewAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeViewAccessiblePrivateProtocol`
    init<T: TreeViewAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeViewAccessiblePrivate` type acts as an owner of an underlying `GtkTreeViewAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `TreeViewAccessiblePrivateProtocol` conformance.
/// Use `TreeViewAccessiblePrivate` as a strong reference or owner of a `GtkTreeViewAccessiblePrivate` instance.
///

open class TreeViewAccessiblePrivate: TreeViewAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeViewAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeViewAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeViewAccessiblePrivateProtocol`
    /// `GtkTreeViewAccessiblePrivate` does not allow reference counting.
    public convenience init<T: TreeViewAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeViewAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeViewAccessiblePrivate`.
    deinit {
        // no reference counting for GtkTreeViewAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeViewAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeViewAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeViewAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeViewAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no TreeViewAccessiblePrivate properties

// MARK: - no signals


public extension TreeViewAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeViewAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkTreeViewAccessiblePrivate.self) }

}



// MARK: - TreeViewClass Record

/// The `TreeViewClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeViewClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeViewClass`.
/// Alternatively, use `TreeViewClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeViewClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewClass> { get }
}

/// The `TreeViewClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeViewClass` instance.
/// It exposes methods that can operate on this data type through `TreeViewClassProtocol` conformance.
/// Use `TreeViewClassRef` only as an `unowned` reference to an existing `GtkTreeViewClass` instance.
///

public struct TreeViewClassRef: TreeViewClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeViewClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeViewClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeViewClassProtocol`
    init<T: TreeViewClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeViewClass` type acts as an owner of an underlying `GtkTreeViewClass` instance.
/// It provides the methods that can operate on this data type through `TreeViewClassProtocol` conformance.
/// Use `TreeViewClass` as a strong reference or owner of a `GtkTreeViewClass` instance.
///

open class TreeViewClass: TreeViewClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeViewClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeViewClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeViewClassProtocol`
    /// `GtkTreeViewClass` does not allow reference counting.
    public convenience init<T: TreeViewClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeViewClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeViewClass`.
    deinit {
        // no reference counting for GtkTreeViewClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeViewClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeViewClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeViewClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeViewClass>(opaquePointer))
    }



}

// MARK: - no TreeViewClass properties

// MARK: - no signals


public extension TreeViewClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewClass> { return ptr.assumingMemoryBound(to: GtkTreeViewClass.self) }

}



// MARK: - TreeViewColumnClass Record

/// The `TreeViewColumnClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeViewColumnClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeViewColumnClass`.
/// Alternatively, use `TreeViewColumnClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeViewColumnClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewColumnClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeViewColumnClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewColumnClass> { get }
}

/// The `TreeViewColumnClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeViewColumnClass` instance.
/// It exposes methods that can operate on this data type through `TreeViewColumnClassProtocol` conformance.
/// Use `TreeViewColumnClassRef` only as an `unowned` reference to an existing `GtkTreeViewColumnClass` instance.
///

public struct TreeViewColumnClassRef: TreeViewColumnClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewColumnClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeViewColumnClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeViewColumnClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeViewColumnClassProtocol`
    init<T: TreeViewColumnClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeViewColumnClass` type acts as an owner of an underlying `GtkTreeViewColumnClass` instance.
/// It provides the methods that can operate on this data type through `TreeViewColumnClassProtocol` conformance.
/// Use `TreeViewColumnClass` as a strong reference or owner of a `GtkTreeViewColumnClass` instance.
///

open class TreeViewColumnClass: TreeViewColumnClassProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewColumnClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeViewColumnClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeViewColumnClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeViewColumnClassProtocol`
    /// `GtkTreeViewColumnClass` does not allow reference counting.
    public convenience init<T: TreeViewColumnClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeViewColumnClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeViewColumnClass`.
    deinit {
        // no reference counting for GtkTreeViewColumnClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeViewColumnClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeViewColumnClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeViewColumnClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeViewColumnClass>(opaquePointer))
    }



}

// MARK: - no TreeViewColumnClass properties

// MARK: - no signals


public extension TreeViewColumnClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeViewColumnClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewColumnClass> { return ptr.assumingMemoryBound(to: GtkTreeViewColumnClass.self) }

}



// MARK: - TreeViewColumnPrivate Record

/// The `TreeViewColumnPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkTreeViewColumnPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeViewColumnPrivate`.
/// Alternatively, use `TreeViewColumnPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeViewColumnPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewColumnPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeViewColumnPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewColumnPrivate> { get }
}

/// The `TreeViewColumnPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkTreeViewColumnPrivate` instance.
/// It exposes methods that can operate on this data type through `TreeViewColumnPrivateProtocol` conformance.
/// Use `TreeViewColumnPrivateRef` only as an `unowned` reference to an existing `GtkTreeViewColumnPrivate` instance.
///

public struct TreeViewColumnPrivateRef: TreeViewColumnPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewColumnPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeViewColumnPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeViewColumnPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeViewColumnPrivateProtocol`
    init<T: TreeViewColumnPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeViewColumnPrivate` type acts as an owner of an underlying `GtkTreeViewColumnPrivate` instance.
/// It provides the methods that can operate on this data type through `TreeViewColumnPrivateProtocol` conformance.
/// Use `TreeViewColumnPrivate` as a strong reference or owner of a `GtkTreeViewColumnPrivate` instance.
///

open class TreeViewColumnPrivate: TreeViewColumnPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewColumnPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeViewColumnPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeViewColumnPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeViewColumnPrivateProtocol`
    /// `GtkTreeViewColumnPrivate` does not allow reference counting.
    public convenience init<T: TreeViewColumnPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeViewColumnPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeViewColumnPrivate`.
    deinit {
        // no reference counting for GtkTreeViewColumnPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeViewColumnPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeViewColumnPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeViewColumnPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewColumnPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeViewColumnPrivate>(opaquePointer))
    }



}

// MARK: - no TreeViewColumnPrivate properties

// MARK: - no signals


public extension TreeViewColumnPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeViewColumnPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewColumnPrivate> { return ptr.assumingMemoryBound(to: GtkTreeViewColumnPrivate.self) }

}



// MARK: - TreeViewPrivate Record

/// The `TreeViewPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkTreeViewPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeViewPrivate`.
/// Alternatively, use `TreeViewPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeViewPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeViewPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewPrivate> { get }
}

/// The `TreeViewPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkTreeViewPrivate` instance.
/// It exposes methods that can operate on this data type through `TreeViewPrivateProtocol` conformance.
/// Use `TreeViewPrivateRef` only as an `unowned` reference to an existing `GtkTreeViewPrivate` instance.
///

public struct TreeViewPrivateRef: TreeViewPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeViewPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeViewPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeViewPrivateProtocol`
    init<T: TreeViewPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeViewPrivate` type acts as an owner of an underlying `GtkTreeViewPrivate` instance.
/// It provides the methods that can operate on this data type through `TreeViewPrivateProtocol` conformance.
/// Use `TreeViewPrivate` as a strong reference or owner of a `GtkTreeViewPrivate` instance.
///

open class TreeViewPrivate: TreeViewPrivateProtocol {
    /// Untyped pointer to the underlying `GtkTreeViewPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeViewPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeViewPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeViewPrivateProtocol`
    /// `GtkTreeViewPrivate` does not allow reference counting.
    public convenience init<T: TreeViewPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkTreeViewPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkTreeViewPrivate`.
    deinit {
        // no reference counting for GtkTreeViewPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeViewPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeViewPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeViewPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeViewPrivate>(opaquePointer))
    }



}

// MARK: - no TreeViewPrivate properties

// MARK: - no signals


public extension TreeViewPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeViewPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewPrivate> { return ptr.assumingMemoryBound(to: GtkTreeViewPrivate.self) }

}



// MARK: - UIManagerClass Record

/// The `UIManagerClassProtocol` protocol exposes the methods and properties of an underlying `GtkUIManagerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UIManagerClass`.
/// Alternatively, use `UIManagerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UIManagerClassProtocol {
    /// Untyped pointer to the underlying `GtkUIManagerClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkUIManagerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkUIManagerClass> { get }
}

/// The `UIManagerClassRef` type acts as a lightweight Swift reference to an underlying `GtkUIManagerClass` instance.
/// It exposes methods that can operate on this data type through `UIManagerClassProtocol` conformance.
/// Use `UIManagerClassRef` only as an `unowned` reference to an existing `GtkUIManagerClass` instance.
///

public struct UIManagerClassRef: UIManagerClassProtocol {
    /// Untyped pointer to the underlying `GtkUIManagerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UIManagerClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkUIManagerClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UIManagerClassProtocol`
    init<T: UIManagerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UIManagerClass` type acts as an owner of an underlying `GtkUIManagerClass` instance.
/// It provides the methods that can operate on this data type through `UIManagerClassProtocol` conformance.
/// Use `UIManagerClass` as a strong reference or owner of a `GtkUIManagerClass` instance.
///

open class UIManagerClass: UIManagerClassProtocol {
    /// Untyped pointer to the underlying `GtkUIManagerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `UIManagerClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkUIManagerClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `UIManagerClassProtocol`
    /// `GtkUIManagerClass` does not allow reference counting.
    public convenience init<T: UIManagerClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkUIManagerClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkUIManagerClass`.
    deinit {
        // no reference counting for GtkUIManagerClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkUIManagerClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkUIManagerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkUIManagerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkUIManagerClass>(opaquePointer))
    }



}

// MARK: - no UIManagerClass properties

// MARK: - no signals


public extension UIManagerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkUIManagerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkUIManagerClass> { return ptr.assumingMemoryBound(to: GtkUIManagerClass.self) }

}



