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

// MARK: - RadioActionEntry Record

/// The `RadioActionEntryProtocol` protocol exposes the methods and properties of an underlying `GtkRadioActionEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioActionEntry`.
/// Alternatively, use `RadioActionEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkRadioActionEntry` structs are used with
/// gtk_action_group_add_radio_actions() to construct groups of radio actions.
public protocol RadioActionEntryProtocol {
    /// Untyped pointer to the underlying `GtkRadioActionEntry` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioActionEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioActionEntry> { get }
}

/// The `RadioActionEntryRef` type acts as a lightweight Swift reference to an underlying `GtkRadioActionEntry` instance.
/// It exposes methods that can operate on this data type through `RadioActionEntryProtocol` conformance.
/// Use `RadioActionEntryRef` only as an `unowned` reference to an existing `GtkRadioActionEntry` instance.
///
/// `GtkRadioActionEntry` structs are used with
/// gtk_action_group_add_radio_actions() to construct groups of radio actions.
public struct RadioActionEntryRef: RadioActionEntryProtocol {
    /// Untyped pointer to the underlying `GtkRadioActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioActionEntryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioActionEntry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioActionEntryProtocol`
    init<T: RadioActionEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioActionEntry` type acts as an owner of an underlying `GtkRadioActionEntry` instance.
/// It provides the methods that can operate on this data type through `RadioActionEntryProtocol` conformance.
/// Use `RadioActionEntry` as a strong reference or owner of a `GtkRadioActionEntry` instance.
///
/// `GtkRadioActionEntry` structs are used with
/// gtk_action_group_add_radio_actions() to construct groups of radio actions.
open class RadioActionEntry: RadioActionEntryProtocol {
    /// Untyped pointer to the underlying `GtkRadioActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioActionEntry` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RadioActionEntryProtocol`
    /// `GtkRadioActionEntry` does not allow reference counting.
    public convenience init<T: RadioActionEntryProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRadioActionEntry, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRadioActionEntry`.
    deinit {
        // no reference counting for GtkRadioActionEntry, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioActionEntry.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioActionEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioActionEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioActionEntry>(opaquePointer))
    }



}

// MARK: - no RadioActionEntry properties

// MARK: - no signals


public extension RadioActionEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioActionEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioActionEntry> { return ptr.assumingMemoryBound(to: GtkRadioActionEntry.self) }

}



// MARK: - RadioActionPrivate Record

/// The `RadioActionPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkRadioActionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioActionPrivate`.
/// Alternatively, use `RadioActionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioActionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRadioActionPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioActionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioActionPrivate> { get }
}

/// The `RadioActionPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkRadioActionPrivate` instance.
/// It exposes methods that can operate on this data type through `RadioActionPrivateProtocol` conformance.
/// Use `RadioActionPrivateRef` only as an `unowned` reference to an existing `GtkRadioActionPrivate` instance.
///

public struct RadioActionPrivateRef: RadioActionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRadioActionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioActionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioActionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioActionPrivateProtocol`
    init<T: RadioActionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioActionPrivate` type acts as an owner of an underlying `GtkRadioActionPrivate` instance.
/// It provides the methods that can operate on this data type through `RadioActionPrivateProtocol` conformance.
/// Use `RadioActionPrivate` as a strong reference or owner of a `GtkRadioActionPrivate` instance.
///

open class RadioActionPrivate: RadioActionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRadioActionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioActionPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioActionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RadioActionPrivateProtocol`
    /// `GtkRadioActionPrivate` does not allow reference counting.
    public convenience init<T: RadioActionPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRadioActionPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRadioActionPrivate`.
    deinit {
        // no reference counting for GtkRadioActionPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioActionPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioActionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioActionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioActionPrivate>(opaquePointer))
    }



}

// MARK: - no RadioActionPrivate properties

// MARK: - no signals


public extension RadioActionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioActionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioActionPrivate> { return ptr.assumingMemoryBound(to: GtkRadioActionPrivate.self) }

}



// MARK: - RadioButtonAccessibleClass Record

/// The `RadioButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkRadioButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioButtonAccessibleClass`.
/// Alternatively, use `RadioButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioButtonAccessibleClass> { get }
}

/// The `RadioButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkRadioButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `RadioButtonAccessibleClassProtocol` conformance.
/// Use `RadioButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkRadioButtonAccessibleClass` instance.
///

public struct RadioButtonAccessibleClassRef: RadioButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioButtonAccessibleClassProtocol`
    init<T: RadioButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioButtonAccessibleClass` type acts as an owner of an underlying `GtkRadioButtonAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `RadioButtonAccessibleClassProtocol` conformance.
/// Use `RadioButtonAccessibleClass` as a strong reference or owner of a `GtkRadioButtonAccessibleClass` instance.
///

open class RadioButtonAccessibleClass: RadioButtonAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioButtonAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RadioButtonAccessibleClassProtocol`
    /// `GtkRadioButtonAccessibleClass` does not allow reference counting.
    public convenience init<T: RadioButtonAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRadioButtonAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRadioButtonAccessibleClass`.
    deinit {
        // no reference counting for GtkRadioButtonAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioButtonAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioButtonAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioButtonAccessibleClass>(opaquePointer))
    }



}

// MARK: - no RadioButtonAccessibleClass properties

// MARK: - no signals


public extension RadioButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioButtonAccessibleClass> { return ptr.assumingMemoryBound(to: GtkRadioButtonAccessibleClass.self) }

}



// MARK: - RadioButtonAccessiblePrivate Record

/// The `RadioButtonAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkRadioButtonAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioButtonAccessiblePrivate`.
/// Alternatively, use `RadioButtonAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkRadioButtonAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioButtonAccessiblePrivate> { get }
}

/// The `RadioButtonAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkRadioButtonAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `RadioButtonAccessiblePrivateProtocol` conformance.
/// Use `RadioButtonAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkRadioButtonAccessiblePrivate` instance.
///

public struct RadioButtonAccessiblePrivateRef: RadioButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkRadioButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioButtonAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioButtonAccessiblePrivateProtocol`
    init<T: RadioButtonAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioButtonAccessiblePrivate` type acts as an owner of an underlying `GtkRadioButtonAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `RadioButtonAccessiblePrivateProtocol` conformance.
/// Use `RadioButtonAccessiblePrivate` as a strong reference or owner of a `GtkRadioButtonAccessiblePrivate` instance.
///

open class RadioButtonAccessiblePrivate: RadioButtonAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkRadioButtonAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioButtonAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioButtonAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RadioButtonAccessiblePrivateProtocol`
    /// `GtkRadioButtonAccessiblePrivate` does not allow reference counting.
    public convenience init<T: RadioButtonAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRadioButtonAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRadioButtonAccessiblePrivate`.
    deinit {
        // no reference counting for GtkRadioButtonAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioButtonAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioButtonAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioButtonAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no RadioButtonAccessiblePrivate properties

// MARK: - no signals


public extension RadioButtonAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioButtonAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioButtonAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkRadioButtonAccessiblePrivate.self) }

}



// MARK: - RadioButtonClass Record

/// The `RadioButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkRadioButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioButtonClass`.
/// Alternatively, use `RadioButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioButtonClass> { get }
}

/// The `RadioButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkRadioButtonClass` instance.
/// It exposes methods that can operate on this data type through `RadioButtonClassProtocol` conformance.
/// Use `RadioButtonClassRef` only as an `unowned` reference to an existing `GtkRadioButtonClass` instance.
///

public struct RadioButtonClassRef: RadioButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioButtonClassProtocol`
    init<T: RadioButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioButtonClass` type acts as an owner of an underlying `GtkRadioButtonClass` instance.
/// It provides the methods that can operate on this data type through `RadioButtonClassProtocol` conformance.
/// Use `RadioButtonClass` as a strong reference or owner of a `GtkRadioButtonClass` instance.
///

open class RadioButtonClass: RadioButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RadioButtonClassProtocol`
    /// `GtkRadioButtonClass` does not allow reference counting.
    public convenience init<T: RadioButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRadioButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRadioButtonClass`.
    deinit {
        // no reference counting for GtkRadioButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioButtonClass>(opaquePointer))
    }



}

// MARK: - no RadioButtonClass properties

// MARK: - no signals


public extension RadioButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioButtonClass> { return ptr.assumingMemoryBound(to: GtkRadioButtonClass.self) }

}



// MARK: - RadioButtonPrivate Record

/// The `RadioButtonPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkRadioButtonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioButtonPrivate`.
/// Alternatively, use `RadioButtonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRadioButtonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioButtonPrivate> { get }
}

/// The `RadioButtonPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkRadioButtonPrivate` instance.
/// It exposes methods that can operate on this data type through `RadioButtonPrivateProtocol` conformance.
/// Use `RadioButtonPrivateRef` only as an `unowned` reference to an existing `GtkRadioButtonPrivate` instance.
///

public struct RadioButtonPrivateRef: RadioButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRadioButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioButtonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioButtonPrivateProtocol`
    init<T: RadioButtonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioButtonPrivate` type acts as an owner of an underlying `GtkRadioButtonPrivate` instance.
/// It provides the methods that can operate on this data type through `RadioButtonPrivateProtocol` conformance.
/// Use `RadioButtonPrivate` as a strong reference or owner of a `GtkRadioButtonPrivate` instance.
///

open class RadioButtonPrivate: RadioButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRadioButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioButtonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RadioButtonPrivateProtocol`
    /// `GtkRadioButtonPrivate` does not allow reference counting.
    public convenience init<T: RadioButtonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRadioButtonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRadioButtonPrivate`.
    deinit {
        // no reference counting for GtkRadioButtonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioButtonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioButtonPrivate>(opaquePointer))
    }



}

// MARK: - no RadioButtonPrivate properties

// MARK: - no signals


public extension RadioButtonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioButtonPrivate> { return ptr.assumingMemoryBound(to: GtkRadioButtonPrivate.self) }

}



// MARK: - RadioMenuItemAccessibleClass Record

/// The `RadioMenuItemAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkRadioMenuItemAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioMenuItemAccessibleClass`.
/// Alternatively, use `RadioMenuItemAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioMenuItemAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItemAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioMenuItemAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioMenuItemAccessibleClass> { get }
}

