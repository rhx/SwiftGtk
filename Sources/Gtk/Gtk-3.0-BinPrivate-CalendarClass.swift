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

// MARK: - BinPrivate Record

/// The `BinPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkBinPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BinPrivate`.
/// Alternatively, use `BinPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BinPrivateProtocol {
    /// Untyped pointer to the underlying `GtkBinPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBinPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkBinPrivate> { get }
}

/// The `BinPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkBinPrivate` instance.
/// It exposes methods that can operate on this data type through `BinPrivateProtocol` conformance.
/// Use `BinPrivateRef` only as an `unowned` reference to an existing `GtkBinPrivate` instance.
///

public struct BinPrivateRef: BinPrivateProtocol {
    /// Untyped pointer to the underlying `GtkBinPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BinPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBinPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BinPrivateProtocol`
    init<T: BinPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BinPrivate` type acts as an owner of an underlying `GtkBinPrivate` instance.
/// It provides the methods that can operate on this data type through `BinPrivateProtocol` conformance.
/// Use `BinPrivate` as a strong reference or owner of a `GtkBinPrivate` instance.
///

open class BinPrivate: BinPrivateProtocol {
    /// Untyped pointer to the underlying `GtkBinPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BinPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkBinPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BinPrivateProtocol`
    /// `GtkBinPrivate` does not allow reference counting.
    public convenience init<T: BinPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkBinPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkBinPrivate`.
    deinit {
        // no reference counting for GtkBinPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBinPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBinPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBinPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBinPrivate>(opaquePointer))
    }



}

// MARK: - no BinPrivate properties

// MARK: - no signals


public extension BinPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBinPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkBinPrivate> { return ptr.assumingMemoryBound(to: GtkBinPrivate.self) }

}



// MARK: - BindingArg Record

/// The `BindingArgProtocol` protocol exposes the methods and properties of an underlying `GtkBindingArg` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BindingArg`.
/// Alternatively, use `BindingArgRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkBindingArg` holds the data associated with
/// an argument for a key binding signal emission as
/// stored in `GtkBindingSignal`.
public protocol BindingArgProtocol {
    /// Untyped pointer to the underlying `GtkBindingArg` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBindingArg` instance.
    var _ptr: UnsafeMutablePointer<GtkBindingArg> { get }
}

/// The `BindingArgRef` type acts as a lightweight Swift reference to an underlying `GtkBindingArg` instance.
/// It exposes methods that can operate on this data type through `BindingArgProtocol` conformance.
/// Use `BindingArgRef` only as an `unowned` reference to an existing `GtkBindingArg` instance.
///
/// A `GtkBindingArg` holds the data associated with
/// an argument for a key binding signal emission as
/// stored in `GtkBindingSignal`.
public struct BindingArgRef: BindingArgProtocol {
    /// Untyped pointer to the underlying `GtkBindingArg` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BindingArgRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBindingArg>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BindingArgProtocol`
    init<T: BindingArgProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BindingArg` type acts as an owner of an underlying `GtkBindingArg` instance.
/// It provides the methods that can operate on this data type through `BindingArgProtocol` conformance.
/// Use `BindingArg` as a strong reference or owner of a `GtkBindingArg` instance.
///
/// A `GtkBindingArg` holds the data associated with
/// an argument for a key binding signal emission as
/// stored in `GtkBindingSignal`.
open class BindingArg: BindingArgProtocol {
    /// Untyped pointer to the underlying `GtkBindingArg` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BindingArg` instance.
    public init(_ op: UnsafeMutablePointer<GtkBindingArg>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BindingArgProtocol`
    /// `GtkBindingArg` does not allow reference counting.
    public convenience init<T: BindingArgProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkBindingArg, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkBindingArg`.
    deinit {
        // no reference counting for GtkBindingArg, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBindingArg.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBindingArg.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBindingArg.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingArgProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBindingArg>(opaquePointer))
    }



}

// MARK: - no BindingArg properties

// MARK: - no signals


public extension BindingArgProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBindingArg` instance.
    var _ptr: UnsafeMutablePointer<GtkBindingArg> { return ptr.assumingMemoryBound(to: GtkBindingArg.self) }

}



// MARK: - BindingEntry Record

/// The `BindingEntryProtocol` protocol exposes the methods and properties of an underlying `GtkBindingEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BindingEntry`.
/// Alternatively, use `BindingEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Each key binding element of a binding sets binding list is
/// represented by a GtkBindingEntry.
public protocol BindingEntryProtocol {
    /// Untyped pointer to the underlying `GtkBindingEntry` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBindingEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkBindingEntry> { get }
}

/// The `BindingEntryRef` type acts as a lightweight Swift reference to an underlying `GtkBindingEntry` instance.
/// It exposes methods that can operate on this data type through `BindingEntryProtocol` conformance.
/// Use `BindingEntryRef` only as an `unowned` reference to an existing `GtkBindingEntry` instance.
///
/// Each key binding element of a binding sets binding list is
/// represented by a GtkBindingEntry.
public struct BindingEntryRef: BindingEntryProtocol {
    /// Untyped pointer to the underlying `GtkBindingEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BindingEntryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBindingEntry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BindingEntryProtocol`
    init<T: BindingEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BindingEntry` type acts as an owner of an underlying `GtkBindingEntry` instance.
/// It provides the methods that can operate on this data type through `BindingEntryProtocol` conformance.
/// Use `BindingEntry` as a strong reference or owner of a `GtkBindingEntry` instance.
///
/// Each key binding element of a binding sets binding list is
/// represented by a GtkBindingEntry.
open class BindingEntry: BindingEntryProtocol {
    /// Untyped pointer to the underlying `GtkBindingEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BindingEntry` instance.
    public init(_ op: UnsafeMutablePointer<GtkBindingEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BindingEntryProtocol`
    /// `GtkBindingEntry` does not allow reference counting.
    public convenience init<T: BindingEntryProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkBindingEntry, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkBindingEntry`.
    deinit {
        // no reference counting for GtkBindingEntry, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBindingEntry.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBindingEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBindingEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingEntryProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBindingEntry>(opaquePointer))
    }



}

// MARK: - no BindingEntry properties

// MARK: - no signals


public extension BindingEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBindingEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkBindingEntry> { return ptr.assumingMemoryBound(to: GtkBindingEntry.self) }

}



// MARK: - BindingSet Record

/// The `BindingSetProtocol` protocol exposes the methods and properties of an underlying `GtkBindingSet` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BindingSet`.
/// Alternatively, use `BindingSetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A binding set maintains a list of activatable key bindings.
/// A single binding set can match multiple types of widgets.
/// Similar to style contexts, can be matched by any information contained
/// in a widgets `GtkWidgetPath`. When a binding within a set is matched upon
/// activation, an action signal is emitted on the target widget to carry out
/// the actual activation.
public protocol BindingSetProtocol {
    /// Untyped pointer to the underlying `GtkBindingSet` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBindingSet` instance.
    var _ptr: UnsafeMutablePointer<GtkBindingSet> { get }
}

/// The `BindingSetRef` type acts as a lightweight Swift reference to an underlying `GtkBindingSet` instance.
/// It exposes methods that can operate on this data type through `BindingSetProtocol` conformance.
/// Use `BindingSetRef` only as an `unowned` reference to an existing `GtkBindingSet` instance.
///
/// A binding set maintains a list of activatable key bindings.
/// A single binding set can match multiple types of widgets.
/// Similar to style contexts, can be matched by any information contained
/// in a widgets `GtkWidgetPath`. When a binding within a set is matched upon
/// activation, an action signal is emitted on the target widget to carry out
/// the actual activation.
public struct BindingSetRef: BindingSetProtocol {
    /// Untyped pointer to the underlying `GtkBindingSet` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BindingSetRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBindingSet>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BindingSetProtocol`
    init<T: BindingSetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// This function returns the binding set named after the type name of
    /// the passed in class structure. New binding sets are created on
    /// demand by this function.
    static func byClass(objectClass object_class: UnsafeMutableRawPointer) -> BindingSetRef! {
        let rv = gtk_binding_set_by_class(cast(object_class))
        return rv.map { BindingSetRef(cast($0)) }
    }