/// The `RadioMenuItemAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkRadioMenuItemAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `RadioMenuItemAccessibleClassProtocol` conformance.
/// Use `RadioMenuItemAccessibleClassRef` only as an `unowned` reference to an existing `GtkRadioMenuItemAccessibleClass` instance.
///

public struct RadioMenuItemAccessibleClassRef: RadioMenuItemAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItemAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioMenuItemAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioMenuItemAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioMenuItemAccessibleClassProtocol`
    init<T: RadioMenuItemAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioMenuItemAccessibleClass` type acts as an owner of an underlying `GtkRadioMenuItemAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `RadioMenuItemAccessibleClassProtocol` conformance.
/// Use `RadioMenuItemAccessibleClass` as a strong reference or owner of a `GtkRadioMenuItemAccessibleClass` instance.
///

open class RadioMenuItemAccessibleClass: RadioMenuItemAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItemAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioMenuItemAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioMenuItemAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RadioMenuItemAccessibleClassProtocol`
    /// `GtkRadioMenuItemAccessibleClass` does not allow reference counting.
    public convenience init<T: RadioMenuItemAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRadioMenuItemAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRadioMenuItemAccessibleClass`.
    deinit {
        // no reference counting for GtkRadioMenuItemAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioMenuItemAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioMenuItemAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioMenuItemAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioMenuItemAccessibleClass>(opaquePointer))
    }



}

// MARK: - no RadioMenuItemAccessibleClass properties

// MARK: - no signals


public extension RadioMenuItemAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioMenuItemAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioMenuItemAccessibleClass> { return ptr.assumingMemoryBound(to: GtkRadioMenuItemAccessibleClass.self) }

}



// MARK: - RadioMenuItemAccessiblePrivate Record

/// The `RadioMenuItemAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkRadioMenuItemAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioMenuItemAccessiblePrivate`.
/// Alternatively, use `RadioMenuItemAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioMenuItemAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItemAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioMenuItemAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioMenuItemAccessiblePrivate> { get }
}

/// The `RadioMenuItemAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkRadioMenuItemAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `RadioMenuItemAccessiblePrivateProtocol` conformance.
/// Use `RadioMenuItemAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkRadioMenuItemAccessiblePrivate` instance.
///

public struct RadioMenuItemAccessiblePrivateRef: RadioMenuItemAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItemAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioMenuItemAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioMenuItemAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioMenuItemAccessiblePrivateProtocol`
    init<T: RadioMenuItemAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioMenuItemAccessiblePrivate` type acts as an owner of an underlying `GtkRadioMenuItemAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `RadioMenuItemAccessiblePrivateProtocol` conformance.
/// Use `RadioMenuItemAccessiblePrivate` as a strong reference or owner of a `GtkRadioMenuItemAccessiblePrivate` instance.
///

open class RadioMenuItemAccessiblePrivate: RadioMenuItemAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItemAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioMenuItemAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioMenuItemAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RadioMenuItemAccessiblePrivateProtocol`
    /// `GtkRadioMenuItemAccessiblePrivate` does not allow reference counting.
    public convenience init<T: RadioMenuItemAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRadioMenuItemAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRadioMenuItemAccessiblePrivate`.
    deinit {
        // no reference counting for GtkRadioMenuItemAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioMenuItemAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioMenuItemAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioMenuItemAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioMenuItemAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no RadioMenuItemAccessiblePrivate properties

// MARK: - no signals


public extension RadioMenuItemAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioMenuItemAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioMenuItemAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkRadioMenuItemAccessiblePrivate.self) }

}



// MARK: - RadioMenuItemClass Record

/// The `RadioMenuItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkRadioMenuItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioMenuItemClass`.
/// Alternatively, use `RadioMenuItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioMenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItemClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioMenuItemClass> { get }
}

/// The `RadioMenuItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkRadioMenuItemClass` instance.
/// It exposes methods that can operate on this data type through `RadioMenuItemClassProtocol` conformance.
/// Use `RadioMenuItemClassRef` only as an `unowned` reference to an existing `GtkRadioMenuItemClass` instance.
///

public struct RadioMenuItemClassRef: RadioMenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioMenuItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioMenuItemClassProtocol`
    init<T: RadioMenuItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioMenuItemClass` type acts as an owner of an underlying `GtkRadioMenuItemClass` instance.
/// It provides the methods that can operate on this data type through `RadioMenuItemClassProtocol` conformance.
/// Use `RadioMenuItemClass` as a strong reference or owner of a `GtkRadioMenuItemClass` instance.
///

open class RadioMenuItemClass: RadioMenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioMenuItemClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RadioMenuItemClassProtocol`
    /// `GtkRadioMenuItemClass` does not allow reference counting.
    public convenience init<T: RadioMenuItemClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRadioMenuItemClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRadioMenuItemClass`.
    deinit {
        // no reference counting for GtkRadioMenuItemClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioMenuItemClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioMenuItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioMenuItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioMenuItemClass>(opaquePointer))
    }



}

// MARK: - no RadioMenuItemClass properties

// MARK: - no signals


public extension RadioMenuItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioMenuItemClass> { return ptr.assumingMemoryBound(to: GtkRadioMenuItemClass.self) }

}



// MARK: - RadioMenuItemPrivate Record

/// The `RadioMenuItemPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkRadioMenuItemPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioMenuItemPrivate`.
/// Alternatively, use `RadioMenuItemPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioMenuItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItemPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioMenuItemPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioMenuItemPrivate> { get }
}

/// The `RadioMenuItemPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkRadioMenuItemPrivate` instance.
/// It exposes methods that can operate on this data type through `RadioMenuItemPrivateProtocol` conformance.
/// Use `RadioMenuItemPrivateRef` only as an `unowned` reference to an existing `GtkRadioMenuItemPrivate` instance.
///

public struct RadioMenuItemPrivateRef: RadioMenuItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItemPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioMenuItemPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioMenuItemPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioMenuItemPrivateProtocol`
    init<T: RadioMenuItemPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioMenuItemPrivate` type acts as an owner of an underlying `GtkRadioMenuItemPrivate` instance.
/// It provides the methods that can operate on this data type through `RadioMenuItemPrivateProtocol` conformance.
/// Use `RadioMenuItemPrivate` as a strong reference or owner of a `GtkRadioMenuItemPrivate` instance.
///

open class RadioMenuItemPrivate: RadioMenuItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItemPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioMenuItemPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioMenuItemPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RadioMenuItemPrivateProtocol`
    /// `GtkRadioMenuItemPrivate` does not allow reference counting.
    public convenience init<T: RadioMenuItemPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRadioMenuItemPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRadioMenuItemPrivate`.
    deinit {
        // no reference counting for GtkRadioMenuItemPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioMenuItemPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioMenuItemPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioMenuItemPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioMenuItemPrivate>(opaquePointer))
    }



}

// MARK: - no RadioMenuItemPrivate properties

// MARK: - no signals


public extension RadioMenuItemPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioMenuItemPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioMenuItemPrivate> { return ptr.assumingMemoryBound(to: GtkRadioMenuItemPrivate.self) }

}



// MARK: - RadioToolButtonClass Record

/// The `RadioToolButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkRadioToolButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioToolButtonClass`.
/// Alternatively, use `RadioToolButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioToolButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioToolButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioToolButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioToolButtonClass> { get }
}

/// The `RadioToolButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkRadioToolButtonClass` instance.
/// It exposes methods that can operate on this data type through `RadioToolButtonClassProtocol` conformance.
/// Use `RadioToolButtonClassRef` only as an `unowned` reference to an existing `GtkRadioToolButtonClass` instance.
///

public struct RadioToolButtonClassRef: RadioToolButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioToolButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioToolButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioToolButtonClassProtocol`
    init<T: RadioToolButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioToolButtonClass` type acts as an owner of an underlying `GtkRadioToolButtonClass` instance.
/// It provides the methods that can operate on this data type through `RadioToolButtonClassProtocol` conformance.
/// Use `RadioToolButtonClass` as a strong reference or owner of a `GtkRadioToolButtonClass` instance.
///

open class RadioToolButtonClass: RadioToolButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkRadioToolButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioToolButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RadioToolButtonClassProtocol`
    /// `GtkRadioToolButtonClass` does not allow reference counting.
    public convenience init<T: RadioToolButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRadioToolButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRadioToolButtonClass`.
    deinit {
        // no reference counting for GtkRadioToolButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioToolButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioToolButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioToolButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioToolButtonClass>(opaquePointer))
    }



}

// MARK: - no RadioToolButtonClass properties

// MARK: - no signals


public extension RadioToolButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioToolButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioToolButtonClass> { return ptr.assumingMemoryBound(to: GtkRadioToolButtonClass.self) }

}



// MARK: - RangeAccessibleClass Record

/// The `RangeAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkRangeAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RangeAccessibleClass`.
/// Alternatively, use `RangeAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RangeAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkRangeAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRangeAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRangeAccessibleClass> { get }
}

/// The `RangeAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkRangeAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `RangeAccessibleClassProtocol` conformance.
/// Use `RangeAccessibleClassRef` only as an `unowned` reference to an existing `GtkRangeAccessibleClass` instance.
///

public struct RangeAccessibleClassRef: RangeAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkRangeAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RangeAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRangeAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RangeAccessibleClassProtocol`
    init<T: RangeAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RangeAccessibleClass` type acts as an owner of an underlying `GtkRangeAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `RangeAccessibleClassProtocol` conformance.
/// Use `RangeAccessibleClass` as a strong reference or owner of a `GtkRangeAccessibleClass` instance.
///

open class RangeAccessibleClass: RangeAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkRangeAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RangeAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRangeAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RangeAccessibleClassProtocol`
    /// `GtkRangeAccessibleClass` does not allow reference counting.
    public convenience init<T: RangeAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRangeAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRangeAccessibleClass`.
    deinit {
        // no reference counting for GtkRangeAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRangeAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRangeAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRangeAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRangeAccessibleClass>(opaquePointer))
    }



}

// MARK: - no RangeAccessibleClass properties

// MARK: - no signals


public extension RangeAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRangeAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRangeAccessibleClass> { return ptr.assumingMemoryBound(to: GtkRangeAccessibleClass.self) }

}



// MARK: - RangeAccessiblePrivate Record

/// The `RangeAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkRangeAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RangeAccessiblePrivate`.
/// Alternatively, use `RangeAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RangeAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkRangeAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRangeAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRangeAccessiblePrivate> { get }
}

/// The `RangeAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkRangeAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `RangeAccessiblePrivateProtocol` conformance.
/// Use `RangeAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkRangeAccessiblePrivate` instance.
///

public struct RangeAccessiblePrivateRef: RangeAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkRangeAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RangeAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRangeAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RangeAccessiblePrivateProtocol`
    init<T: RangeAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RangeAccessiblePrivate` type acts as an owner of an underlying `GtkRangeAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `RangeAccessiblePrivateProtocol` conformance.
/// Use `RangeAccessiblePrivate` as a strong reference or owner of a `GtkRangeAccessiblePrivate` instance.
///

open class RangeAccessiblePrivate: RangeAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkRangeAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RangeAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkRangeAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RangeAccessiblePrivateProtocol`
    /// `GtkRangeAccessiblePrivate` does not allow reference counting.
    public convenience init<T: RangeAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRangeAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRangeAccessiblePrivate`.
    deinit {
        // no reference counting for GtkRangeAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRangeAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRangeAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRangeAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRangeAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no RangeAccessiblePrivate properties

// MARK: - no signals


public extension RangeAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRangeAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRangeAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkRangeAccessiblePrivate.self) }

}



// MARK: - RangeClass Record

/// The `RangeClassProtocol` protocol exposes the methods and properties of an underlying `GtkRangeClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RangeClass`.
/// Alternatively, use `RangeClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RangeClassProtocol {
    /// Untyped pointer to the underlying `GtkRangeClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRangeClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRangeClass> { get }
}

/// The `RangeClassRef` type acts as a lightweight Swift reference to an underlying `GtkRangeClass` instance.
/// It exposes methods that can operate on this data type through `RangeClassProtocol` conformance.
/// Use `RangeClassRef` only as an `unowned` reference to an existing `GtkRangeClass` instance.
///

public struct RangeClassRef: RangeClassProtocol {
    /// Untyped pointer to the underlying `GtkRangeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RangeClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRangeClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RangeClassProtocol`
    init<T: RangeClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RangeClass` type acts as an owner of an underlying `GtkRangeClass` instance.
/// It provides the methods that can operate on this data type through `RangeClassProtocol` conformance.
/// Use `RangeClass` as a strong reference or owner of a `GtkRangeClass` instance.
///

open class RangeClass: RangeClassProtocol {
    /// Untyped pointer to the underlying `GtkRangeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RangeClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRangeClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RangeClassProtocol`
    /// `GtkRangeClass` does not allow reference counting.
    public convenience init<T: RangeClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRangeClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRangeClass`.
    deinit {
        // no reference counting for GtkRangeClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRangeClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRangeClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRangeClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRangeClass>(opaquePointer))
    }



}

// MARK: - no RangeClass properties

// MARK: - no signals


public extension RangeClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRangeClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRangeClass> { return ptr.assumingMemoryBound(to: GtkRangeClass.self) }

}



// MARK: - RangePrivate Record

/// The `RangePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkRangePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RangePrivate`.
/// Alternatively, use `RangePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RangePrivateProtocol {
    /// Untyped pointer to the underlying `GtkRangePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRangePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRangePrivate> { get }
}

/// The `RangePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkRangePrivate` instance.
/// It exposes methods that can operate on this data type through `RangePrivateProtocol` conformance.
/// Use `RangePrivateRef` only as an `unowned` reference to an existing `GtkRangePrivate` instance.
///

public struct RangePrivateRef: RangePrivateProtocol {
    /// Untyped pointer to the underlying `GtkRangePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RangePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRangePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RangePrivateProtocol`
    init<T: RangePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RangePrivate` type acts as an owner of an underlying `GtkRangePrivate` instance.
/// It provides the methods that can operate on this data type through `RangePrivateProtocol` conformance.
/// Use `RangePrivate` as a strong reference or owner of a `GtkRangePrivate` instance.
///

open class RangePrivate: RangePrivateProtocol {
    /// Untyped pointer to the underlying `GtkRangePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RangePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkRangePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RangePrivateProtocol`
    /// `GtkRangePrivate` does not allow reference counting.
    public convenience init<T: RangePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRangePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRangePrivate`.
    deinit {
        // no reference counting for GtkRangePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRangePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRangePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRangePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRangePrivate>(opaquePointer))
    }



}

// MARK: - no RangePrivate properties

// MARK: - no signals


public extension RangePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRangePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRangePrivate> { return ptr.assumingMemoryBound(to: GtkRangePrivate.self) }

}



// MARK: - RcContext Record

/// The `RcContextProtocol` protocol exposes the methods and properties of an underlying `GtkRcContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RcContext`.
/// Alternatively, use `RcContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RcContextProtocol {
    /// Untyped pointer to the underlying `GtkRcContext` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRcContext` instance.
    var _ptr: UnsafeMutablePointer<GtkRcContext> { get }
}

/// The `RcContextRef` type acts as a lightweight Swift reference to an underlying `GtkRcContext` instance.
/// It exposes methods that can operate on this data type through `RcContextProtocol` conformance.
/// Use `RcContextRef` only as an `unowned` reference to an existing `GtkRcContext` instance.
///

public struct RcContextRef: RcContextProtocol {
    /// Untyped pointer to the underlying `GtkRcContext` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RcContextRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRcContext>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RcContextProtocol`
    init<T: RcContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RcContext` type acts as an owner of an underlying `GtkRcContext` instance.
/// It provides the methods that can operate on this data type through `RcContextProtocol` conformance.
/// Use `RcContext` as a strong reference or owner of a `GtkRcContext` instance.
///

open class RcContext: RcContextProtocol {
    /// Untyped pointer to the underlying `GtkRcContext` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RcContext` instance.
    public init(_ op: UnsafeMutablePointer<GtkRcContext>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RcContextProtocol`
    /// `GtkRcContext` does not allow reference counting.
    public convenience init<T: RcContextProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRcContext, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRcContext`.
    deinit {
        // no reference counting for GtkRcContext, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRcContext.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRcContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRcContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRcContext>(opaquePointer))
    }



}

// MARK: - no RcContext properties

// MARK: - no signals


public extension RcContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRcContext` instance.
    var _ptr: UnsafeMutablePointer<GtkRcContext> { return ptr.assumingMemoryBound(to: GtkRcContext.self) }

}



// MARK: - RcProperty Record

/// The `RcPropertyProtocol` protocol exposes the methods and properties of an underlying `GtkRcProperty` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RcProperty`.
/// Alternatively, use `RcPropertyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Deprecated
public protocol RcPropertyProtocol {
    /// Untyped pointer to the underlying `GtkRcProperty` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRcProperty` instance.
    var _ptr: UnsafeMutablePointer<GtkRcProperty> { get }
}

/// The `RcPropertyRef` type acts as a lightweight Swift reference to an underlying `GtkRcProperty` instance.
/// It exposes methods that can operate on this data type through `RcPropertyProtocol` conformance.
/// Use `RcPropertyRef` only as an `unowned` reference to an existing `GtkRcProperty` instance.
///
/// Deprecated
public struct RcPropertyRef: RcPropertyProtocol {
    /// Untyped pointer to the underlying `GtkRcProperty` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RcPropertyRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRcProperty>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RcPropertyProtocol`
    init<T: RcPropertyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RcProperty` type acts as an owner of an underlying `GtkRcProperty` instance.
/// It provides the methods that can operate on this data type through `RcPropertyProtocol` conformance.
/// Use `RcProperty` as a strong reference or owner of a `GtkRcProperty` instance.
///
/// Deprecated
open class RcProperty: RcPropertyProtocol {
    /// Untyped pointer to the underlying `GtkRcProperty` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RcProperty` instance.
    public init(_ op: UnsafeMutablePointer<GtkRcProperty>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RcPropertyProtocol`
    /// `GtkRcProperty` does not allow reference counting.
    public convenience init<T: RcPropertyProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRcProperty, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRcProperty`.
    deinit {
        // no reference counting for GtkRcProperty, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRcProperty.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRcProperty.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRcProperty.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRcProperty>(opaquePointer))
    }



}

// MARK: - no RcProperty properties

// MARK: - no signals


public extension RcPropertyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRcProperty` instance.
    var _ptr: UnsafeMutablePointer<GtkRcProperty> { return ptr.assumingMemoryBound(to: GtkRcProperty.self) }

}



// MARK: - RcStyleClass Record

/// The `RcStyleClassProtocol` protocol exposes the methods and properties of an underlying `GtkRcStyleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RcStyleClass`.
/// Alternatively, use `RcStyleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RcStyleClassProtocol {
    /// Untyped pointer to the underlying `GtkRcStyleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRcStyleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRcStyleClass> { get }
}

/// The `RcStyleClassRef` type acts as a lightweight Swift reference to an underlying `GtkRcStyleClass` instance.
/// It exposes methods that can operate on this data type through `RcStyleClassProtocol` conformance.
/// Use `RcStyleClassRef` only as an `unowned` reference to an existing `GtkRcStyleClass` instance.
///

public struct RcStyleClassRef: RcStyleClassProtocol {
    /// Untyped pointer to the underlying `GtkRcStyleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RcStyleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRcStyleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RcStyleClassProtocol`
    init<T: RcStyleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RcStyleClass` type acts as an owner of an underlying `GtkRcStyleClass` instance.
/// It provides the methods that can operate on this data type through `RcStyleClassProtocol` conformance.
/// Use `RcStyleClass` as a strong reference or owner of a `GtkRcStyleClass` instance.
///

open class RcStyleClass: RcStyleClassProtocol {
    /// Untyped pointer to the underlying `GtkRcStyleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RcStyleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRcStyleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RcStyleClassProtocol`
    /// `GtkRcStyleClass` does not allow reference counting.
    public convenience init<T: RcStyleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRcStyleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRcStyleClass`.
    deinit {
        // no reference counting for GtkRcStyleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRcStyleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRcStyleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRcStyleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRcStyleClass>(opaquePointer))
    }



}

// MARK: - no RcStyleClass properties

// MARK: - no signals


public extension RcStyleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRcStyleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRcStyleClass> { return ptr.assumingMemoryBound(to: GtkRcStyleClass.self) }

}



// MARK: - RecentActionClass Record

/// The `RecentActionClassProtocol` protocol exposes the methods and properties of an underlying `GtkRecentActionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentActionClass`.
/// Alternatively, use `RecentActionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RecentActionClassProtocol {
    /// Untyped pointer to the underlying `GtkRecentActionClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentActionClass> { get }
}