    /// Find a binding set by its globally unique name.
    /// 
    /// The `set_name` can either be a name used for gtk_binding_set_new()
    /// or the type name of a class used in gtk_binding_set_by_class().
    static func find(setName set_name: UnsafePointer<gchar>) -> BindingSetRef! {
        let rv = gtk_binding_set_find(set_name)
        return rv.map { BindingSetRef(cast($0)) }
    }
}

/// The `BindingSet` type acts as an owner of an underlying `GtkBindingSet` instance.
/// It provides the methods that can operate on this data type through `BindingSetProtocol` conformance.
/// Use `BindingSet` as a strong reference or owner of a `GtkBindingSet` instance.
///
/// A binding set maintains a list of activatable key bindings.
/// A single binding set can match multiple types of widgets.
/// Similar to style contexts, can be matched by any information contained
/// in a widgets `GtkWidgetPath`. When a binding within a set is matched upon
/// activation, an action signal is emitted on the target widget to carry out
/// the actual activation.
open class BindingSet: BindingSetProtocol {
    /// Untyped pointer to the underlying `GtkBindingSet` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BindingSet` instance.
    public init(_ op: UnsafeMutablePointer<GtkBindingSet>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BindingSetProtocol`
    /// `GtkBindingSet` does not allow reference counting.
    public convenience init<T: BindingSetProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkBindingSet, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkBindingSet`.
    deinit {
        // no reference counting for GtkBindingSet, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBindingSet.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBindingSet.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBindingSet.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSetProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBindingSet>(opaquePointer))
    }


    /// This function returns the binding set named after the type name of
    /// the passed in class structure. New binding sets are created on
    /// demand by this function.
    public static func byClass(objectClass object_class: UnsafeMutableRawPointer) -> BindingSet! {
        let rv = gtk_binding_set_by_class(cast(object_class))
        return rv.map { BindingSet(cast($0)) }
    }

    /// Find a binding set by its globally unique name.
    /// 
    /// The `set_name` can either be a name used for gtk_binding_set_new()
    /// or the type name of a class used in gtk_binding_set_by_class().
    public static func find(setName set_name: UnsafePointer<gchar>) -> BindingSet! {
        let rv = gtk_binding_set_find(set_name)
        return rv.map { BindingSet(cast($0)) }
    }

}

// MARK: - no BindingSet properties

// MARK: - no signals


public extension BindingSetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBindingSet` instance.
    var _ptr: UnsafeMutablePointer<GtkBindingSet> { return ptr.assumingMemoryBound(to: GtkBindingSet.self) }

    /// Find a key binding matching `keyval` and `modifiers` within
    /// `binding_set` and activate the binding on `object`.
    func activate(keyval: CUnsignedInt, modifiers: Gdk.ModifierType, object: GLibObject.ObjectProtocol) -> Bool {
        let rv = gtk_binding_set_activate(cast(_ptr), guint(keyval), modifiers, cast(object.ptr))
        return Bool(rv != 0)
    }

    /// This function was used internally by the GtkRC parsing mechanism
    /// to assign match patterns to `GtkBindingSet` structures.
    /// 
    /// In GTK+ 3, these match patterns are unused.
    ///
    /// **add_path is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func addPath(pathType path_type: PathType, pathPattern path_pattern: UnsafePointer<gchar>, priority: PathPriorityType) {
        gtk_binding_set_add_path(cast(_ptr), path_type, path_pattern, priority)
    
    }

    /// Parses a signal description from `signal_desc` and incorporates
    /// it into `binding_set`.
    /// 
    /// Signal descriptions may either bind a key combination to
    /// one or more signals:
    /// ```
    ///   bind "key" {
    ///     "signalname" (param, ...)
    ///     ...
    ///   }
    /// ```
    /// 
    /// 
    /// Or they may also unbind a key combination:
    /// ```
    ///   unbind "key"
    /// ```
    /// 
    /// 
    /// Key combinations must be in a format that can be parsed by
    /// gtk_accelerator_parse().
    func bindingEntryAddSignalFromString(signalDesc signal_desc: UnsafePointer<gchar>) -> GTokenType {
        let rv = gtk_binding_entry_add_signal_from_string(cast(_ptr), signal_desc)
        return rv
    }