/// The `RecentActionClassRef` type acts as a lightweight Swift reference to an underlying `GtkRecentActionClass` instance.
/// It exposes methods that can operate on this data type through `RecentActionClassProtocol` conformance.
/// Use `RecentActionClassRef` only as an `unowned` reference to an existing `GtkRecentActionClass` instance.
///

public struct RecentActionClassRef: RecentActionClassProtocol {
    /// Untyped pointer to the underlying `GtkRecentActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentActionClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentActionClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentActionClassProtocol`
    init<T: RecentActionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentActionClass` type acts as an owner of an underlying `GtkRecentActionClass` instance.
/// It provides the methods that can operate on this data type through `RecentActionClassProtocol` conformance.
/// Use `RecentActionClass` as a strong reference or owner of a `GtkRecentActionClass` instance.
///

open class RecentActionClass: RecentActionClassProtocol {
    /// Untyped pointer to the underlying `GtkRecentActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentActionClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentActionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RecentActionClassProtocol`
    /// `GtkRecentActionClass` does not allow reference counting.
    public convenience init<T: RecentActionClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRecentActionClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRecentActionClass`.
    deinit {
        // no reference counting for GtkRecentActionClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentActionClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentActionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentActionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentActionClass>(opaquePointer))
    }



}

// MARK: - no RecentActionClass properties

// MARK: - no signals


public extension RecentActionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentActionClass> { return ptr.assumingMemoryBound(to: GtkRecentActionClass.self) }

}



// MARK: - RecentActionPrivate Record

/// The `RecentActionPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkRecentActionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentActionPrivate`.
/// Alternatively, use `RecentActionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RecentActionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRecentActionPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentActionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentActionPrivate> { get }
}

/// The `RecentActionPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkRecentActionPrivate` instance.
/// It exposes methods that can operate on this data type through `RecentActionPrivateProtocol` conformance.
/// Use `RecentActionPrivateRef` only as an `unowned` reference to an existing `GtkRecentActionPrivate` instance.
///

public struct RecentActionPrivateRef: RecentActionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRecentActionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentActionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentActionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentActionPrivateProtocol`
    init<T: RecentActionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentActionPrivate` type acts as an owner of an underlying `GtkRecentActionPrivate` instance.
/// It provides the methods that can operate on this data type through `RecentActionPrivateProtocol` conformance.
/// Use `RecentActionPrivate` as a strong reference or owner of a `GtkRecentActionPrivate` instance.
///

open class RecentActionPrivate: RecentActionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRecentActionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentActionPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentActionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RecentActionPrivateProtocol`
    /// `GtkRecentActionPrivate` does not allow reference counting.
    public convenience init<T: RecentActionPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRecentActionPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRecentActionPrivate`.
    deinit {
        // no reference counting for GtkRecentActionPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentActionPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentActionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentActionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentActionPrivate>(opaquePointer))
    }



}

// MARK: - no RecentActionPrivate properties

// MARK: - no signals


public extension RecentActionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentActionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentActionPrivate> { return ptr.assumingMemoryBound(to: GtkRecentActionPrivate.self) }

}



// MARK: - RecentChooserDialogClass Record

/// The `RecentChooserDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkRecentChooserDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentChooserDialogClass`.
/// Alternatively, use `RecentChooserDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RecentChooserDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserDialogClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentChooserDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserDialogClass> { get }
}

/// The `RecentChooserDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkRecentChooserDialogClass` instance.
/// It exposes methods that can operate on this data type through `RecentChooserDialogClassProtocol` conformance.
/// Use `RecentChooserDialogClassRef` only as an `unowned` reference to an existing `GtkRecentChooserDialogClass` instance.
///

public struct RecentChooserDialogClassRef: RecentChooserDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentChooserDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentChooserDialogClassProtocol`
    init<T: RecentChooserDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentChooserDialogClass` type acts as an owner of an underlying `GtkRecentChooserDialogClass` instance.
/// It provides the methods that can operate on this data type through `RecentChooserDialogClassProtocol` conformance.
/// Use `RecentChooserDialogClass` as a strong reference or owner of a `GtkRecentChooserDialogClass` instance.
///

open class RecentChooserDialogClass: RecentChooserDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentChooserDialogClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RecentChooserDialogClassProtocol`
    /// `GtkRecentChooserDialogClass` does not allow reference counting.
    public convenience init<T: RecentChooserDialogClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRecentChooserDialogClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRecentChooserDialogClass`.
    deinit {
        // no reference counting for GtkRecentChooserDialogClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentChooserDialogClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentChooserDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentChooserDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentChooserDialogClass>(opaquePointer))
    }



}

// MARK: - no RecentChooserDialogClass properties

// MARK: - no signals


public extension RecentChooserDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserDialogClass> { return ptr.assumingMemoryBound(to: GtkRecentChooserDialogClass.self) }

}



// MARK: - RecentChooserDialogPrivate Record

/// The `RecentChooserDialogPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkRecentChooserDialogPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentChooserDialogPrivate`.
/// Alternatively, use `RecentChooserDialogPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RecentChooserDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserDialogPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentChooserDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserDialogPrivate> { get }
}

/// The `RecentChooserDialogPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkRecentChooserDialogPrivate` instance.
/// It exposes methods that can operate on this data type through `RecentChooserDialogPrivateProtocol` conformance.
/// Use `RecentChooserDialogPrivateRef` only as an `unowned` reference to an existing `GtkRecentChooserDialogPrivate` instance.
///

public struct RecentChooserDialogPrivateRef: RecentChooserDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentChooserDialogPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentChooserDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentChooserDialogPrivateProtocol`
    init<T: RecentChooserDialogPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentChooserDialogPrivate` type acts as an owner of an underlying `GtkRecentChooserDialogPrivate` instance.
/// It provides the methods that can operate on this data type through `RecentChooserDialogPrivateProtocol` conformance.
/// Use `RecentChooserDialogPrivate` as a strong reference or owner of a `GtkRecentChooserDialogPrivate` instance.
///

open class RecentChooserDialogPrivate: RecentChooserDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentChooserDialogPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentChooserDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RecentChooserDialogPrivateProtocol`
    /// `GtkRecentChooserDialogPrivate` does not allow reference counting.
    public convenience init<T: RecentChooserDialogPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRecentChooserDialogPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRecentChooserDialogPrivate`.
    deinit {
        // no reference counting for GtkRecentChooserDialogPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentChooserDialogPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentChooserDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentChooserDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentChooserDialogPrivate>(opaquePointer))
    }



}

// MARK: - no RecentChooserDialogPrivate properties

// MARK: - no signals


public extension RecentChooserDialogPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserDialogPrivate> { return ptr.assumingMemoryBound(to: GtkRecentChooserDialogPrivate.self) }

}



// MARK: - RecentChooserIface Record

/// The `RecentChooserIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkRecentChooserIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentChooserIface`.
/// Alternatively, use `RecentChooserIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RecentChooserIfaceProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentChooserIface` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserIface> { get }
}

/// The `RecentChooserIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkRecentChooserIface` instance.
/// It exposes methods that can operate on this data type through `RecentChooserIfaceProtocol` conformance.
/// Use `RecentChooserIfaceRef` only as an `unowned` reference to an existing `GtkRecentChooserIface` instance.
///

public struct RecentChooserIfaceRef: RecentChooserIfaceProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentChooserIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentChooserIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentChooserIfaceProtocol`
    init<T: RecentChooserIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentChooserIface` type acts as an owner of an underlying `GtkRecentChooserIface` instance.
/// It provides the methods that can operate on this data type through `RecentChooserIfaceProtocol` conformance.
/// Use `RecentChooserIface` as a strong reference or owner of a `GtkRecentChooserIface` instance.
///

open class RecentChooserIface: RecentChooserIfaceProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentChooserIface` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentChooserIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RecentChooserIfaceProtocol`
    /// `GtkRecentChooserIface` does not allow reference counting.
    public convenience init<T: RecentChooserIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRecentChooserIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRecentChooserIface`.
    deinit {
        // no reference counting for GtkRecentChooserIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentChooserIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentChooserIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentChooserIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentChooserIface>(opaquePointer))
    }



}

// MARK: - no RecentChooserIface properties

// MARK: - no signals


public extension RecentChooserIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserIface` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserIface> { return ptr.assumingMemoryBound(to: GtkRecentChooserIface.self) }

}



// MARK: - RecentChooserMenuClass Record

/// The `RecentChooserMenuClassProtocol` protocol exposes the methods and properties of an underlying `GtkRecentChooserMenuClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentChooserMenuClass`.
/// Alternatively, use `RecentChooserMenuClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RecentChooserMenuClassProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserMenuClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentChooserMenuClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserMenuClass> { get }
}

/// The `RecentChooserMenuClassRef` type acts as a lightweight Swift reference to an underlying `GtkRecentChooserMenuClass` instance.
/// It exposes methods that can operate on this data type through `RecentChooserMenuClassProtocol` conformance.
/// Use `RecentChooserMenuClassRef` only as an `unowned` reference to an existing `GtkRecentChooserMenuClass` instance.
///

public struct RecentChooserMenuClassRef: RecentChooserMenuClassProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserMenuClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentChooserMenuClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentChooserMenuClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentChooserMenuClassProtocol`
    init<T: RecentChooserMenuClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentChooserMenuClass` type acts as an owner of an underlying `GtkRecentChooserMenuClass` instance.
/// It provides the methods that can operate on this data type through `RecentChooserMenuClassProtocol` conformance.
/// Use `RecentChooserMenuClass` as a strong reference or owner of a `GtkRecentChooserMenuClass` instance.
///

open class RecentChooserMenuClass: RecentChooserMenuClassProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserMenuClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentChooserMenuClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentChooserMenuClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RecentChooserMenuClassProtocol`
    /// `GtkRecentChooserMenuClass` does not allow reference counting.
    public convenience init<T: RecentChooserMenuClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRecentChooserMenuClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRecentChooserMenuClass`.
    deinit {
        // no reference counting for GtkRecentChooserMenuClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentChooserMenuClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentChooserMenuClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentChooserMenuClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentChooserMenuClass>(opaquePointer))
    }



}

// MARK: - no RecentChooserMenuClass properties

// MARK: - no signals


public extension RecentChooserMenuClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserMenuClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserMenuClass> { return ptr.assumingMemoryBound(to: GtkRecentChooserMenuClass.self) }

}



// MARK: - RecentChooserMenuPrivate Record

/// The `RecentChooserMenuPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkRecentChooserMenuPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentChooserMenuPrivate`.
/// Alternatively, use `RecentChooserMenuPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RecentChooserMenuPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserMenuPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentChooserMenuPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserMenuPrivate> { get }
}

/// The `RecentChooserMenuPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkRecentChooserMenuPrivate` instance.
/// It exposes methods that can operate on this data type through `RecentChooserMenuPrivateProtocol` conformance.
/// Use `RecentChooserMenuPrivateRef` only as an `unowned` reference to an existing `GtkRecentChooserMenuPrivate` instance.
///

public struct RecentChooserMenuPrivateRef: RecentChooserMenuPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserMenuPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentChooserMenuPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentChooserMenuPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentChooserMenuPrivateProtocol`
    init<T: RecentChooserMenuPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentChooserMenuPrivate` type acts as an owner of an underlying `GtkRecentChooserMenuPrivate` instance.
/// It provides the methods that can operate on this data type through `RecentChooserMenuPrivateProtocol` conformance.
/// Use `RecentChooserMenuPrivate` as a strong reference or owner of a `GtkRecentChooserMenuPrivate` instance.
///

open class RecentChooserMenuPrivate: RecentChooserMenuPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserMenuPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentChooserMenuPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentChooserMenuPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RecentChooserMenuPrivateProtocol`
    /// `GtkRecentChooserMenuPrivate` does not allow reference counting.
    public convenience init<T: RecentChooserMenuPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRecentChooserMenuPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRecentChooserMenuPrivate`.
    deinit {
        // no reference counting for GtkRecentChooserMenuPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentChooserMenuPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentChooserMenuPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentChooserMenuPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentChooserMenuPrivate>(opaquePointer))
    }



}

// MARK: - no RecentChooserMenuPrivate properties

// MARK: - no signals


public extension RecentChooserMenuPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserMenuPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserMenuPrivate> { return ptr.assumingMemoryBound(to: GtkRecentChooserMenuPrivate.self) }

}



// MARK: - RecentChooserWidgetClass Record

/// The `RecentChooserWidgetClassProtocol` protocol exposes the methods and properties of an underlying `GtkRecentChooserWidgetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentChooserWidgetClass`.
/// Alternatively, use `RecentChooserWidgetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RecentChooserWidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserWidgetClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentChooserWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserWidgetClass> { get }
}

/// The `RecentChooserWidgetClassRef` type acts as a lightweight Swift reference to an underlying `GtkRecentChooserWidgetClass` instance.
/// It exposes methods that can operate on this data type through `RecentChooserWidgetClassProtocol` conformance.
/// Use `RecentChooserWidgetClassRef` only as an `unowned` reference to an existing `GtkRecentChooserWidgetClass` instance.
///

public struct RecentChooserWidgetClassRef: RecentChooserWidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentChooserWidgetClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentChooserWidgetClassProtocol`
    init<T: RecentChooserWidgetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentChooserWidgetClass` type acts as an owner of an underlying `GtkRecentChooserWidgetClass` instance.
/// It provides the methods that can operate on this data type through `RecentChooserWidgetClassProtocol` conformance.
/// Use `RecentChooserWidgetClass` as a strong reference or owner of a `GtkRecentChooserWidgetClass` instance.
///

open class RecentChooserWidgetClass: RecentChooserWidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentChooserWidgetClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RecentChooserWidgetClassProtocol`
    /// `GtkRecentChooserWidgetClass` does not allow reference counting.
    public convenience init<T: RecentChooserWidgetClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRecentChooserWidgetClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRecentChooserWidgetClass`.
    deinit {
        // no reference counting for GtkRecentChooserWidgetClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentChooserWidgetClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentChooserWidgetClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentChooserWidgetClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentChooserWidgetClass>(opaquePointer))
    }



}

// MARK: - no RecentChooserWidgetClass properties

// MARK: - no signals


public extension RecentChooserWidgetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserWidgetClass> { return ptr.assumingMemoryBound(to: GtkRecentChooserWidgetClass.self) }

}



// MARK: - RecentChooserWidgetPrivate Record

/// The `RecentChooserWidgetPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkRecentChooserWidgetPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentChooserWidgetPrivate`.
/// Alternatively, use `RecentChooserWidgetPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RecentChooserWidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserWidgetPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentChooserWidgetPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserWidgetPrivate> { get }
}

/// The `RecentChooserWidgetPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkRecentChooserWidgetPrivate` instance.
/// It exposes methods that can operate on this data type through `RecentChooserWidgetPrivateProtocol` conformance.
/// Use `RecentChooserWidgetPrivateRef` only as an `unowned` reference to an existing `GtkRecentChooserWidgetPrivate` instance.
///

public struct RecentChooserWidgetPrivateRef: RecentChooserWidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserWidgetPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentChooserWidgetPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentChooserWidgetPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentChooserWidgetPrivateProtocol`
    init<T: RecentChooserWidgetPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentChooserWidgetPrivate` type acts as an owner of an underlying `GtkRecentChooserWidgetPrivate` instance.
/// It provides the methods that can operate on this data type through `RecentChooserWidgetPrivateProtocol` conformance.
/// Use `RecentChooserWidgetPrivate` as a strong reference or owner of a `GtkRecentChooserWidgetPrivate` instance.
///

open class RecentChooserWidgetPrivate: RecentChooserWidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserWidgetPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentChooserWidgetPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentChooserWidgetPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RecentChooserWidgetPrivateProtocol`
    /// `GtkRecentChooserWidgetPrivate` does not allow reference counting.
    public convenience init<T: RecentChooserWidgetPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRecentChooserWidgetPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRecentChooserWidgetPrivate`.
    deinit {
        // no reference counting for GtkRecentChooserWidgetPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentChooserWidgetPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentChooserWidgetPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentChooserWidgetPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentChooserWidgetPrivate>(opaquePointer))
    }



}

// MARK: - no RecentChooserWidgetPrivate properties

// MARK: - no signals


public extension RecentChooserWidgetPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserWidgetPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserWidgetPrivate> { return ptr.assumingMemoryBound(to: GtkRecentChooserWidgetPrivate.self) }

}



// MARK: - RecentData Record

/// The `RecentDataProtocol` protocol exposes the methods and properties of an underlying `GtkRecentData` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentData`.
/// Alternatively, use `RecentDataRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Meta-data to be passed to gtk_recent_manager_add_full() when
/// registering a recently used resource.
public protocol RecentDataProtocol {
    /// Untyped pointer to the underlying `GtkRecentData` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentData` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentData> { get }
}

/// The `RecentDataRef` type acts as a lightweight Swift reference to an underlying `GtkRecentData` instance.
/// It exposes methods that can operate on this data type through `RecentDataProtocol` conformance.
/// Use `RecentDataRef` only as an `unowned` reference to an existing `GtkRecentData` instance.
///
/// Meta-data to be passed to gtk_recent_manager_add_full() when
/// registering a recently used resource.
public struct RecentDataRef: RecentDataProtocol {
    /// Untyped pointer to the underlying `GtkRecentData` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentDataRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentData>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentDataProtocol`
    init<T: RecentDataProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentData` type acts as an owner of an underlying `GtkRecentData` instance.
/// It provides the methods that can operate on this data type through `RecentDataProtocol` conformance.
/// Use `RecentData` as a strong reference or owner of a `GtkRecentData` instance.
///
/// Meta-data to be passed to gtk_recent_manager_add_full() when
/// registering a recently used resource.
open class RecentData: RecentDataProtocol {
    /// Untyped pointer to the underlying `GtkRecentData` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentData` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentData>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RecentDataProtocol`
    /// `GtkRecentData` does not allow reference counting.
    public convenience init<T: RecentDataProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRecentData, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRecentData`.
    deinit {
        // no reference counting for GtkRecentData, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentData.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentData.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentData.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentData>(opaquePointer))
    }



}

// MARK: - no RecentData properties

// MARK: - no signals


public extension RecentDataProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentData` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentData> { return ptr.assumingMemoryBound(to: GtkRecentData.self) }

}



// MARK: - RecentFilterInfo Record

/// The `RecentFilterInfoProtocol` protocol exposes the methods and properties of an underlying `GtkRecentFilterInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentFilterInfo`.
/// Alternatively, use `RecentFilterInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkRecentFilterInfo struct is used
/// to pass information about the tested file to gtk_recent_filter_filter().
public protocol RecentFilterInfoProtocol {
    /// Untyped pointer to the underlying `GtkRecentFilterInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentFilterInfo` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentFilterInfo> { get }
}

/// The `RecentFilterInfoRef` type acts as a lightweight Swift reference to an underlying `GtkRecentFilterInfo` instance.
/// It exposes methods that can operate on this data type through `RecentFilterInfoProtocol` conformance.
/// Use `RecentFilterInfoRef` only as an `unowned` reference to an existing `GtkRecentFilterInfo` instance.
///
/// A GtkRecentFilterInfo struct is used
/// to pass information about the tested file to gtk_recent_filter_filter().
public struct RecentFilterInfoRef: RecentFilterInfoProtocol {
    /// Untyped pointer to the underlying `GtkRecentFilterInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentFilterInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentFilterInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentFilterInfoProtocol`
    init<T: RecentFilterInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentFilterInfo` type acts as an owner of an underlying `GtkRecentFilterInfo` instance.
/// It provides the methods that can operate on this data type through `RecentFilterInfoProtocol` conformance.
/// Use `RecentFilterInfo` as a strong reference or owner of a `GtkRecentFilterInfo` instance.
///
/// A GtkRecentFilterInfo struct is used
/// to pass information about the tested file to gtk_recent_filter_filter().
open class RecentFilterInfo: RecentFilterInfoProtocol {
    /// Untyped pointer to the underlying `GtkRecentFilterInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentFilterInfo` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentFilterInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RecentFilterInfoProtocol`
    /// `GtkRecentFilterInfo` does not allow reference counting.
    public convenience init<T: RecentFilterInfoProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRecentFilterInfo, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRecentFilterInfo`.
    deinit {
        // no reference counting for GtkRecentFilterInfo, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentFilterInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentFilterInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentFilterInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentFilterInfo>(opaquePointer))
    }



}

// MARK: - no RecentFilterInfo properties

// MARK: - no signals


public extension RecentFilterInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentFilterInfo` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentFilterInfo> { return ptr.assumingMemoryBound(to: GtkRecentFilterInfo.self) }

}