    /// Override or install a new key binding for `keyval` with `modifiers` on
    /// `binding_set`.
    func bindingEntryAddSignall(keyval: CUnsignedInt, modifiers: Gdk.ModifierType, signalName signal_name: UnsafePointer<gchar>, bindingArgs binding_args: SListProtocol) {
        gtk_binding_entry_add_signall(cast(_ptr), guint(keyval), modifiers, signal_name, cast(binding_args.ptr))
    
    }

    /// Remove a binding previously installed via
    /// gtk_binding_entry_add_signal() on `binding_set`.
    func bindingEntryRemove(keyval: CUnsignedInt, modifiers: Gdk.ModifierType) {
        gtk_binding_entry_remove(cast(_ptr), guint(keyval), modifiers)
    
    }

    /// Install a binding on `binding_set` which causes key lookups
    /// to be aborted, to prevent bindings from lower priority sets
    /// to be activated.
    func bindingEntrySkip(keyval: CUnsignedInt, modifiers: Gdk.ModifierType) {
        gtk_binding_entry_skip(cast(_ptr), guint(keyval), modifiers)
    
    }
}



// MARK: - BindingSignal Record

/// The `BindingSignalProtocol` protocol exposes the methods and properties of an underlying `GtkBindingSignal` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BindingSignal`.
/// Alternatively, use `BindingSignalRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkBindingSignal stores the necessary information to
/// activate a widget in response to a key press via a signal
/// emission.
public protocol BindingSignalProtocol {
    /// Untyped pointer to the underlying `GtkBindingSignal` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBindingSignal` instance.
    var _ptr: UnsafeMutablePointer<GtkBindingSignal> { get }
}

/// The `BindingSignalRef` type acts as a lightweight Swift reference to an underlying `GtkBindingSignal` instance.
/// It exposes methods that can operate on this data type through `BindingSignalProtocol` conformance.
/// Use `BindingSignalRef` only as an `unowned` reference to an existing `GtkBindingSignal` instance.
///
/// A GtkBindingSignal stores the necessary information to
/// activate a widget in response to a key press via a signal
/// emission.
public struct BindingSignalRef: BindingSignalProtocol {
    /// Untyped pointer to the underlying `GtkBindingSignal` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BindingSignalRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBindingSignal>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BindingSignalProtocol`
    init<T: BindingSignalProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BindingSignal` type acts as an owner of an underlying `GtkBindingSignal` instance.
/// It provides the methods that can operate on this data type through `BindingSignalProtocol` conformance.
/// Use `BindingSignal` as a strong reference or owner of a `GtkBindingSignal` instance.
///
/// A GtkBindingSignal stores the necessary information to
/// activate a widget in response to a key press via a signal
/// emission.
open class BindingSignal: BindingSignalProtocol {
    /// Untyped pointer to the underlying `GtkBindingSignal` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BindingSignal` instance.
    public init(_ op: UnsafeMutablePointer<GtkBindingSignal>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BindingSignalProtocol`
    /// `GtkBindingSignal` does not allow reference counting.
    public convenience init<T: BindingSignalProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkBindingSignal, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkBindingSignal`.
    deinit {
        // no reference counting for GtkBindingSignal, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBindingSignal.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBindingSignal.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBindingSignal.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingSignalProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBindingSignal>(opaquePointer))
    }



}

// MARK: - no BindingSignal properties

// MARK: - no signals


public extension BindingSignalProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBindingSignal` instance.
    var _ptr: UnsafeMutablePointer<GtkBindingSignal> { return ptr.assumingMemoryBound(to: GtkBindingSignal.self) }

}



// MARK: - BooleanCellAccessibleClass Record

/// The `BooleanCellAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkBooleanCellAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BooleanCellAccessibleClass`.
/// Alternatively, use `BooleanCellAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BooleanCellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkBooleanCellAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBooleanCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBooleanCellAccessibleClass> { get }
}

/// The `BooleanCellAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkBooleanCellAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `BooleanCellAccessibleClassProtocol` conformance.
/// Use `BooleanCellAccessibleClassRef` only as an `unowned` reference to an existing `GtkBooleanCellAccessibleClass` instance.
///

public struct BooleanCellAccessibleClassRef: BooleanCellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkBooleanCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BooleanCellAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBooleanCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BooleanCellAccessibleClassProtocol`
    init<T: BooleanCellAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BooleanCellAccessibleClass` type acts as an owner of an underlying `GtkBooleanCellAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `BooleanCellAccessibleClassProtocol` conformance.
/// Use `BooleanCellAccessibleClass` as a strong reference or owner of a `GtkBooleanCellAccessibleClass` instance.
///

open class BooleanCellAccessibleClass: BooleanCellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkBooleanCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BooleanCellAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkBooleanCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BooleanCellAccessibleClassProtocol`
    /// `GtkBooleanCellAccessibleClass` does not allow reference counting.
    public convenience init<T: BooleanCellAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkBooleanCellAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkBooleanCellAccessibleClass`.
    deinit {
        // no reference counting for GtkBooleanCellAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBooleanCellAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBooleanCellAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBooleanCellAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBooleanCellAccessibleClass>(opaquePointer))
    }



}

// MARK: - no BooleanCellAccessibleClass properties

// MARK: - no signals


public extension BooleanCellAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBooleanCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBooleanCellAccessibleClass> { return ptr.assumingMemoryBound(to: GtkBooleanCellAccessibleClass.self) }

}



// MARK: - BooleanCellAccessiblePrivate Record

/// The `BooleanCellAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkBooleanCellAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BooleanCellAccessiblePrivate`.
/// Alternatively, use `BooleanCellAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BooleanCellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkBooleanCellAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBooleanCellAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkBooleanCellAccessiblePrivate> { get }
}

/// The `BooleanCellAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkBooleanCellAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `BooleanCellAccessiblePrivateProtocol` conformance.
/// Use `BooleanCellAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkBooleanCellAccessiblePrivate` instance.
///

public struct BooleanCellAccessiblePrivateRef: BooleanCellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkBooleanCellAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BooleanCellAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBooleanCellAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BooleanCellAccessiblePrivateProtocol`
    init<T: BooleanCellAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BooleanCellAccessiblePrivate` type acts as an owner of an underlying `GtkBooleanCellAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `BooleanCellAccessiblePrivateProtocol` conformance.
/// Use `BooleanCellAccessiblePrivate` as a strong reference or owner of a `GtkBooleanCellAccessiblePrivate` instance.
///

open class BooleanCellAccessiblePrivate: BooleanCellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkBooleanCellAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BooleanCellAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkBooleanCellAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BooleanCellAccessiblePrivateProtocol`
    /// `GtkBooleanCellAccessiblePrivate` does not allow reference counting.
    public convenience init<T: BooleanCellAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkBooleanCellAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkBooleanCellAccessiblePrivate`.
    deinit {
        // no reference counting for GtkBooleanCellAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBooleanCellAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBooleanCellAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBooleanCellAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBooleanCellAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no BooleanCellAccessiblePrivate properties

// MARK: - no signals


public extension BooleanCellAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBooleanCellAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkBooleanCellAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkBooleanCellAccessiblePrivate.self) }

}



// MARK: - Border Record

/// The `BorderProtocol` protocol exposes the methods and properties of an underlying `GtkBorder` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Border`.
/// Alternatively, use `BorderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A struct that specifies a border around a rectangular area
/// that can be of different width on each side.
public protocol BorderProtocol {
    /// Untyped pointer to the underlying `GtkBorder` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBorder` instance.
    var border_ptr: UnsafeMutablePointer<GtkBorder> { get }
}

/// The `BorderRef` type acts as a lightweight Swift reference to an underlying `GtkBorder` instance.
/// It exposes methods that can operate on this data type through `BorderProtocol` conformance.
/// Use `BorderRef` only as an `unowned` reference to an existing `GtkBorder` instance.
///
/// A struct that specifies a border around a rectangular area
/// that can be of different width on each side.
public struct BorderRef: BorderProtocol {
    /// Untyped pointer to the underlying `GtkBorder` instance.
    /// For type-safe access, use the generated, typed pointer `border_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BorderRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBorder>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BorderProtocol`
    init<T: BorderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates a new `GtkBorder`-struct and initializes its elements to zero.
    init() {
        let rv = gtk_border_new()
        self.init(cast(rv))
    }
}

/// The `Border` type acts as an owner of an underlying `GtkBorder` instance.
/// It provides the methods that can operate on this data type through `BorderProtocol` conformance.
/// Use `Border` as a strong reference or owner of a `GtkBorder` instance.
///
/// A struct that specifies a border around a rectangular area
/// that can be of different width on each side.
open class Border: BorderProtocol {
    /// Untyped pointer to the underlying `GtkBorder` instance.
    /// For type-safe access, use the generated, typed pointer `border_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Border` instance.
    public init(_ op: UnsafeMutablePointer<GtkBorder>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BorderProtocol`
    /// `GtkBorder` does not allow reference counting.
    public convenience init<T: BorderProtocol>(_ other: T) {
        self.init(cast(other.border_ptr))
        // no reference counting for GtkBorder, cannot ref(cast(border_ptr))
    }

    /// Do-nothing destructor for`GtkBorder`.
    deinit {
        // no reference counting for GtkBorder, cannot unref(cast(border_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBorder.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBorder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBorder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBorder>(opaquePointer))
    }

    /// Allocates a new `GtkBorder`-struct and initializes its elements to zero.
    public convenience init() {
        let rv = gtk_border_new()
        self.init(cast(rv))
    }


}

// MARK: - no Border properties

// MARK: - no signals


public extension BorderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBorder` instance.
    var border_ptr: UnsafeMutablePointer<GtkBorder> { return ptr.assumingMemoryBound(to: GtkBorder.self) }

    /// Copies a `GtkBorder`-struct.
    func copy() -> UnsafeMutablePointer<GtkBorder>! {
        let rv = gtk_border_copy(cast(border_ptr))
        return cast(rv)
    }

    /// Frees a `GtkBorder`-struct.
    func free() {
        gtk_border_free(cast(border_ptr))
    
    }
}



// MARK: - BoxClass Record

/// The `BoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BoxClass`.
/// Alternatively, use `BoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BoxClassProtocol {
    /// Untyped pointer to the underlying `GtkBoxClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBoxClass> { get }
}

/// The `BoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkBoxClass` instance.
/// It exposes methods that can operate on this data type through `BoxClassProtocol` conformance.
/// Use `BoxClassRef` only as an `unowned` reference to an existing `GtkBoxClass` instance.
///

public struct BoxClassRef: BoxClassProtocol {
    /// Untyped pointer to the underlying `GtkBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BoxClassProtocol`
    init<T: BoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BoxClass` type acts as an owner of an underlying `GtkBoxClass` instance.
/// It provides the methods that can operate on this data type through `BoxClassProtocol` conformance.
/// Use `BoxClass` as a strong reference or owner of a `GtkBoxClass` instance.
///

open class BoxClass: BoxClassProtocol {
    /// Untyped pointer to the underlying `GtkBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BoxClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkBoxClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BoxClassProtocol`
    /// `GtkBoxClass` does not allow reference counting.
    public convenience init<T: BoxClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkBoxClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkBoxClass`.
    deinit {
        // no reference counting for GtkBoxClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBoxClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBoxClass>(opaquePointer))
    }



}

// MARK: - no BoxClass properties

// MARK: - no signals


public extension BoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBoxClass> { return ptr.assumingMemoryBound(to: GtkBoxClass.self) }

}



// MARK: - BoxPrivate Record

/// The `BoxPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkBoxPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BoxPrivate`.
/// Alternatively, use `BoxPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkBoxPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBoxPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkBoxPrivate> { get }
}

/// The `BoxPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkBoxPrivate` instance.
/// It exposes methods that can operate on this data type through `BoxPrivateProtocol` conformance.
/// Use `BoxPrivateRef` only as an `unowned` reference to an existing `GtkBoxPrivate` instance.
///

public struct BoxPrivateRef: BoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkBoxPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BoxPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBoxPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BoxPrivateProtocol`
    init<T: BoxPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BoxPrivate` type acts as an owner of an underlying `GtkBoxPrivate` instance.
/// It provides the methods that can operate on this data type through `BoxPrivateProtocol` conformance.
/// Use `BoxPrivate` as a strong reference or owner of a `GtkBoxPrivate` instance.
///

open class BoxPrivate: BoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkBoxPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BoxPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkBoxPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BoxPrivateProtocol`
    /// `GtkBoxPrivate` does not allow reference counting.
    public convenience init<T: BoxPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkBoxPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkBoxPrivate`.
    deinit {
        // no reference counting for GtkBoxPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBoxPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBoxPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBoxPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBoxPrivate>(opaquePointer))
    }



}