// MARK: - RecentInfo Record

/// The `RecentInfoProtocol` protocol exposes the methods and properties of an underlying `GtkRecentInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentInfo`.
/// Alternatively, use `RecentInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkRecentInfo`-struct contains private data only, and should
/// be accessed using the provided API.
/// 
/// `GtkRecentInfo` constains all the meta-data
/// associated with an entry in the recently used files list.
public protocol RecentInfoProtocol {
    /// Untyped pointer to the underlying `GtkRecentInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentInfo` instance.
    var recent_info_ptr: UnsafeMutablePointer<GtkRecentInfo> { get }
}

/// The `RecentInfoRef` type acts as a lightweight Swift reference to an underlying `GtkRecentInfo` instance.
/// It exposes methods that can operate on this data type through `RecentInfoProtocol` conformance.
/// Use `RecentInfoRef` only as an `unowned` reference to an existing `GtkRecentInfo` instance.
///
/// `GtkRecentInfo`-struct contains private data only, and should
/// be accessed using the provided API.
/// 
/// `GtkRecentInfo` constains all the meta-data
/// associated with an entry in the recently used files list.
public struct RecentInfoRef: RecentInfoProtocol {
    /// Untyped pointer to the underlying `GtkRecentInfo` instance.
    /// For type-safe access, use the generated, typed pointer `recent_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentInfoProtocol`
    init<T: RecentInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentInfo` type acts as a reference-counted owner of an underlying `GtkRecentInfo` instance.
/// It provides the methods that can operate on this data type through `RecentInfoProtocol` conformance.
/// Use `RecentInfo` as a strong reference or owner of a `GtkRecentInfo` instance.
///
/// `GtkRecentInfo`-struct contains private data only, and should
/// be accessed using the provided API.
/// 
/// `GtkRecentInfo` constains all the meta-data
/// associated with an entry in the recently used files list.
open class RecentInfo: RecentInfoProtocol {
    /// Untyped pointer to the underlying `GtkRecentInfo` instance.
    /// For type-safe access, use the generated, typed pointer `recent_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentInfo` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RecentInfoProtocol`
    /// Will retain `GtkRecentInfo`.
    public convenience init<T: RecentInfoProtocol>(_ other: T) {
        self.init(cast(other.recent_info_ptr))
        gtk_recent_info_ref(cast(recent_info_ptr))
    }

    /// Releases the underlying `GtkRecentInfo` instance using `gtk_recent_info_unref`.
    deinit {
        gtk_recent_info_unref(cast(recent_info_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentInfo>(opaquePointer))
    }



}

// MARK: - no RecentInfo properties

// MARK: - no signals


public extension RecentInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentInfo` instance.
    var recent_info_ptr: UnsafeMutablePointer<GtkRecentInfo> { return ptr.assumingMemoryBound(to: GtkRecentInfo.self) }

    /// Creates a `GAppInfo` for the specified `GtkRecentInfo`
    func createAppInfo(appName app_name: UnsafePointer<gchar>) throws -> UnsafeMutablePointer<GAppInfo>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_recent_info_create_app_info(cast(recent_info_ptr), app_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Checks whether the resource pointed by `info` still exists.
    /// At the moment this check is done only on resources pointing
    /// to local files.
    func exists() -> Bool {
        let rv = gtk_recent_info_exists(cast(recent_info_ptr))
        return Bool(rv != 0)
    }

    /// Gets the timestamp (seconds from system’s Epoch) when the resource
    /// was added to the recently used resources list.
    func getAdded() -> time_t {
        let rv = gtk_recent_info_get_added(cast(recent_info_ptr))
        return rv
    }

    /// Gets the number of days elapsed since the last update
    /// of the resource pointed by `info`.
    func getAge() -> CInt {
        let rv = gtk_recent_info_get_age(cast(recent_info_ptr))
        return CInt(rv)
    }

    /// Gets the data regarding the application that has registered the resource
    /// pointed by `info`.
    /// 
    /// If the command line contains any escape characters defined inside the
    /// storage specification, they will be expanded.
    func getApplicationInfo(appName app_name: UnsafePointer<gchar>, appExec app_exec: UnsafePointer<UnsafePointer<gchar>>, count: UnsafeMutablePointer<CUnsignedInt>, time_: UnsafeMutablePointer<time_t>) -> Bool {
        let rv = gtk_recent_info_get_application_info(cast(recent_info_ptr), app_name, cast(app_exec), cast(count), cast(time_))
        return Bool(rv != 0)
    }

    /// Retrieves the list of applications that have registered this resource.
    func getApplications(length: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = gtk_recent_info_get_applications(cast(recent_info_ptr), cast(length))
        return cast(rv)
    }

    /// Gets the (short) description of the resource.
    func getDescription() -> String! {
        let rv = gtk_recent_info_get_description(cast(recent_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the name of the resource. If none has been defined, the basename
    /// of the resource is obtained.
    func getDisplayName() -> String! {
        let rv = gtk_recent_info_get_display_name(cast(recent_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Retrieves the icon associated to the resource MIME type.
    func getIcon() -> UnsafeMutablePointer<GIcon>! {
        let rv = gtk_recent_info_get_gicon(cast(recent_info_ptr))
        return cast(rv)
    }

    /// Returns all groups registered for the recently used item `info`.
    /// The array of returned group names will be `nil` terminated, so
    /// length might optionally be `nil`.
    func getGroups(length: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = gtk_recent_info_get_groups(cast(recent_info_ptr), cast(length))
        return cast(rv)
    }

    /// Retrieves the icon of size `size` associated to the resource MIME type.
    func getIcon(size: CInt) -> UnsafeMutablePointer<GdkPixbuf>! {
        let rv = gtk_recent_info_get_icon(cast(recent_info_ptr), gint(size))
        return cast(rv)
    }

    /// Gets the MIME type of the resource.
    func getMimeType() -> String! {
        let rv = gtk_recent_info_get_mime_type(cast(recent_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the timestamp (seconds from system’s Epoch) when the meta-data
    /// for the resource was last modified.
    func getModified() -> time_t {
        let rv = gtk_recent_info_get_modified(cast(recent_info_ptr))
        return rv
    }

    /// Gets the value of the “private” flag. Resources in the recently used
    /// list that have this flag set to `true` should only be displayed by the
    /// applications that have registered them.
    func getPrivateHint() -> Bool {
        let rv = gtk_recent_info_get_private_hint(cast(recent_info_ptr))
        return Bool(rv != 0)
    }

    /// Computes a valid UTF-8 string that can be used as the
    /// name of the item in a menu or list. For example, calling
    /// this function on an item that refers to
    /// “file:///foo/bar.txt” will yield “bar.txt”.
    func getShortName() -> String! {
        let rv = gtk_recent_info_get_short_name(cast(recent_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the URI of the resource.
    func getURI() -> String! {
        let rv = gtk_recent_info_get_uri(cast(recent_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets a displayable version of the resource’s URI. If the resource
    /// is local, it returns a local path; if the resource is not local,
    /// it returns the UTF-8 encoded content of gtk_recent_info_get_uri().
    func getURIDisplay() -> String! {
        let rv = gtk_recent_info_get_uri_display(cast(recent_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the timestamp (seconds from system’s Epoch) when the meta-data
    /// for the resource was last visited.
    func getVisited() -> time_t {
        let rv = gtk_recent_info_get_visited(cast(recent_info_ptr))
        return rv
    }

    /// Checks whether an application registered this resource using `app_name`.
    func hasApplication(appName app_name: UnsafePointer<gchar>) -> Bool {
        let rv = gtk_recent_info_has_application(cast(recent_info_ptr), app_name)
        return Bool(rv != 0)
    }

    /// Checks whether `group_name` appears inside the groups
    /// registered for the recently used item `info`.
    func hasGroup(groupName group_name: UnsafePointer<gchar>) -> Bool {
        let rv = gtk_recent_info_has_group(cast(recent_info_ptr), group_name)
        return Bool(rv != 0)
    }

    /// Gets the name of the last application that have registered the
    /// recently used resource represented by `info`.
    func lastApplication() -> String! {
        let rv = gtk_recent_info_last_application(cast(recent_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Checks whether two `GtkRecentInfo`-struct point to the same
    /// resource.
    func match(infoB info_b: RecentInfoProtocol) -> Bool {
        let rv = gtk_recent_info_match(cast(recent_info_ptr), cast(info_b.ptr))
        return Bool(rv != 0)
    }

    /// Increases the reference count of `recent_info` by one.
    func ref() -> UnsafeMutablePointer<GtkRecentInfo>! {
        let rv = gtk_recent_info_ref(cast(recent_info_ptr))
        return cast(rv)
    }

    /// Decreases the reference count of `info` by one. If the reference
    /// count reaches zero, `info` is deallocated, and the memory freed.
    func unref() {
        gtk_recent_info_unref(cast(recent_info_ptr))
    
    }
    /// Gets the timestamp (seconds from system’s Epoch) when the resource
    /// was added to the recently used resources list.
    var added: time_t {
        /// Gets the timestamp (seconds from system’s Epoch) when the resource
        /// was added to the recently used resources list.
        get {
            let rv = gtk_recent_info_get_added(cast(recent_info_ptr))
            return rv
        }
    }

    /// Gets the number of days elapsed since the last update
    /// of the resource pointed by `info`.
    var age: CInt {
        /// Gets the number of days elapsed since the last update
        /// of the resource pointed by `info`.
        get {
            let rv = gtk_recent_info_get_age(cast(recent_info_ptr))
            return CInt(rv)
        }
    }

    /// Gets the (short) description of the resource.
    var description: String! {
        /// Gets the (short) description of the resource.
        get {
            let rv = gtk_recent_info_get_description(cast(recent_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the name of the resource. If none has been defined, the basename
    /// of the resource is obtained.
    var displayName: String! {
        /// Gets the name of the resource. If none has been defined, the basename
        /// of the resource is obtained.
        get {
            let rv = gtk_recent_info_get_display_name(cast(recent_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Retrieves the icon associated to the resource MIME type.
    var gicon: UnsafeMutablePointer<GIcon>! {
        /// Retrieves the icon associated to the resource MIME type.
        get {
            let rv = gtk_recent_info_get_gicon(cast(recent_info_ptr))
            return cast(rv)
        }
    }

    /// Checks whether the resource is local or not by looking at the
    /// scheme of its URI.
    var isLocal: Bool {
        /// Checks whether the resource is local or not by looking at the
        /// scheme of its URI.
        get {
            let rv = gtk_recent_info_is_local(cast(recent_info_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the MIME type of the resource.
    var mimeType: String! {
        /// Gets the MIME type of the resource.
        get {
            let rv = gtk_recent_info_get_mime_type(cast(recent_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the timestamp (seconds from system’s Epoch) when the meta-data
    /// for the resource was last modified.
    var modified: time_t {
        /// Gets the timestamp (seconds from system’s Epoch) when the meta-data
        /// for the resource was last modified.
        get {
            let rv = gtk_recent_info_get_modified(cast(recent_info_ptr))
            return rv
        }
    }

    /// Gets the value of the “private” flag. Resources in the recently used
    /// list that have this flag set to `true` should only be displayed by the
    /// applications that have registered them.
    var privateHint: Bool {
        /// Gets the value of the “private” flag. Resources in the recently used
        /// list that have this flag set to `true` should only be displayed by the
        /// applications that have registered them.
        get {
            let rv = gtk_recent_info_get_private_hint(cast(recent_info_ptr))
            return Bool(rv != 0)
        }
    }

    /// Computes a valid UTF-8 string that can be used as the
    /// name of the item in a menu or list. For example, calling
    /// this function on an item that refers to
    /// “file:///foo/bar.txt” will yield “bar.txt”.
    var shortName: String! {
        /// Computes a valid UTF-8 string that can be used as the
        /// name of the item in a menu or list. For example, calling
        /// this function on an item that refers to
        /// “file:///foo/bar.txt” will yield “bar.txt”.
        get {
            let rv = gtk_recent_info_get_short_name(cast(recent_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the URI of the resource.
    var uri: String! {
        /// Gets the URI of the resource.
        get {
            let rv = gtk_recent_info_get_uri(cast(recent_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets a displayable version of the resource’s URI. If the resource
    /// is local, it returns a local path; if the resource is not local,
    /// it returns the UTF-8 encoded content of gtk_recent_info_get_uri().
    var uriDisplay: String! {
        /// Gets a displayable version of the resource’s URI. If the resource
        /// is local, it returns a local path; if the resource is not local,
        /// it returns the UTF-8 encoded content of gtk_recent_info_get_uri().
        get {
            let rv = gtk_recent_info_get_uri_display(cast(recent_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the timestamp (seconds from system’s Epoch) when the meta-data
    /// for the resource was last visited.
    var visited: time_t {
        /// Gets the timestamp (seconds from system’s Epoch) when the meta-data
        /// for the resource was last visited.
        get {
            let rv = gtk_recent_info_get_visited(cast(recent_info_ptr))
            return rv
        }
    }
}



// MARK: - RecentManagerClass Record

/// The `RecentManagerClassProtocol` protocol exposes the methods and properties of an underlying `GtkRecentManagerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentManagerClass`.
/// Alternatively, use `RecentManagerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkRecentManagerClass` contains only private data.
public protocol RecentManagerClassProtocol {
    /// Untyped pointer to the underlying `GtkRecentManagerClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentManagerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentManagerClass> { get }
}

/// The `RecentManagerClassRef` type acts as a lightweight Swift reference to an underlying `GtkRecentManagerClass` instance.
/// It exposes methods that can operate on this data type through `RecentManagerClassProtocol` conformance.
/// Use `RecentManagerClassRef` only as an `unowned` reference to an existing `GtkRecentManagerClass` instance.
///
/// `GtkRecentManagerClass` contains only private data.
public struct RecentManagerClassRef: RecentManagerClassProtocol {
    /// Untyped pointer to the underlying `GtkRecentManagerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentManagerClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentManagerClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentManagerClassProtocol`
    init<T: RecentManagerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentManagerClass` type acts as an owner of an underlying `GtkRecentManagerClass` instance.
/// It provides the methods that can operate on this data type through `RecentManagerClassProtocol` conformance.
/// Use `RecentManagerClass` as a strong reference or owner of a `GtkRecentManagerClass` instance.
///
/// `GtkRecentManagerClass` contains only private data.
open class RecentManagerClass: RecentManagerClassProtocol {
    /// Untyped pointer to the underlying `GtkRecentManagerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentManagerClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentManagerClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RecentManagerClassProtocol`
    /// `GtkRecentManagerClass` does not allow reference counting.
    public convenience init<T: RecentManagerClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRecentManagerClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRecentManagerClass`.
    deinit {
        // no reference counting for GtkRecentManagerClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentManagerClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentManagerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentManagerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentManagerClass>(opaquePointer))
    }



}

// MARK: - no RecentManagerClass properties

// MARK: - no signals


public extension RecentManagerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentManagerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentManagerClass> { return ptr.assumingMemoryBound(to: GtkRecentManagerClass.self) }

}



// MARK: - RecentManagerPrivate Record

/// The `RecentManagerPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkRecentManagerPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentManagerPrivate`.
/// Alternatively, use `RecentManagerPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RecentManagerPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRecentManagerPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentManagerPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentManagerPrivate> { get }
}

/// The `RecentManagerPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkRecentManagerPrivate` instance.
/// It exposes methods that can operate on this data type through `RecentManagerPrivateProtocol` conformance.
/// Use `RecentManagerPrivateRef` only as an `unowned` reference to an existing `GtkRecentManagerPrivate` instance.
///

public struct RecentManagerPrivateRef: RecentManagerPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRecentManagerPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentManagerPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentManagerPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentManagerPrivateProtocol`
    init<T: RecentManagerPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentManagerPrivate` type acts as an owner of an underlying `GtkRecentManagerPrivate` instance.
/// It provides the methods that can operate on this data type through `RecentManagerPrivateProtocol` conformance.
/// Use `RecentManagerPrivate` as a strong reference or owner of a `GtkRecentManagerPrivate` instance.
///

open class RecentManagerPrivate: RecentManagerPrivateProtocol {
    /// Untyped pointer to the underlying `GtkRecentManagerPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentManagerPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentManagerPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RecentManagerPrivateProtocol`
    /// `GtkRecentManagerPrivate` does not allow reference counting.
    public convenience init<T: RecentManagerPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRecentManagerPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRecentManagerPrivate`.
    deinit {
        // no reference counting for GtkRecentManagerPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentManagerPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentManagerPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentManagerPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentManagerPrivate>(opaquePointer))
    }



}

// MARK: - no RecentManagerPrivate properties

// MARK: - no signals


public extension RecentManagerPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentManagerPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentManagerPrivate> { return ptr.assumingMemoryBound(to: GtkRecentManagerPrivate.self) }

}



// MARK: - RendererCellAccessibleClass Record

/// The `RendererCellAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkRendererCellAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RendererCellAccessibleClass`.
/// Alternatively, use `RendererCellAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RendererCellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkRendererCellAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRendererCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRendererCellAccessibleClass> { get }
}

/// The `RendererCellAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkRendererCellAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `RendererCellAccessibleClassProtocol` conformance.
/// Use `RendererCellAccessibleClassRef` only as an `unowned` reference to an existing `GtkRendererCellAccessibleClass` instance.
///

public struct RendererCellAccessibleClassRef: RendererCellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkRendererCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RendererCellAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRendererCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RendererCellAccessibleClassProtocol`
    init<T: RendererCellAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RendererCellAccessibleClass` type acts as an owner of an underlying `GtkRendererCellAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `RendererCellAccessibleClassProtocol` conformance.
/// Use `RendererCellAccessibleClass` as a strong reference or owner of a `GtkRendererCellAccessibleClass` instance.
///

open class RendererCellAccessibleClass: RendererCellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkRendererCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RendererCellAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRendererCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RendererCellAccessibleClassProtocol`
    /// `GtkRendererCellAccessibleClass` does not allow reference counting.
    public convenience init<T: RendererCellAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRendererCellAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRendererCellAccessibleClass`.
    deinit {
        // no reference counting for GtkRendererCellAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRendererCellAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRendererCellAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRendererCellAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRendererCellAccessibleClass>(opaquePointer))
    }



}

// MARK: - no RendererCellAccessibleClass properties

// MARK: - no signals


public extension RendererCellAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRendererCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRendererCellAccessibleClass> { return ptr.assumingMemoryBound(to: GtkRendererCellAccessibleClass.self) }

}



// MARK: - RendererCellAccessiblePrivate Record

/// The `RendererCellAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkRendererCellAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RendererCellAccessiblePrivate`.
/// Alternatively, use `RendererCellAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RendererCellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkRendererCellAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRendererCellAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRendererCellAccessiblePrivate> { get }
}

/// The `RendererCellAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkRendererCellAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `RendererCellAccessiblePrivateProtocol` conformance.
/// Use `RendererCellAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkRendererCellAccessiblePrivate` instance.
///