// MARK: - no BoxPrivate properties

// MARK: - no signals


public extension BoxPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBoxPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkBoxPrivate> { return ptr.assumingMemoryBound(to: GtkBoxPrivate.self) }

}



// MARK: - BuildableIface Record

/// The `BuildableIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkBuildableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BuildableIface`.
/// Alternatively, use `BuildableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkBuildableIface` interface contains method that are
/// necessary to allow `GtkBuilder` to construct an object from
/// a `GtkBuilder` UI definition.
public protocol BuildableIfaceProtocol {
    /// Untyped pointer to the underlying `GtkBuildableIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBuildableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkBuildableIface> { get }
}

/// The `BuildableIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkBuildableIface` instance.
/// It exposes methods that can operate on this data type through `BuildableIfaceProtocol` conformance.
/// Use `BuildableIfaceRef` only as an `unowned` reference to an existing `GtkBuildableIface` instance.
///
/// The `GtkBuildableIface` interface contains method that are
/// necessary to allow `GtkBuilder` to construct an object from
/// a `GtkBuilder` UI definition.
public struct BuildableIfaceRef: BuildableIfaceProtocol {
    /// Untyped pointer to the underlying `GtkBuildableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BuildableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBuildableIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BuildableIfaceProtocol`
    init<T: BuildableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BuildableIface` type acts as an owner of an underlying `GtkBuildableIface` instance.
/// It provides the methods that can operate on this data type through `BuildableIfaceProtocol` conformance.
/// Use `BuildableIface` as a strong reference or owner of a `GtkBuildableIface` instance.
///
/// The `GtkBuildableIface` interface contains method that are
/// necessary to allow `GtkBuilder` to construct an object from
/// a `GtkBuilder` UI definition.
open class BuildableIface: BuildableIfaceProtocol {
    /// Untyped pointer to the underlying `GtkBuildableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BuildableIface` instance.
    public init(_ op: UnsafeMutablePointer<GtkBuildableIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BuildableIfaceProtocol`
    /// `GtkBuildableIface` does not allow reference counting.
    public convenience init<T: BuildableIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkBuildableIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkBuildableIface`.
    deinit {
        // no reference counting for GtkBuildableIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBuildableIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBuildableIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBuildableIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBuildableIface>(opaquePointer))
    }



}

// MARK: - no BuildableIface properties

// MARK: - no signals


public extension BuildableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuildableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkBuildableIface> { return ptr.assumingMemoryBound(to: GtkBuildableIface.self) }

}



// MARK: - BuilderClass Record

/// The `BuilderClassProtocol` protocol exposes the methods and properties of an underlying `GtkBuilderClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BuilderClass`.
/// Alternatively, use `BuilderClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BuilderClassProtocol {
    /// Untyped pointer to the underlying `GtkBuilderClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBuilderClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBuilderClass> { get }
}

/// The `BuilderClassRef` type acts as a lightweight Swift reference to an underlying `GtkBuilderClass` instance.
/// It exposes methods that can operate on this data type through `BuilderClassProtocol` conformance.
/// Use `BuilderClassRef` only as an `unowned` reference to an existing `GtkBuilderClass` instance.
///

public struct BuilderClassRef: BuilderClassProtocol {
    /// Untyped pointer to the underlying `GtkBuilderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BuilderClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBuilderClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BuilderClassProtocol`
    init<T: BuilderClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BuilderClass` type acts as an owner of an underlying `GtkBuilderClass` instance.
/// It provides the methods that can operate on this data type through `BuilderClassProtocol` conformance.
/// Use `BuilderClass` as a strong reference or owner of a `GtkBuilderClass` instance.
///

open class BuilderClass: BuilderClassProtocol {
    /// Untyped pointer to the underlying `GtkBuilderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BuilderClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkBuilderClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BuilderClassProtocol`
    /// `GtkBuilderClass` does not allow reference counting.
    public convenience init<T: BuilderClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkBuilderClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkBuilderClass`.
    deinit {
        // no reference counting for GtkBuilderClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBuilderClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBuilderClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBuilderClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBuilderClass>(opaquePointer))
    }



}

// MARK: - no BuilderClass properties

// MARK: - no signals


public extension BuilderClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuilderClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBuilderClass> { return ptr.assumingMemoryBound(to: GtkBuilderClass.self) }

}



// MARK: - BuilderPrivate Record

/// The `BuilderPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkBuilderPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BuilderPrivate`.
/// Alternatively, use `BuilderPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BuilderPrivateProtocol {
    /// Untyped pointer to the underlying `GtkBuilderPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBuilderPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkBuilderPrivate> { get }
}

/// The `BuilderPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkBuilderPrivate` instance.
/// It exposes methods that can operate on this data type through `BuilderPrivateProtocol` conformance.
/// Use `BuilderPrivateRef` only as an `unowned` reference to an existing `GtkBuilderPrivate` instance.
///

public struct BuilderPrivateRef: BuilderPrivateProtocol {
    /// Untyped pointer to the underlying `GtkBuilderPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BuilderPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBuilderPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BuilderPrivateProtocol`
    init<T: BuilderPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BuilderPrivate` type acts as an owner of an underlying `GtkBuilderPrivate` instance.
/// It provides the methods that can operate on this data type through `BuilderPrivateProtocol` conformance.
/// Use `BuilderPrivate` as a strong reference or owner of a `GtkBuilderPrivate` instance.
///

open class BuilderPrivate: BuilderPrivateProtocol {
    /// Untyped pointer to the underlying `GtkBuilderPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BuilderPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkBuilderPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BuilderPrivateProtocol`
    /// `GtkBuilderPrivate` does not allow reference counting.
    public convenience init<T: BuilderPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkBuilderPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkBuilderPrivate`.
    deinit {
        // no reference counting for GtkBuilderPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBuilderPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBuilderPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBuilderPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBuilderPrivate>(opaquePointer))
    }



}

// MARK: - no BuilderPrivate properties

// MARK: - no signals


public extension BuilderPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuilderPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkBuilderPrivate> { return ptr.assumingMemoryBound(to: GtkBuilderPrivate.self) }

}