public struct RendererCellAccessiblePrivateRef: RendererCellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkRendererCellAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RendererCellAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRendererCellAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RendererCellAccessiblePrivateProtocol`
    init<T: RendererCellAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RendererCellAccessiblePrivate` type acts as an owner of an underlying `GtkRendererCellAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `RendererCellAccessiblePrivateProtocol` conformance.
/// Use `RendererCellAccessiblePrivate` as a strong reference or owner of a `GtkRendererCellAccessiblePrivate` instance.
///

open class RendererCellAccessiblePrivate: RendererCellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkRendererCellAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RendererCellAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkRendererCellAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RendererCellAccessiblePrivateProtocol`
    /// `GtkRendererCellAccessiblePrivate` does not allow reference counting.
    public convenience init<T: RendererCellAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRendererCellAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRendererCellAccessiblePrivate`.
    deinit {
        // no reference counting for GtkRendererCellAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRendererCellAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRendererCellAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRendererCellAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRendererCellAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no RendererCellAccessiblePrivate properties

// MARK: - no signals


public extension RendererCellAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRendererCellAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkRendererCellAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkRendererCellAccessiblePrivate.self) }

}



// MARK: - RequestedSize Record

/// The `RequestedSizeProtocol` protocol exposes the methods and properties of an underlying `GtkRequestedSize` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RequestedSize`.
/// Alternatively, use `RequestedSizeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Represents a request of a screen object in a given orientation. These
/// are primarily used in container implementations when allocating a natural
/// size for children calling. See gtk_distribute_natural_allocation().
public protocol RequestedSizeProtocol {
    /// Untyped pointer to the underlying `GtkRequestedSize` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRequestedSize` instance.
    var _ptr: UnsafeMutablePointer<GtkRequestedSize> { get }
}

/// The `RequestedSizeRef` type acts as a lightweight Swift reference to an underlying `GtkRequestedSize` instance.
/// It exposes methods that can operate on this data type through `RequestedSizeProtocol` conformance.
/// Use `RequestedSizeRef` only as an `unowned` reference to an existing `GtkRequestedSize` instance.
///
/// Represents a request of a screen object in a given orientation. These
/// are primarily used in container implementations when allocating a natural
/// size for children calling. See gtk_distribute_natural_allocation().
public struct RequestedSizeRef: RequestedSizeProtocol {
    /// Untyped pointer to the underlying `GtkRequestedSize` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RequestedSizeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRequestedSize>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RequestedSizeProtocol`
    init<T: RequestedSizeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RequestedSize` type acts as an owner of an underlying `GtkRequestedSize` instance.
/// It provides the methods that can operate on this data type through `RequestedSizeProtocol` conformance.
/// Use `RequestedSize` as a strong reference or owner of a `GtkRequestedSize` instance.
///
/// Represents a request of a screen object in a given orientation. These
/// are primarily used in container implementations when allocating a natural
/// size for children calling. See gtk_distribute_natural_allocation().
open class RequestedSize: RequestedSizeProtocol {
    /// Untyped pointer to the underlying `GtkRequestedSize` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RequestedSize` instance.
    public init(_ op: UnsafeMutablePointer<GtkRequestedSize>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RequestedSizeProtocol`
    /// `GtkRequestedSize` does not allow reference counting.
    public convenience init<T: RequestedSizeProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRequestedSize, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRequestedSize`.
    deinit {
        // no reference counting for GtkRequestedSize, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRequestedSize.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRequestedSize.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRequestedSize.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRequestedSize>(opaquePointer))
    }



}

// MARK: - no RequestedSize properties

// MARK: - no signals


public extension RequestedSizeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRequestedSize` instance.
    var _ptr: UnsafeMutablePointer<GtkRequestedSize> { return ptr.assumingMemoryBound(to: GtkRequestedSize.self) }

    /// Distributes `extra_space` to child `sizes` by bringing smaller
    /// children up to natural size first.
    /// 
    /// The remaining space will be added to the `minimum_size` member of the
    /// GtkRequestedSize struct. If all sizes reach their natural size then
    /// the remaining space is returned.
    func distributeNaturalAllocation(extraSpace extra_space: CInt, nRequestedSizes n_requested_sizes: CUnsignedInt) -> CInt {
        let rv = gtk_distribute_natural_allocation(gint(extra_space), guint(n_requested_sizes), cast(_ptr))
        return CInt(rv)
    }
}



// MARK: - Requisition Record

/// The `RequisitionProtocol` protocol exposes the methods and properties of an underlying `GtkRequisition` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Requisition`.
/// Alternatively, use `RequisitionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkRequisition`-struct represents the desired size of a widget. See
/// [GtkWidget’s geometry management section][geometry-management] for
/// more information.
public protocol RequisitionProtocol {
    /// Untyped pointer to the underlying `GtkRequisition` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRequisition` instance.
    var requisition_ptr: UnsafeMutablePointer<GtkRequisition> { get }
}

/// The `RequisitionRef` type acts as a lightweight Swift reference to an underlying `GtkRequisition` instance.
/// It exposes methods that can operate on this data type through `RequisitionProtocol` conformance.
/// Use `RequisitionRef` only as an `unowned` reference to an existing `GtkRequisition` instance.
///
/// A `GtkRequisition`-struct represents the desired size of a widget. See
/// [GtkWidget’s geometry management section][geometry-management] for
/// more information.
public struct RequisitionRef: RequisitionProtocol {
    /// Untyped pointer to the underlying `GtkRequisition` instance.
    /// For type-safe access, use the generated, typed pointer `requisition_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RequisitionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRequisition>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RequisitionProtocol`
    init<T: RequisitionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates a new `GtkRequisition`-struct and initializes its elements to zero.
    init() {
        let rv = gtk_requisition_new()
        self.init(cast(rv))
    }
}

/// The `Requisition` type acts as an owner of an underlying `GtkRequisition` instance.
/// It provides the methods that can operate on this data type through `RequisitionProtocol` conformance.
/// Use `Requisition` as a strong reference or owner of a `GtkRequisition` instance.
///
/// A `GtkRequisition`-struct represents the desired size of a widget. See
/// [GtkWidget’s geometry management section][geometry-management] for
/// more information.
open class Requisition: RequisitionProtocol {
    /// Untyped pointer to the underlying `GtkRequisition` instance.
    /// For type-safe access, use the generated, typed pointer `requisition_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Requisition` instance.
    public init(_ op: UnsafeMutablePointer<GtkRequisition>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RequisitionProtocol`
    /// `GtkRequisition` does not allow reference counting.
    public convenience init<T: RequisitionProtocol>(_ other: T) {
        self.init(cast(other.requisition_ptr))
        // no reference counting for GtkRequisition, cannot ref(cast(requisition_ptr))
    }

    /// Do-nothing destructor for`GtkRequisition`.
    deinit {
        // no reference counting for GtkRequisition, cannot unref(cast(requisition_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRequisition.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRequisition.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRequisition.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRequisition>(opaquePointer))
    }

    /// Allocates a new `GtkRequisition`-struct and initializes its elements to zero.
    public convenience init() {
        let rv = gtk_requisition_new()
        self.init(cast(rv))
    }


}

// MARK: - no Requisition properties

// MARK: - no signals


public extension RequisitionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRequisition` instance.
    var requisition_ptr: UnsafeMutablePointer<GtkRequisition> { return ptr.assumingMemoryBound(to: GtkRequisition.self) }

    /// Copies a `GtkRequisition`.
    func copy() -> UnsafeMutablePointer<GtkRequisition>! {
        let rv = gtk_requisition_copy(cast(requisition_ptr))
        return cast(rv)
    }

    /// Frees a `GtkRequisition`.
    func free() {
        gtk_requisition_free(cast(requisition_ptr))
    
    }
}



// MARK: - RevealerClass Record

/// The `RevealerClassProtocol` protocol exposes the methods and properties of an underlying `GtkRevealerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RevealerClass`.
/// Alternatively, use `RevealerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RevealerClassProtocol {
    /// Untyped pointer to the underlying `GtkRevealerClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRevealerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRevealerClass> { get }
}

/// The `RevealerClassRef` type acts as a lightweight Swift reference to an underlying `GtkRevealerClass` instance.
/// It exposes methods that can operate on this data type through `RevealerClassProtocol` conformance.
/// Use `RevealerClassRef` only as an `unowned` reference to an existing `GtkRevealerClass` instance.
///

public struct RevealerClassRef: RevealerClassProtocol {
    /// Untyped pointer to the underlying `GtkRevealerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RevealerClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRevealerClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RevealerClassProtocol`
    init<T: RevealerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RevealerClass` type acts as an owner of an underlying `GtkRevealerClass` instance.
/// It provides the methods that can operate on this data type through `RevealerClassProtocol` conformance.
/// Use `RevealerClass` as a strong reference or owner of a `GtkRevealerClass` instance.
///

open class RevealerClass: RevealerClassProtocol {
    /// Untyped pointer to the underlying `GtkRevealerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RevealerClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkRevealerClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RevealerClassProtocol`
    /// `GtkRevealerClass` does not allow reference counting.
    public convenience init<T: RevealerClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkRevealerClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkRevealerClass`.
    deinit {
        // no reference counting for GtkRevealerClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRevealerClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRevealerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRevealerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRevealerClass>(opaquePointer))
    }



}

// MARK: - no RevealerClass properties

// MARK: - no signals


public extension RevealerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRevealerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRevealerClass> { return ptr.assumingMemoryBound(to: GtkRevealerClass.self) }

}



// MARK: - ScaleAccessibleClass Record

/// The `ScaleAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkScaleAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScaleAccessibleClass`.
/// Alternatively, use `ScaleAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ScaleAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkScaleAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScaleAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleAccessibleClass> { get }
}

/// The `ScaleAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkScaleAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ScaleAccessibleClassProtocol` conformance.
/// Use `ScaleAccessibleClassRef` only as an `unowned` reference to an existing `GtkScaleAccessibleClass` instance.
///

public struct ScaleAccessibleClassRef: ScaleAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkScaleAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScaleAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScaleAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScaleAccessibleClassProtocol`
    init<T: ScaleAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScaleAccessibleClass` type acts as an owner of an underlying `GtkScaleAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ScaleAccessibleClassProtocol` conformance.
/// Use `ScaleAccessibleClass` as a strong reference or owner of a `GtkScaleAccessibleClass` instance.
///

open class ScaleAccessibleClass: ScaleAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkScaleAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ScaleAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkScaleAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScaleAccessibleClassProtocol`
    /// `GtkScaleAccessibleClass` does not allow reference counting.
    public convenience init<T: ScaleAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkScaleAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkScaleAccessibleClass`.
    deinit {
        // no reference counting for GtkScaleAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScaleAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScaleAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScaleAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScaleAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ScaleAccessibleClass properties

// MARK: - no signals


public extension ScaleAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScaleAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleAccessibleClass> { return ptr.assumingMemoryBound(to: GtkScaleAccessibleClass.self) }

}