// MARK: - ButtonAccessibleClass Record

/// The `ButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ButtonAccessibleClass`.
/// Alternatively, use `ButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonAccessibleClass> { get }
}

/// The `ButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ButtonAccessibleClassProtocol` conformance.
/// Use `ButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkButtonAccessibleClass` instance.
///

public struct ButtonAccessibleClassRef: ButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ButtonAccessibleClassProtocol`
    init<T: ButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ButtonAccessibleClass` type acts as an owner of an underlying `GtkButtonAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ButtonAccessibleClassProtocol` conformance.
/// Use `ButtonAccessibleClass` as a strong reference or owner of a `GtkButtonAccessibleClass` instance.
///

open class ButtonAccessibleClass: ButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ButtonAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ButtonAccessibleClassProtocol`
    /// `GtkButtonAccessibleClass` does not allow reference counting.
    public convenience init<T: ButtonAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkButtonAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkButtonAccessibleClass`.
    deinit {
        // no reference counting for GtkButtonAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkButtonAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkButtonAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ButtonAccessibleClass properties

// MARK: - no signals


public extension ButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonAccessibleClass> { return ptr.assumingMemoryBound(to: GtkButtonAccessibleClass.self) }

}



// MARK: - ButtonAccessiblePrivate Record

/// The `ButtonAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkButtonAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ButtonAccessiblePrivate`.
/// Alternatively, use `ButtonAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkButtonAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonAccessiblePrivate> { get }
}

/// The `ButtonAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkButtonAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `ButtonAccessiblePrivateProtocol` conformance.
/// Use `ButtonAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkButtonAccessiblePrivate` instance.
///

public struct ButtonAccessiblePrivateRef: ButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ButtonAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ButtonAccessiblePrivateProtocol`
    init<T: ButtonAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ButtonAccessiblePrivate` type acts as an owner of an underlying `GtkButtonAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `ButtonAccessiblePrivateProtocol` conformance.
/// Use `ButtonAccessiblePrivate` as a strong reference or owner of a `GtkButtonAccessiblePrivate` instance.
///

open class ButtonAccessiblePrivate: ButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ButtonAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ButtonAccessiblePrivateProtocol`
    /// `GtkButtonAccessiblePrivate` does not allow reference counting.
    public convenience init<T: ButtonAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkButtonAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkButtonAccessiblePrivate`.
    deinit {
        // no reference counting for GtkButtonAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkButtonAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkButtonAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no ButtonAccessiblePrivate properties

// MARK: - no signals


public extension ButtonAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkButtonAccessiblePrivate.self) }

}



// MARK: - ButtonBoxClass Record

/// The `ButtonBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkButtonBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ButtonBoxClass`.
/// Alternatively, use `ButtonBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ButtonBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkButtonBoxClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkButtonBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonBoxClass> { get }
}

/// The `ButtonBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkButtonBoxClass` instance.
/// It exposes methods that can operate on this data type through `ButtonBoxClassProtocol` conformance.
/// Use `ButtonBoxClassRef` only as an `unowned` reference to an existing `GtkButtonBoxClass` instance.
///

public struct ButtonBoxClassRef: ButtonBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkButtonBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ButtonBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkButtonBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ButtonBoxClassProtocol`
    init<T: ButtonBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ButtonBoxClass` type acts as an owner of an underlying `GtkButtonBoxClass` instance.
/// It provides the methods that can operate on this data type through `ButtonBoxClassProtocol` conformance.
/// Use `ButtonBoxClass` as a strong reference or owner of a `GtkButtonBoxClass` instance.
///

open class ButtonBoxClass: ButtonBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkButtonBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ButtonBoxClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkButtonBoxClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ButtonBoxClassProtocol`
    /// `GtkButtonBoxClass` does not allow reference counting.
    public convenience init<T: ButtonBoxClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkButtonBoxClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkButtonBoxClass`.
    deinit {
        // no reference counting for GtkButtonBoxClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkButtonBoxClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkButtonBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkButtonBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkButtonBoxClass>(opaquePointer))
    }



}

// MARK: - no ButtonBoxClass properties

// MARK: - no signals


public extension ButtonBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButtonBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonBoxClass> { return ptr.assumingMemoryBound(to: GtkButtonBoxClass.self) }

}



// MARK: - ButtonBoxPrivate Record

/// The `ButtonBoxPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkButtonBoxPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ButtonBoxPrivate`.
/// Alternatively, use `ButtonBoxPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ButtonBoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkButtonBoxPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkButtonBoxPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonBoxPrivate> { get }
}

/// The `ButtonBoxPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkButtonBoxPrivate` instance.
/// It exposes methods that can operate on this data type through `ButtonBoxPrivateProtocol` conformance.
/// Use `ButtonBoxPrivateRef` only as an `unowned` reference to an existing `GtkButtonBoxPrivate` instance.
///

public struct ButtonBoxPrivateRef: ButtonBoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkButtonBoxPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ButtonBoxPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkButtonBoxPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ButtonBoxPrivateProtocol`
    init<T: ButtonBoxPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ButtonBoxPrivate` type acts as an owner of an underlying `GtkButtonBoxPrivate` instance.
/// It provides the methods that can operate on this data type through `ButtonBoxPrivateProtocol` conformance.
/// Use `ButtonBoxPrivate` as a strong reference or owner of a `GtkButtonBoxPrivate` instance.
///

open class ButtonBoxPrivate: ButtonBoxPrivateProtocol {
    /// Untyped pointer to the underlying `GtkButtonBoxPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ButtonBoxPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkButtonBoxPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ButtonBoxPrivateProtocol`
    /// `GtkButtonBoxPrivate` does not allow reference counting.
    public convenience init<T: ButtonBoxPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkButtonBoxPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkButtonBoxPrivate`.
    deinit {
        // no reference counting for GtkButtonBoxPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkButtonBoxPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkButtonBoxPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkButtonBoxPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkButtonBoxPrivate>(opaquePointer))
    }



}

// MARK: - no ButtonBoxPrivate properties

// MARK: - no signals


public extension ButtonBoxPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButtonBoxPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonBoxPrivate> { return ptr.assumingMemoryBound(to: GtkButtonBoxPrivate.self) }

}



// MARK: - ButtonClass Record

/// The `ButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ButtonClass`.
/// Alternatively, use `ButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonClass> { get }
}

/// The `ButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkButtonClass` instance.
/// It exposes methods that can operate on this data type through `ButtonClassProtocol` conformance.
/// Use `ButtonClassRef` only as an `unowned` reference to an existing `GtkButtonClass` instance.
///

public struct ButtonClassRef: ButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ButtonClassProtocol`
    init<T: ButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ButtonClass` type acts as an owner of an underlying `GtkButtonClass` instance.
/// It provides the methods that can operate on this data type through `ButtonClassProtocol` conformance.
/// Use `ButtonClass` as a strong reference or owner of a `GtkButtonClass` instance.
///

open class ButtonClass: ButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ButtonClassProtocol`
    /// `GtkButtonClass` does not allow reference counting.
    public convenience init<T: ButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkButtonClass`.
    deinit {
        // no reference counting for GtkButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkButtonClass>(opaquePointer))
    }



}

// MARK: - no ButtonClass properties

// MARK: - no signals


public extension ButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonClass> { return ptr.assumingMemoryBound(to: GtkButtonClass.self) }

}



// MARK: - ButtonPrivate Record

/// The `ButtonPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkButtonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ButtonPrivate`.
/// Alternatively, use `ButtonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkButtonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonPrivate> { get }
}

/// The `ButtonPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkButtonPrivate` instance.
/// It exposes methods that can operate on this data type through `ButtonPrivateProtocol` conformance.
/// Use `ButtonPrivateRef` only as an `unowned` reference to an existing `GtkButtonPrivate` instance.
///

public struct ButtonPrivateRef: ButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ButtonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ButtonPrivateProtocol`
    init<T: ButtonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ButtonPrivate` type acts as an owner of an underlying `GtkButtonPrivate` instance.
/// It provides the methods that can operate on this data type through `ButtonPrivateProtocol` conformance.
/// Use `ButtonPrivate` as a strong reference or owner of a `GtkButtonPrivate` instance.
///

open class ButtonPrivate: ButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ButtonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ButtonPrivateProtocol`
    /// `GtkButtonPrivate` does not allow reference counting.
    public convenience init<T: ButtonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkButtonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkButtonPrivate`.
    deinit {
        // no reference counting for GtkButtonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkButtonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkButtonPrivate>(opaquePointer))
    }



}

// MARK: - no ButtonPrivate properties

// MARK: - no signals


public extension ButtonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonPrivate> { return ptr.assumingMemoryBound(to: GtkButtonPrivate.self) }

}



// MARK: - CalendarClass Record

/// The `CalendarClassProtocol` protocol exposes the methods and properties of an underlying `GtkCalendarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CalendarClass`.
/// Alternatively, use `CalendarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CalendarClassProtocol {
    /// Untyped pointer to the underlying `GtkCalendarClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCalendarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCalendarClass> { get }
}

/// The `CalendarClassRef` type acts as a lightweight Swift reference to an underlying `GtkCalendarClass` instance.
/// It exposes methods that can operate on this data type through `CalendarClassProtocol` conformance.
/// Use `CalendarClassRef` only as an `unowned` reference to an existing `GtkCalendarClass` instance.
///

public struct CalendarClassRef: CalendarClassProtocol {
    /// Untyped pointer to the underlying `GtkCalendarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CalendarClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCalendarClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CalendarClassProtocol`
    init<T: CalendarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CalendarClass` type acts as an owner of an underlying `GtkCalendarClass` instance.
/// It provides the methods that can operate on this data type through `CalendarClassProtocol` conformance.
/// Use `CalendarClass` as a strong reference or owner of a `GtkCalendarClass` instance.
///

open class CalendarClass: CalendarClassProtocol {
    /// Untyped pointer to the underlying `GtkCalendarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CalendarClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkCalendarClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CalendarClassProtocol`
    /// `GtkCalendarClass` does not allow reference counting.
    public convenience init<T: CalendarClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkCalendarClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkCalendarClass`.
    deinit {
        // no reference counting for GtkCalendarClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCalendarClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCalendarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCalendarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCalendarClass>(opaquePointer))
    }



}

// MARK: - no CalendarClass properties

// MARK: - no signals


public extension CalendarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCalendarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCalendarClass> { return ptr.assumingMemoryBound(to: GtkCalendarClass.self) }

}



