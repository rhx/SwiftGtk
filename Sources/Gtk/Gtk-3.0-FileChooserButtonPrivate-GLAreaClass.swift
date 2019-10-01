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

// MARK: - FileChooserButtonPrivate Record

/// The `FileChooserButtonPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserButtonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserButtonPrivate`.
/// Alternatively, use `FileChooserButtonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileChooserButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserButtonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFileChooserButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserButtonPrivate> { get }
}

/// The `FileChooserButtonPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserButtonPrivate` instance.
/// It exposes methods that can operate on this data type through `FileChooserButtonPrivateProtocol` conformance.
/// Use `FileChooserButtonPrivateRef` only as an `unowned` reference to an existing `GtkFileChooserButtonPrivate` instance.
///

public struct FileChooserButtonPrivateRef: FileChooserButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileChooserButtonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFileChooserButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileChooserButtonPrivateProtocol`
    init<T: FileChooserButtonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileChooserButtonPrivate` type acts as an owner of an underlying `GtkFileChooserButtonPrivate` instance.
/// It provides the methods that can operate on this data type through `FileChooserButtonPrivateProtocol` conformance.
/// Use `FileChooserButtonPrivate` as a strong reference or owner of a `GtkFileChooserButtonPrivate` instance.
///

open class FileChooserButtonPrivate: FileChooserButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FileChooserButtonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkFileChooserButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FileChooserButtonPrivateProtocol`
    /// `GtkFileChooserButtonPrivate` does not allow reference counting.
    public convenience init<T: FileChooserButtonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFileChooserButtonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFileChooserButtonPrivate`.
    deinit {
        // no reference counting for GtkFileChooserButtonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFileChooserButtonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFileChooserButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFileChooserButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFileChooserButtonPrivate>(opaquePointer))
    }



}

// MARK: - no FileChooserButtonPrivate properties

// MARK: - no signals


public extension FileChooserButtonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserButtonPrivate> { return ptr.assumingMemoryBound(to: GtkFileChooserButtonPrivate.self) }

}



// MARK: - FileChooserDialogClass Record

/// The `FileChooserDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserDialogClass`.
/// Alternatively, use `FileChooserDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileChooserDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserDialogClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFileChooserDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserDialogClass> { get }
}

/// The `FileChooserDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserDialogClass` instance.
/// It exposes methods that can operate on this data type through `FileChooserDialogClassProtocol` conformance.
/// Use `FileChooserDialogClassRef` only as an `unowned` reference to an existing `GtkFileChooserDialogClass` instance.
///

public struct FileChooserDialogClassRef: FileChooserDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileChooserDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFileChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileChooserDialogClassProtocol`
    init<T: FileChooserDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileChooserDialogClass` type acts as an owner of an underlying `GtkFileChooserDialogClass` instance.
/// It provides the methods that can operate on this data type through `FileChooserDialogClassProtocol` conformance.
/// Use `FileChooserDialogClass` as a strong reference or owner of a `GtkFileChooserDialogClass` instance.
///

open class FileChooserDialogClass: FileChooserDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FileChooserDialogClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFileChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FileChooserDialogClassProtocol`
    /// `GtkFileChooserDialogClass` does not allow reference counting.
    public convenience init<T: FileChooserDialogClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFileChooserDialogClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFileChooserDialogClass`.
    deinit {
        // no reference counting for GtkFileChooserDialogClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFileChooserDialogClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFileChooserDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFileChooserDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFileChooserDialogClass>(opaquePointer))
    }



}

// MARK: - no FileChooserDialogClass properties

// MARK: - no signals


public extension FileChooserDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserDialogClass> { return ptr.assumingMemoryBound(to: GtkFileChooserDialogClass.self) }

}



// MARK: - FileChooserDialogPrivate Record

/// The `FileChooserDialogPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserDialogPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserDialogPrivate`.
/// Alternatively, use `FileChooserDialogPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileChooserDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserDialogPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFileChooserDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserDialogPrivate> { get }
}

/// The `FileChooserDialogPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserDialogPrivate` instance.
/// It exposes methods that can operate on this data type through `FileChooserDialogPrivateProtocol` conformance.
/// Use `FileChooserDialogPrivateRef` only as an `unowned` reference to an existing `GtkFileChooserDialogPrivate` instance.
///

public struct FileChooserDialogPrivateRef: FileChooserDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileChooserDialogPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFileChooserDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileChooserDialogPrivateProtocol`
    init<T: FileChooserDialogPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileChooserDialogPrivate` type acts as an owner of an underlying `GtkFileChooserDialogPrivate` instance.
/// It provides the methods that can operate on this data type through `FileChooserDialogPrivateProtocol` conformance.
/// Use `FileChooserDialogPrivate` as a strong reference or owner of a `GtkFileChooserDialogPrivate` instance.
///

open class FileChooserDialogPrivate: FileChooserDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FileChooserDialogPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkFileChooserDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FileChooserDialogPrivateProtocol`
    /// `GtkFileChooserDialogPrivate` does not allow reference counting.
    public convenience init<T: FileChooserDialogPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFileChooserDialogPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFileChooserDialogPrivate`.
    deinit {
        // no reference counting for GtkFileChooserDialogPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFileChooserDialogPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFileChooserDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFileChooserDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFileChooserDialogPrivate>(opaquePointer))
    }



}

// MARK: - no FileChooserDialogPrivate properties

// MARK: - no signals


public extension FileChooserDialogPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserDialogPrivate> { return ptr.assumingMemoryBound(to: GtkFileChooserDialogPrivate.self) }

}



// MARK: - FileChooserNativeClass Record

/// The `FileChooserNativeClassProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserNativeClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserNativeClass`.
/// Alternatively, use `FileChooserNativeClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileChooserNativeClassProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserNativeClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFileChooserNativeClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserNativeClass> { get }
}

/// The `FileChooserNativeClassRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserNativeClass` instance.
/// It exposes methods that can operate on this data type through `FileChooserNativeClassProtocol` conformance.
/// Use `FileChooserNativeClassRef` only as an `unowned` reference to an existing `GtkFileChooserNativeClass` instance.
///

public struct FileChooserNativeClassRef: FileChooserNativeClassProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserNativeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileChooserNativeClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFileChooserNativeClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileChooserNativeClassProtocol`
    init<T: FileChooserNativeClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileChooserNativeClass` type acts as an owner of an underlying `GtkFileChooserNativeClass` instance.
/// It provides the methods that can operate on this data type through `FileChooserNativeClassProtocol` conformance.
/// Use `FileChooserNativeClass` as a strong reference or owner of a `GtkFileChooserNativeClass` instance.
///

open class FileChooserNativeClass: FileChooserNativeClassProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserNativeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FileChooserNativeClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFileChooserNativeClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FileChooserNativeClassProtocol`
    /// `GtkFileChooserNativeClass` does not allow reference counting.
    public convenience init<T: FileChooserNativeClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFileChooserNativeClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFileChooserNativeClass`.
    deinit {
        // no reference counting for GtkFileChooserNativeClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFileChooserNativeClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFileChooserNativeClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFileChooserNativeClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFileChooserNativeClass>(opaquePointer))
    }



}

// MARK: - no FileChooserNativeClass properties

// MARK: - no signals


public extension FileChooserNativeClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserNativeClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserNativeClass> { return ptr.assumingMemoryBound(to: GtkFileChooserNativeClass.self) }

}



// MARK: - FileChooserWidgetClass Record

/// The `FileChooserWidgetClassProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserWidgetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserWidgetClass`.
/// Alternatively, use `FileChooserWidgetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileChooserWidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserWidgetClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFileChooserWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserWidgetClass> { get }
}

/// The `FileChooserWidgetClassRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserWidgetClass` instance.
/// It exposes methods that can operate on this data type through `FileChooserWidgetClassProtocol` conformance.
/// Use `FileChooserWidgetClassRef` only as an `unowned` reference to an existing `GtkFileChooserWidgetClass` instance.
///

public struct FileChooserWidgetClassRef: FileChooserWidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileChooserWidgetClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFileChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileChooserWidgetClassProtocol`
    init<T: FileChooserWidgetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileChooserWidgetClass` type acts as an owner of an underlying `GtkFileChooserWidgetClass` instance.
/// It provides the methods that can operate on this data type through `FileChooserWidgetClassProtocol` conformance.
/// Use `FileChooserWidgetClass` as a strong reference or owner of a `GtkFileChooserWidgetClass` instance.
///

open class FileChooserWidgetClass: FileChooserWidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FileChooserWidgetClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFileChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FileChooserWidgetClassProtocol`
    /// `GtkFileChooserWidgetClass` does not allow reference counting.
    public convenience init<T: FileChooserWidgetClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFileChooserWidgetClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFileChooserWidgetClass`.
    deinit {
        // no reference counting for GtkFileChooserWidgetClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFileChooserWidgetClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFileChooserWidgetClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFileChooserWidgetClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFileChooserWidgetClass>(opaquePointer))
    }



}

// MARK: - no FileChooserWidgetClass properties

// MARK: - no signals


public extension FileChooserWidgetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserWidgetClass> { return ptr.assumingMemoryBound(to: GtkFileChooserWidgetClass.self) }

}



// MARK: - FileChooserWidgetPrivate Record

/// The `FileChooserWidgetPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserWidgetPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserWidgetPrivate`.
/// Alternatively, use `FileChooserWidgetPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileChooserWidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserWidgetPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFileChooserWidgetPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserWidgetPrivate> { get }
}

/// The `FileChooserWidgetPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserWidgetPrivate` instance.
/// It exposes methods that can operate on this data type through `FileChooserWidgetPrivateProtocol` conformance.
/// Use `FileChooserWidgetPrivateRef` only as an `unowned` reference to an existing `GtkFileChooserWidgetPrivate` instance.
///

public struct FileChooserWidgetPrivateRef: FileChooserWidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserWidgetPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileChooserWidgetPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFileChooserWidgetPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileChooserWidgetPrivateProtocol`
    init<T: FileChooserWidgetPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileChooserWidgetPrivate` type acts as an owner of an underlying `GtkFileChooserWidgetPrivate` instance.
/// It provides the methods that can operate on this data type through `FileChooserWidgetPrivateProtocol` conformance.
/// Use `FileChooserWidgetPrivate` as a strong reference or owner of a `GtkFileChooserWidgetPrivate` instance.
///

open class FileChooserWidgetPrivate: FileChooserWidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserWidgetPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FileChooserWidgetPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkFileChooserWidgetPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FileChooserWidgetPrivateProtocol`
    /// `GtkFileChooserWidgetPrivate` does not allow reference counting.
    public convenience init<T: FileChooserWidgetPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFileChooserWidgetPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFileChooserWidgetPrivate`.
    deinit {
        // no reference counting for GtkFileChooserWidgetPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFileChooserWidgetPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFileChooserWidgetPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFileChooserWidgetPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFileChooserWidgetPrivate>(opaquePointer))
    }



}

// MARK: - no FileChooserWidgetPrivate properties

// MARK: - no signals


public extension FileChooserWidgetPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserWidgetPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserWidgetPrivate> { return ptr.assumingMemoryBound(to: GtkFileChooserWidgetPrivate.self) }

}



// MARK: - FileFilterInfo Record

/// The `FileFilterInfoProtocol` protocol exposes the methods and properties of an underlying `GtkFileFilterInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileFilterInfo`.
/// Alternatively, use `FileFilterInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkFileFilterInfo`-struct is used to pass information about the
/// tested file to gtk_file_filter_filter().
public protocol FileFilterInfoProtocol {
    /// Untyped pointer to the underlying `GtkFileFilterInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFileFilterInfo` instance.
    var _ptr: UnsafeMutablePointer<GtkFileFilterInfo> { get }
}

/// The `FileFilterInfoRef` type acts as a lightweight Swift reference to an underlying `GtkFileFilterInfo` instance.
/// It exposes methods that can operate on this data type through `FileFilterInfoProtocol` conformance.
/// Use `FileFilterInfoRef` only as an `unowned` reference to an existing `GtkFileFilterInfo` instance.
///
/// A `GtkFileFilterInfo`-struct is used to pass information about the
/// tested file to gtk_file_filter_filter().
public struct FileFilterInfoRef: FileFilterInfoProtocol {
    /// Untyped pointer to the underlying `GtkFileFilterInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileFilterInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFileFilterInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileFilterInfoProtocol`
    init<T: FileFilterInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileFilterInfo` type acts as an owner of an underlying `GtkFileFilterInfo` instance.
/// It provides the methods that can operate on this data type through `FileFilterInfoProtocol` conformance.
/// Use `FileFilterInfo` as a strong reference or owner of a `GtkFileFilterInfo` instance.
///
/// A `GtkFileFilterInfo`-struct is used to pass information about the
/// tested file to gtk_file_filter_filter().
open class FileFilterInfo: FileFilterInfoProtocol {
    /// Untyped pointer to the underlying `GtkFileFilterInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FileFilterInfo` instance.
    public init(_ op: UnsafeMutablePointer<GtkFileFilterInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FileFilterInfoProtocol`
    /// `GtkFileFilterInfo` does not allow reference counting.
    public convenience init<T: FileFilterInfoProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFileFilterInfo, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFileFilterInfo`.
    deinit {
        // no reference counting for GtkFileFilterInfo, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFileFilterInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFileFilterInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFileFilterInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFileFilterInfo>(opaquePointer))
    }



}

// MARK: - no FileFilterInfo properties

// MARK: - no signals


public extension FileFilterInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileFilterInfo` instance.
    var _ptr: UnsafeMutablePointer<GtkFileFilterInfo> { return ptr.assumingMemoryBound(to: GtkFileFilterInfo.self) }

}



// MARK: - FixedChild Record

/// The `FixedChildProtocol` protocol exposes the methods and properties of an underlying `GtkFixedChild` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FixedChild`.
/// Alternatively, use `FixedChildRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FixedChildProtocol {
    /// Untyped pointer to the underlying `GtkFixedChild` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFixedChild` instance.
    var _ptr: UnsafeMutablePointer<GtkFixedChild> { get }
}

/// The `FixedChildRef` type acts as a lightweight Swift reference to an underlying `GtkFixedChild` instance.
/// It exposes methods that can operate on this data type through `FixedChildProtocol` conformance.
/// Use `FixedChildRef` only as an `unowned` reference to an existing `GtkFixedChild` instance.
///

public struct FixedChildRef: FixedChildProtocol {
    /// Untyped pointer to the underlying `GtkFixedChild` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FixedChildRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFixedChild>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FixedChildProtocol`
    init<T: FixedChildProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FixedChild` type acts as an owner of an underlying `GtkFixedChild` instance.
/// It provides the methods that can operate on this data type through `FixedChildProtocol` conformance.
/// Use `FixedChild` as a strong reference or owner of a `GtkFixedChild` instance.
///

open class FixedChild: FixedChildProtocol {
    /// Untyped pointer to the underlying `GtkFixedChild` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FixedChild` instance.
    public init(_ op: UnsafeMutablePointer<GtkFixedChild>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FixedChildProtocol`
    /// `GtkFixedChild` does not allow reference counting.
    public convenience init<T: FixedChildProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFixedChild, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFixedChild`.
    deinit {
        // no reference counting for GtkFixedChild, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFixedChild.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFixedChild.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFixedChild.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFixedChild>(opaquePointer))
    }



}

// MARK: - no FixedChild properties

// MARK: - no signals


public extension FixedChildProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFixedChild` instance.
    var _ptr: UnsafeMutablePointer<GtkFixedChild> { return ptr.assumingMemoryBound(to: GtkFixedChild.self) }

}



// MARK: - FixedClass Record

/// The `FixedClassProtocol` protocol exposes the methods and properties of an underlying `GtkFixedClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FixedClass`.
/// Alternatively, use `FixedClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FixedClassProtocol {
    /// Untyped pointer to the underlying `GtkFixedClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFixedClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFixedClass> { get }
}

/// The `FixedClassRef` type acts as a lightweight Swift reference to an underlying `GtkFixedClass` instance.
/// It exposes methods that can operate on this data type through `FixedClassProtocol` conformance.
/// Use `FixedClassRef` only as an `unowned` reference to an existing `GtkFixedClass` instance.
///

public struct FixedClassRef: FixedClassProtocol {
    /// Untyped pointer to the underlying `GtkFixedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FixedClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFixedClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FixedClassProtocol`
    init<T: FixedClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FixedClass` type acts as an owner of an underlying `GtkFixedClass` instance.
/// It provides the methods that can operate on this data type through `FixedClassProtocol` conformance.
/// Use `FixedClass` as a strong reference or owner of a `GtkFixedClass` instance.
///

open class FixedClass: FixedClassProtocol {
    /// Untyped pointer to the underlying `GtkFixedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FixedClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFixedClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FixedClassProtocol`
    /// `GtkFixedClass` does not allow reference counting.
    public convenience init<T: FixedClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFixedClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFixedClass`.
    deinit {
        // no reference counting for GtkFixedClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFixedClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFixedClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFixedClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFixedClass>(opaquePointer))
    }



}

// MARK: - no FixedClass properties

// MARK: - no signals


public extension FixedClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFixedClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFixedClass> { return ptr.assumingMemoryBound(to: GtkFixedClass.self) }

}



// MARK: - FixedPrivate Record

/// The `FixedPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkFixedPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FixedPrivate`.
/// Alternatively, use `FixedPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FixedPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFixedPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFixedPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFixedPrivate> { get }
}

/// The `FixedPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkFixedPrivate` instance.
/// It exposes methods that can operate on this data type through `FixedPrivateProtocol` conformance.
/// Use `FixedPrivateRef` only as an `unowned` reference to an existing `GtkFixedPrivate` instance.
///

public struct FixedPrivateRef: FixedPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFixedPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FixedPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFixedPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FixedPrivateProtocol`
    init<T: FixedPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FixedPrivate` type acts as an owner of an underlying `GtkFixedPrivate` instance.
/// It provides the methods that can operate on this data type through `FixedPrivateProtocol` conformance.
/// Use `FixedPrivate` as a strong reference or owner of a `GtkFixedPrivate` instance.
///

open class FixedPrivate: FixedPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFixedPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FixedPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkFixedPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FixedPrivateProtocol`
    /// `GtkFixedPrivate` does not allow reference counting.
    public convenience init<T: FixedPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFixedPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFixedPrivate`.
    deinit {
        // no reference counting for GtkFixedPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFixedPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFixedPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFixedPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFixedPrivate>(opaquePointer))
    }



}

// MARK: - no FixedPrivate properties

// MARK: - no signals


public extension FixedPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFixedPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFixedPrivate> { return ptr.assumingMemoryBound(to: GtkFixedPrivate.self) }

}



// MARK: - FlowBoxAccessibleClass Record

/// The `FlowBoxAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkFlowBoxAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlowBoxAccessibleClass`.
/// Alternatively, use `FlowBoxAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FlowBoxAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkFlowBoxAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFlowBoxAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFlowBoxAccessibleClass> { get }
}

/// The `FlowBoxAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkFlowBoxAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `FlowBoxAccessibleClassProtocol` conformance.
/// Use `FlowBoxAccessibleClassRef` only as an `unowned` reference to an existing `GtkFlowBoxAccessibleClass` instance.
///

public struct FlowBoxAccessibleClassRef: FlowBoxAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkFlowBoxAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FlowBoxAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFlowBoxAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FlowBoxAccessibleClassProtocol`
    init<T: FlowBoxAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FlowBoxAccessibleClass` type acts as an owner of an underlying `GtkFlowBoxAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `FlowBoxAccessibleClassProtocol` conformance.
/// Use `FlowBoxAccessibleClass` as a strong reference or owner of a `GtkFlowBoxAccessibleClass` instance.
///

open class FlowBoxAccessibleClass: FlowBoxAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkFlowBoxAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FlowBoxAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFlowBoxAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FlowBoxAccessibleClassProtocol`
    /// `GtkFlowBoxAccessibleClass` does not allow reference counting.
    public convenience init<T: FlowBoxAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFlowBoxAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFlowBoxAccessibleClass`.
    deinit {
        // no reference counting for GtkFlowBoxAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFlowBoxAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFlowBoxAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFlowBoxAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFlowBoxAccessibleClass>(opaquePointer))
    }



}

// MARK: - no FlowBoxAccessibleClass properties

// MARK: - no signals


public extension FlowBoxAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlowBoxAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFlowBoxAccessibleClass> { return ptr.assumingMemoryBound(to: GtkFlowBoxAccessibleClass.self) }

}



// MARK: - FlowBoxAccessiblePrivate Record

/// The `FlowBoxAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkFlowBoxAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlowBoxAccessiblePrivate`.
/// Alternatively, use `FlowBoxAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FlowBoxAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkFlowBoxAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFlowBoxAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFlowBoxAccessiblePrivate> { get }
}

/// The `FlowBoxAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkFlowBoxAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `FlowBoxAccessiblePrivateProtocol` conformance.
/// Use `FlowBoxAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkFlowBoxAccessiblePrivate` instance.
///

public struct FlowBoxAccessiblePrivateRef: FlowBoxAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkFlowBoxAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FlowBoxAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFlowBoxAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FlowBoxAccessiblePrivateProtocol`
    init<T: FlowBoxAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FlowBoxAccessiblePrivate` type acts as an owner of an underlying `GtkFlowBoxAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `FlowBoxAccessiblePrivateProtocol` conformance.
/// Use `FlowBoxAccessiblePrivate` as a strong reference or owner of a `GtkFlowBoxAccessiblePrivate` instance.
///

open class FlowBoxAccessiblePrivate: FlowBoxAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkFlowBoxAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FlowBoxAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkFlowBoxAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FlowBoxAccessiblePrivateProtocol`
    /// `GtkFlowBoxAccessiblePrivate` does not allow reference counting.
    public convenience init<T: FlowBoxAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFlowBoxAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFlowBoxAccessiblePrivate`.
    deinit {
        // no reference counting for GtkFlowBoxAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFlowBoxAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFlowBoxAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFlowBoxAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFlowBoxAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no FlowBoxAccessiblePrivate properties

// MARK: - no signals


public extension FlowBoxAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlowBoxAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFlowBoxAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkFlowBoxAccessiblePrivate.self) }

}



// MARK: - FlowBoxChildAccessibleClass Record

/// The `FlowBoxChildAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkFlowBoxChildAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlowBoxChildAccessibleClass`.
/// Alternatively, use `FlowBoxChildAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FlowBoxChildAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkFlowBoxChildAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFlowBoxChildAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFlowBoxChildAccessibleClass> { get }
}

/// The `FlowBoxChildAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkFlowBoxChildAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `FlowBoxChildAccessibleClassProtocol` conformance.
/// Use `FlowBoxChildAccessibleClassRef` only as an `unowned` reference to an existing `GtkFlowBoxChildAccessibleClass` instance.
///

public struct FlowBoxChildAccessibleClassRef: FlowBoxChildAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkFlowBoxChildAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FlowBoxChildAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFlowBoxChildAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FlowBoxChildAccessibleClassProtocol`
    init<T: FlowBoxChildAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FlowBoxChildAccessibleClass` type acts as an owner of an underlying `GtkFlowBoxChildAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `FlowBoxChildAccessibleClassProtocol` conformance.
/// Use `FlowBoxChildAccessibleClass` as a strong reference or owner of a `GtkFlowBoxChildAccessibleClass` instance.
///

open class FlowBoxChildAccessibleClass: FlowBoxChildAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkFlowBoxChildAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FlowBoxChildAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFlowBoxChildAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FlowBoxChildAccessibleClassProtocol`
    /// `GtkFlowBoxChildAccessibleClass` does not allow reference counting.
    public convenience init<T: FlowBoxChildAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFlowBoxChildAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFlowBoxChildAccessibleClass`.
    deinit {
        // no reference counting for GtkFlowBoxChildAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFlowBoxChildAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFlowBoxChildAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFlowBoxChildAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFlowBoxChildAccessibleClass>(opaquePointer))
    }



}

// MARK: - no FlowBoxChildAccessibleClass properties

// MARK: - no signals


public extension FlowBoxChildAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlowBoxChildAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFlowBoxChildAccessibleClass> { return ptr.assumingMemoryBound(to: GtkFlowBoxChildAccessibleClass.self) }

}



// MARK: - FlowBoxChildClass Record

/// The `FlowBoxChildClassProtocol` protocol exposes the methods and properties of an underlying `GtkFlowBoxChildClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlowBoxChildClass`.
/// Alternatively, use `FlowBoxChildClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FlowBoxChildClassProtocol {
    /// Untyped pointer to the underlying `GtkFlowBoxChildClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFlowBoxChildClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFlowBoxChildClass> { get }
}

/// The `FlowBoxChildClassRef` type acts as a lightweight Swift reference to an underlying `GtkFlowBoxChildClass` instance.
/// It exposes methods that can operate on this data type through `FlowBoxChildClassProtocol` conformance.
/// Use `FlowBoxChildClassRef` only as an `unowned` reference to an existing `GtkFlowBoxChildClass` instance.
///

public struct FlowBoxChildClassRef: FlowBoxChildClassProtocol {
    /// Untyped pointer to the underlying `GtkFlowBoxChildClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FlowBoxChildClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFlowBoxChildClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FlowBoxChildClassProtocol`
    init<T: FlowBoxChildClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FlowBoxChildClass` type acts as an owner of an underlying `GtkFlowBoxChildClass` instance.
/// It provides the methods that can operate on this data type through `FlowBoxChildClassProtocol` conformance.
/// Use `FlowBoxChildClass` as a strong reference or owner of a `GtkFlowBoxChildClass` instance.
///

open class FlowBoxChildClass: FlowBoxChildClassProtocol {
    /// Untyped pointer to the underlying `GtkFlowBoxChildClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FlowBoxChildClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFlowBoxChildClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FlowBoxChildClassProtocol`
    /// `GtkFlowBoxChildClass` does not allow reference counting.
    public convenience init<T: FlowBoxChildClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFlowBoxChildClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFlowBoxChildClass`.
    deinit {
        // no reference counting for GtkFlowBoxChildClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFlowBoxChildClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFlowBoxChildClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFlowBoxChildClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFlowBoxChildClass>(opaquePointer))
    }



}

// MARK: - no FlowBoxChildClass properties

// MARK: - no signals


public extension FlowBoxChildClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlowBoxChildClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFlowBoxChildClass> { return ptr.assumingMemoryBound(to: GtkFlowBoxChildClass.self) }

}



// MARK: - FlowBoxClass Record

/// The `FlowBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkFlowBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlowBoxClass`.
/// Alternatively, use `FlowBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FlowBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkFlowBoxClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFlowBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFlowBoxClass> { get }
}

/// The `FlowBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkFlowBoxClass` instance.
/// It exposes methods that can operate on this data type through `FlowBoxClassProtocol` conformance.
/// Use `FlowBoxClassRef` only as an `unowned` reference to an existing `GtkFlowBoxClass` instance.
///

public struct FlowBoxClassRef: FlowBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkFlowBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FlowBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFlowBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FlowBoxClassProtocol`
    init<T: FlowBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FlowBoxClass` type acts as an owner of an underlying `GtkFlowBoxClass` instance.
/// It provides the methods that can operate on this data type through `FlowBoxClassProtocol` conformance.
/// Use `FlowBoxClass` as a strong reference or owner of a `GtkFlowBoxClass` instance.
///

open class FlowBoxClass: FlowBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkFlowBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FlowBoxClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFlowBoxClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FlowBoxClassProtocol`
    /// `GtkFlowBoxClass` does not allow reference counting.
    public convenience init<T: FlowBoxClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFlowBoxClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFlowBoxClass`.
    deinit {
        // no reference counting for GtkFlowBoxClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFlowBoxClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFlowBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFlowBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFlowBoxClass>(opaquePointer))
    }



}

// MARK: - no FlowBoxClass properties

// MARK: - no signals


public extension FlowBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlowBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFlowBoxClass> { return ptr.assumingMemoryBound(to: GtkFlowBoxClass.self) }

}



// MARK: - FontButtonClass Record

/// The `FontButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkFontButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontButtonClass`.
/// Alternatively, use `FontButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkFontButtonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFontButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFontButtonClass> { get }
}

/// The `FontButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkFontButtonClass` instance.
/// It exposes methods that can operate on this data type through `FontButtonClassProtocol` conformance.
/// Use `FontButtonClassRef` only as an `unowned` reference to an existing `GtkFontButtonClass` instance.
///

public struct FontButtonClassRef: FontButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkFontButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFontButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontButtonClassProtocol`
    init<T: FontButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontButtonClass` type acts as an owner of an underlying `GtkFontButtonClass` instance.
/// It provides the methods that can operate on this data type through `FontButtonClassProtocol` conformance.
/// Use `FontButtonClass` as a strong reference or owner of a `GtkFontButtonClass` instance.
///

open class FontButtonClass: FontButtonClassProtocol {
    /// Untyped pointer to the underlying `GtkFontButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontButtonClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFontButtonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontButtonClassProtocol`
    /// `GtkFontButtonClass` does not allow reference counting.
    public convenience init<T: FontButtonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFontButtonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFontButtonClass`.
    deinit {
        // no reference counting for GtkFontButtonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFontButtonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFontButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFontButtonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFontButtonClass>(opaquePointer))
    }



}

// MARK: - no FontButtonClass properties

// MARK: - no signals


public extension FontButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFontButtonClass> { return ptr.assumingMemoryBound(to: GtkFontButtonClass.self) }

}



// MARK: - FontButtonPrivate Record

/// The `FontButtonPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkFontButtonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontButtonPrivate`.
/// Alternatively, use `FontButtonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFontButtonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFontButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFontButtonPrivate> { get }
}

/// The `FontButtonPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkFontButtonPrivate` instance.
/// It exposes methods that can operate on this data type through `FontButtonPrivateProtocol` conformance.
/// Use `FontButtonPrivateRef` only as an `unowned` reference to an existing `GtkFontButtonPrivate` instance.
///

public struct FontButtonPrivateRef: FontButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFontButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontButtonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFontButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontButtonPrivateProtocol`
    init<T: FontButtonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontButtonPrivate` type acts as an owner of an underlying `GtkFontButtonPrivate` instance.
/// It provides the methods that can operate on this data type through `FontButtonPrivateProtocol` conformance.
/// Use `FontButtonPrivate` as a strong reference or owner of a `GtkFontButtonPrivate` instance.
///

open class FontButtonPrivate: FontButtonPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFontButtonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontButtonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkFontButtonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontButtonPrivateProtocol`
    /// `GtkFontButtonPrivate` does not allow reference counting.
    public convenience init<T: FontButtonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFontButtonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFontButtonPrivate`.
    deinit {
        // no reference counting for GtkFontButtonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFontButtonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFontButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFontButtonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFontButtonPrivate>(opaquePointer))
    }



}

// MARK: - no FontButtonPrivate properties

// MARK: - no signals


public extension FontButtonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontButtonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFontButtonPrivate> { return ptr.assumingMemoryBound(to: GtkFontButtonPrivate.self) }

}



// MARK: - FontChooserDialogClass Record

/// The `FontChooserDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkFontChooserDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontChooserDialogClass`.
/// Alternatively, use `FontChooserDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontChooserDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkFontChooserDialogClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFontChooserDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFontChooserDialogClass> { get }
}

/// The `FontChooserDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkFontChooserDialogClass` instance.
/// It exposes methods that can operate on this data type through `FontChooserDialogClassProtocol` conformance.
/// Use `FontChooserDialogClassRef` only as an `unowned` reference to an existing `GtkFontChooserDialogClass` instance.
///

public struct FontChooserDialogClassRef: FontChooserDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkFontChooserDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontChooserDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFontChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontChooserDialogClassProtocol`
    init<T: FontChooserDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontChooserDialogClass` type acts as an owner of an underlying `GtkFontChooserDialogClass` instance.
/// It provides the methods that can operate on this data type through `FontChooserDialogClassProtocol` conformance.
/// Use `FontChooserDialogClass` as a strong reference or owner of a `GtkFontChooserDialogClass` instance.
///

open class FontChooserDialogClass: FontChooserDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkFontChooserDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontChooserDialogClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFontChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontChooserDialogClassProtocol`
    /// `GtkFontChooserDialogClass` does not allow reference counting.
    public convenience init<T: FontChooserDialogClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFontChooserDialogClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFontChooserDialogClass`.
    deinit {
        // no reference counting for GtkFontChooserDialogClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFontChooserDialogClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFontChooserDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFontChooserDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFontChooserDialogClass>(opaquePointer))
    }



}

// MARK: - no FontChooserDialogClass properties

// MARK: - no signals


public extension FontChooserDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontChooserDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFontChooserDialogClass> { return ptr.assumingMemoryBound(to: GtkFontChooserDialogClass.self) }

}



// MARK: - FontChooserDialogPrivate Record

/// The `FontChooserDialogPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkFontChooserDialogPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontChooserDialogPrivate`.
/// Alternatively, use `FontChooserDialogPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontChooserDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFontChooserDialogPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFontChooserDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFontChooserDialogPrivate> { get }
}

/// The `FontChooserDialogPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkFontChooserDialogPrivate` instance.
/// It exposes methods that can operate on this data type through `FontChooserDialogPrivateProtocol` conformance.
/// Use `FontChooserDialogPrivateRef` only as an `unowned` reference to an existing `GtkFontChooserDialogPrivate` instance.
///

public struct FontChooserDialogPrivateRef: FontChooserDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFontChooserDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontChooserDialogPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFontChooserDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontChooserDialogPrivateProtocol`
    init<T: FontChooserDialogPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontChooserDialogPrivate` type acts as an owner of an underlying `GtkFontChooserDialogPrivate` instance.
/// It provides the methods that can operate on this data type through `FontChooserDialogPrivateProtocol` conformance.
/// Use `FontChooserDialogPrivate` as a strong reference or owner of a `GtkFontChooserDialogPrivate` instance.
///

open class FontChooserDialogPrivate: FontChooserDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFontChooserDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontChooserDialogPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkFontChooserDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontChooserDialogPrivateProtocol`
    /// `GtkFontChooserDialogPrivate` does not allow reference counting.
    public convenience init<T: FontChooserDialogPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFontChooserDialogPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFontChooserDialogPrivate`.
    deinit {
        // no reference counting for GtkFontChooserDialogPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFontChooserDialogPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFontChooserDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFontChooserDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFontChooserDialogPrivate>(opaquePointer))
    }



}

// MARK: - no FontChooserDialogPrivate properties

// MARK: - no signals


public extension FontChooserDialogPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontChooserDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFontChooserDialogPrivate> { return ptr.assumingMemoryBound(to: GtkFontChooserDialogPrivate.self) }

}



// MARK: - FontChooserIface Record

/// The `FontChooserIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkFontChooserIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontChooserIface`.
/// Alternatively, use `FontChooserIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontChooserIfaceProtocol {
    /// Untyped pointer to the underlying `GtkFontChooserIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFontChooserIface` instance.
    var _ptr: UnsafeMutablePointer<GtkFontChooserIface> { get }
}

/// The `FontChooserIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkFontChooserIface` instance.
/// It exposes methods that can operate on this data type through `FontChooserIfaceProtocol` conformance.
/// Use `FontChooserIfaceRef` only as an `unowned` reference to an existing `GtkFontChooserIface` instance.
///

public struct FontChooserIfaceRef: FontChooserIfaceProtocol {
    /// Untyped pointer to the underlying `GtkFontChooserIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontChooserIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFontChooserIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontChooserIfaceProtocol`
    init<T: FontChooserIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontChooserIface` type acts as an owner of an underlying `GtkFontChooserIface` instance.
/// It provides the methods that can operate on this data type through `FontChooserIfaceProtocol` conformance.
/// Use `FontChooserIface` as a strong reference or owner of a `GtkFontChooserIface` instance.
///

open class FontChooserIface: FontChooserIfaceProtocol {
    /// Untyped pointer to the underlying `GtkFontChooserIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontChooserIface` instance.
    public init(_ op: UnsafeMutablePointer<GtkFontChooserIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontChooserIfaceProtocol`
    /// `GtkFontChooserIface` does not allow reference counting.
    public convenience init<T: FontChooserIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFontChooserIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFontChooserIface`.
    deinit {
        // no reference counting for GtkFontChooserIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFontChooserIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFontChooserIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFontChooserIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFontChooserIface>(opaquePointer))
    }



}

// MARK: - no FontChooserIface properties

// MARK: - no signals


public extension FontChooserIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontChooserIface` instance.
    var _ptr: UnsafeMutablePointer<GtkFontChooserIface> { return ptr.assumingMemoryBound(to: GtkFontChooserIface.self) }

}



// MARK: - FontChooserWidgetClass Record

/// The `FontChooserWidgetClassProtocol` protocol exposes the methods and properties of an underlying `GtkFontChooserWidgetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontChooserWidgetClass`.
/// Alternatively, use `FontChooserWidgetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontChooserWidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkFontChooserWidgetClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFontChooserWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFontChooserWidgetClass> { get }
}

/// The `FontChooserWidgetClassRef` type acts as a lightweight Swift reference to an underlying `GtkFontChooserWidgetClass` instance.
/// It exposes methods that can operate on this data type through `FontChooserWidgetClassProtocol` conformance.
/// Use `FontChooserWidgetClassRef` only as an `unowned` reference to an existing `GtkFontChooserWidgetClass` instance.
///

public struct FontChooserWidgetClassRef: FontChooserWidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkFontChooserWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontChooserWidgetClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFontChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontChooserWidgetClassProtocol`
    init<T: FontChooserWidgetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontChooserWidgetClass` type acts as an owner of an underlying `GtkFontChooserWidgetClass` instance.
/// It provides the methods that can operate on this data type through `FontChooserWidgetClassProtocol` conformance.
/// Use `FontChooserWidgetClass` as a strong reference or owner of a `GtkFontChooserWidgetClass` instance.
///

open class FontChooserWidgetClass: FontChooserWidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkFontChooserWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontChooserWidgetClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFontChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontChooserWidgetClassProtocol`
    /// `GtkFontChooserWidgetClass` does not allow reference counting.
    public convenience init<T: FontChooserWidgetClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFontChooserWidgetClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFontChooserWidgetClass`.
    deinit {
        // no reference counting for GtkFontChooserWidgetClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFontChooserWidgetClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFontChooserWidgetClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFontChooserWidgetClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFontChooserWidgetClass>(opaquePointer))
    }



}

// MARK: - no FontChooserWidgetClass properties

// MARK: - no signals


public extension FontChooserWidgetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontChooserWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFontChooserWidgetClass> { return ptr.assumingMemoryBound(to: GtkFontChooserWidgetClass.self) }

}



// MARK: - FontChooserWidgetPrivate Record

/// The `FontChooserWidgetPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkFontChooserWidgetPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontChooserWidgetPrivate`.
/// Alternatively, use `FontChooserWidgetPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontChooserWidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFontChooserWidgetPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFontChooserWidgetPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFontChooserWidgetPrivate> { get }
}

/// The `FontChooserWidgetPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkFontChooserWidgetPrivate` instance.
/// It exposes methods that can operate on this data type through `FontChooserWidgetPrivateProtocol` conformance.
/// Use `FontChooserWidgetPrivateRef` only as an `unowned` reference to an existing `GtkFontChooserWidgetPrivate` instance.
///

public struct FontChooserWidgetPrivateRef: FontChooserWidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFontChooserWidgetPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontChooserWidgetPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFontChooserWidgetPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontChooserWidgetPrivateProtocol`
    init<T: FontChooserWidgetPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontChooserWidgetPrivate` type acts as an owner of an underlying `GtkFontChooserWidgetPrivate` instance.
/// It provides the methods that can operate on this data type through `FontChooserWidgetPrivateProtocol` conformance.
/// Use `FontChooserWidgetPrivate` as a strong reference or owner of a `GtkFontChooserWidgetPrivate` instance.
///

open class FontChooserWidgetPrivate: FontChooserWidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFontChooserWidgetPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontChooserWidgetPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkFontChooserWidgetPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontChooserWidgetPrivateProtocol`
    /// `GtkFontChooserWidgetPrivate` does not allow reference counting.
    public convenience init<T: FontChooserWidgetPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFontChooserWidgetPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFontChooserWidgetPrivate`.
    deinit {
        // no reference counting for GtkFontChooserWidgetPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFontChooserWidgetPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFontChooserWidgetPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFontChooserWidgetPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFontChooserWidgetPrivate>(opaquePointer))
    }



}

// MARK: - no FontChooserWidgetPrivate properties

// MARK: - no signals


public extension FontChooserWidgetPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontChooserWidgetPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFontChooserWidgetPrivate> { return ptr.assumingMemoryBound(to: GtkFontChooserWidgetPrivate.self) }

}



// MARK: - FontSelectionClass Record

/// The `FontSelectionClassProtocol` protocol exposes the methods and properties of an underlying `GtkFontSelectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontSelectionClass`.
/// Alternatively, use `FontSelectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontSelectionClassProtocol {
    /// Untyped pointer to the underlying `GtkFontSelectionClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFontSelectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFontSelectionClass> { get }
}

/// The `FontSelectionClassRef` type acts as a lightweight Swift reference to an underlying `GtkFontSelectionClass` instance.
/// It exposes methods that can operate on this data type through `FontSelectionClassProtocol` conformance.
/// Use `FontSelectionClassRef` only as an `unowned` reference to an existing `GtkFontSelectionClass` instance.
///

public struct FontSelectionClassRef: FontSelectionClassProtocol {
    /// Untyped pointer to the underlying `GtkFontSelectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontSelectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFontSelectionClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontSelectionClassProtocol`
    init<T: FontSelectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontSelectionClass` type acts as an owner of an underlying `GtkFontSelectionClass` instance.
/// It provides the methods that can operate on this data type through `FontSelectionClassProtocol` conformance.
/// Use `FontSelectionClass` as a strong reference or owner of a `GtkFontSelectionClass` instance.
///

open class FontSelectionClass: FontSelectionClassProtocol {
    /// Untyped pointer to the underlying `GtkFontSelectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontSelectionClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFontSelectionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontSelectionClassProtocol`
    /// `GtkFontSelectionClass` does not allow reference counting.
    public convenience init<T: FontSelectionClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFontSelectionClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFontSelectionClass`.
    deinit {
        // no reference counting for GtkFontSelectionClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFontSelectionClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFontSelectionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFontSelectionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFontSelectionClass>(opaquePointer))
    }



}

// MARK: - no FontSelectionClass properties

// MARK: - no signals


public extension FontSelectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontSelectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFontSelectionClass> { return ptr.assumingMemoryBound(to: GtkFontSelectionClass.self) }

}



// MARK: - FontSelectionDialogClass Record

/// The `FontSelectionDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkFontSelectionDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontSelectionDialogClass`.
/// Alternatively, use `FontSelectionDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontSelectionDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkFontSelectionDialogClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFontSelectionDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFontSelectionDialogClass> { get }
}

/// The `FontSelectionDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkFontSelectionDialogClass` instance.
/// It exposes methods that can operate on this data type through `FontSelectionDialogClassProtocol` conformance.
/// Use `FontSelectionDialogClassRef` only as an `unowned` reference to an existing `GtkFontSelectionDialogClass` instance.
///

public struct FontSelectionDialogClassRef: FontSelectionDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkFontSelectionDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontSelectionDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFontSelectionDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontSelectionDialogClassProtocol`
    init<T: FontSelectionDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontSelectionDialogClass` type acts as an owner of an underlying `GtkFontSelectionDialogClass` instance.
/// It provides the methods that can operate on this data type through `FontSelectionDialogClassProtocol` conformance.
/// Use `FontSelectionDialogClass` as a strong reference or owner of a `GtkFontSelectionDialogClass` instance.
///

open class FontSelectionDialogClass: FontSelectionDialogClassProtocol {
    /// Untyped pointer to the underlying `GtkFontSelectionDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontSelectionDialogClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFontSelectionDialogClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontSelectionDialogClassProtocol`
    /// `GtkFontSelectionDialogClass` does not allow reference counting.
    public convenience init<T: FontSelectionDialogClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFontSelectionDialogClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFontSelectionDialogClass`.
    deinit {
        // no reference counting for GtkFontSelectionDialogClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFontSelectionDialogClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFontSelectionDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFontSelectionDialogClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFontSelectionDialogClass>(opaquePointer))
    }



}

// MARK: - no FontSelectionDialogClass properties

// MARK: - no signals


public extension FontSelectionDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontSelectionDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFontSelectionDialogClass> { return ptr.assumingMemoryBound(to: GtkFontSelectionDialogClass.self) }

}



// MARK: - FontSelectionDialogPrivate Record

/// The `FontSelectionDialogPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkFontSelectionDialogPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontSelectionDialogPrivate`.
/// Alternatively, use `FontSelectionDialogPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontSelectionDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFontSelectionDialogPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFontSelectionDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFontSelectionDialogPrivate> { get }
}

/// The `FontSelectionDialogPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkFontSelectionDialogPrivate` instance.
/// It exposes methods that can operate on this data type through `FontSelectionDialogPrivateProtocol` conformance.
/// Use `FontSelectionDialogPrivateRef` only as an `unowned` reference to an existing `GtkFontSelectionDialogPrivate` instance.
///

public struct FontSelectionDialogPrivateRef: FontSelectionDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFontSelectionDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontSelectionDialogPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFontSelectionDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontSelectionDialogPrivateProtocol`
    init<T: FontSelectionDialogPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontSelectionDialogPrivate` type acts as an owner of an underlying `GtkFontSelectionDialogPrivate` instance.
/// It provides the methods that can operate on this data type through `FontSelectionDialogPrivateProtocol` conformance.
/// Use `FontSelectionDialogPrivate` as a strong reference or owner of a `GtkFontSelectionDialogPrivate` instance.
///

open class FontSelectionDialogPrivate: FontSelectionDialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFontSelectionDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontSelectionDialogPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkFontSelectionDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontSelectionDialogPrivateProtocol`
    /// `GtkFontSelectionDialogPrivate` does not allow reference counting.
    public convenience init<T: FontSelectionDialogPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFontSelectionDialogPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFontSelectionDialogPrivate`.
    deinit {
        // no reference counting for GtkFontSelectionDialogPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFontSelectionDialogPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFontSelectionDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFontSelectionDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFontSelectionDialogPrivate>(opaquePointer))
    }



}

// MARK: - no FontSelectionDialogPrivate properties

// MARK: - no signals


public extension FontSelectionDialogPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontSelectionDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFontSelectionDialogPrivate> { return ptr.assumingMemoryBound(to: GtkFontSelectionDialogPrivate.self) }

}



// MARK: - FontSelectionPrivate Record

/// The `FontSelectionPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkFontSelectionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontSelectionPrivate`.
/// Alternatively, use `FontSelectionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontSelectionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFontSelectionPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFontSelectionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFontSelectionPrivate> { get }
}

/// The `FontSelectionPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkFontSelectionPrivate` instance.
/// It exposes methods that can operate on this data type through `FontSelectionPrivateProtocol` conformance.
/// Use `FontSelectionPrivateRef` only as an `unowned` reference to an existing `GtkFontSelectionPrivate` instance.
///

public struct FontSelectionPrivateRef: FontSelectionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFontSelectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontSelectionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFontSelectionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontSelectionPrivateProtocol`
    init<T: FontSelectionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontSelectionPrivate` type acts as an owner of an underlying `GtkFontSelectionPrivate` instance.
/// It provides the methods that can operate on this data type through `FontSelectionPrivateProtocol` conformance.
/// Use `FontSelectionPrivate` as a strong reference or owner of a `GtkFontSelectionPrivate` instance.
///

open class FontSelectionPrivate: FontSelectionPrivateProtocol {
    /// Untyped pointer to the underlying `GtkFontSelectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontSelectionPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkFontSelectionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontSelectionPrivateProtocol`
    /// `GtkFontSelectionPrivate` does not allow reference counting.
    public convenience init<T: FontSelectionPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFontSelectionPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFontSelectionPrivate`.
    deinit {
        // no reference counting for GtkFontSelectionPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFontSelectionPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFontSelectionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFontSelectionPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFontSelectionPrivate>(opaquePointer))
    }



}

// MARK: - no FontSelectionPrivate properties

// MARK: - no signals


public extension FontSelectionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontSelectionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFontSelectionPrivate> { return ptr.assumingMemoryBound(to: GtkFontSelectionPrivate.self) }

}



// MARK: - FrameAccessibleClass Record

/// The `FrameAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkFrameAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FrameAccessibleClass`.
/// Alternatively, use `FrameAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FrameAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkFrameAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFrameAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFrameAccessibleClass> { get }
}

/// The `FrameAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkFrameAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `FrameAccessibleClassProtocol` conformance.
/// Use `FrameAccessibleClassRef` only as an `unowned` reference to an existing `GtkFrameAccessibleClass` instance.
///

public struct FrameAccessibleClassRef: FrameAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkFrameAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FrameAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFrameAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FrameAccessibleClassProtocol`
    init<T: FrameAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FrameAccessibleClass` type acts as an owner of an underlying `GtkFrameAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `FrameAccessibleClassProtocol` conformance.
/// Use `FrameAccessibleClass` as a strong reference or owner of a `GtkFrameAccessibleClass` instance.
///

open class FrameAccessibleClass: FrameAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkFrameAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FrameAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFrameAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FrameAccessibleClassProtocol`
    /// `GtkFrameAccessibleClass` does not allow reference counting.
    public convenience init<T: FrameAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFrameAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFrameAccessibleClass`.
    deinit {
        // no reference counting for GtkFrameAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFrameAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFrameAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFrameAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFrameAccessibleClass>(opaquePointer))
    }



}

// MARK: - no FrameAccessibleClass properties

// MARK: - no signals


public extension FrameAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFrameAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFrameAccessibleClass> { return ptr.assumingMemoryBound(to: GtkFrameAccessibleClass.self) }

}



// MARK: - FrameAccessiblePrivate Record

/// The `FrameAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkFrameAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FrameAccessiblePrivate`.
/// Alternatively, use `FrameAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FrameAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkFrameAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFrameAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFrameAccessiblePrivate> { get }
}

/// The `FrameAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkFrameAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `FrameAccessiblePrivateProtocol` conformance.
/// Use `FrameAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkFrameAccessiblePrivate` instance.
///

public struct FrameAccessiblePrivateRef: FrameAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkFrameAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FrameAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFrameAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FrameAccessiblePrivateProtocol`
    init<T: FrameAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FrameAccessiblePrivate` type acts as an owner of an underlying `GtkFrameAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `FrameAccessiblePrivateProtocol` conformance.
/// Use `FrameAccessiblePrivate` as a strong reference or owner of a `GtkFrameAccessiblePrivate` instance.
///

open class FrameAccessiblePrivate: FrameAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkFrameAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FrameAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkFrameAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FrameAccessiblePrivateProtocol`
    /// `GtkFrameAccessiblePrivate` does not allow reference counting.
    public convenience init<T: FrameAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFrameAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFrameAccessiblePrivate`.
    deinit {
        // no reference counting for GtkFrameAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFrameAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFrameAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFrameAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFrameAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no FrameAccessiblePrivate properties

// MARK: - no signals


public extension FrameAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFrameAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFrameAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkFrameAccessiblePrivate.self) }

}



// MARK: - FrameClass Record

/// The `FrameClassProtocol` protocol exposes the methods and properties of an underlying `GtkFrameClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FrameClass`.
/// Alternatively, use `FrameClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FrameClassProtocol {
    /// Untyped pointer to the underlying `GtkFrameClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFrameClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFrameClass> { get }
}

/// The `FrameClassRef` type acts as a lightweight Swift reference to an underlying `GtkFrameClass` instance.
/// It exposes methods that can operate on this data type through `FrameClassProtocol` conformance.
/// Use `FrameClassRef` only as an `unowned` reference to an existing `GtkFrameClass` instance.
///

public struct FrameClassRef: FrameClassProtocol {
    /// Untyped pointer to the underlying `GtkFrameClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FrameClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFrameClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FrameClassProtocol`
    init<T: FrameClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FrameClass` type acts as an owner of an underlying `GtkFrameClass` instance.
/// It provides the methods that can operate on this data type through `FrameClassProtocol` conformance.
/// Use `FrameClass` as a strong reference or owner of a `GtkFrameClass` instance.
///

open class FrameClass: FrameClassProtocol {
    /// Untyped pointer to the underlying `GtkFrameClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FrameClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkFrameClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FrameClassProtocol`
    /// `GtkFrameClass` does not allow reference counting.
    public convenience init<T: FrameClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFrameClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFrameClass`.
    deinit {
        // no reference counting for GtkFrameClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFrameClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFrameClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFrameClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFrameClass>(opaquePointer))
    }



}

// MARK: - no FrameClass properties

// MARK: - no signals


public extension FrameClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFrameClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFrameClass> { return ptr.assumingMemoryBound(to: GtkFrameClass.self) }

}



// MARK: - FramePrivate Record

/// The `FramePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkFramePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FramePrivate`.
/// Alternatively, use `FramePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FramePrivateProtocol {
    /// Untyped pointer to the underlying `GtkFramePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFramePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFramePrivate> { get }
}

/// The `FramePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkFramePrivate` instance.
/// It exposes methods that can operate on this data type through `FramePrivateProtocol` conformance.
/// Use `FramePrivateRef` only as an `unowned` reference to an existing `GtkFramePrivate` instance.
///

public struct FramePrivateRef: FramePrivateProtocol {
    /// Untyped pointer to the underlying `GtkFramePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FramePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFramePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FramePrivateProtocol`
    init<T: FramePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FramePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FramePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FramePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FramePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FramePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FramePrivate` type acts as an owner of an underlying `GtkFramePrivate` instance.
/// It provides the methods that can operate on this data type through `FramePrivateProtocol` conformance.
/// Use `FramePrivate` as a strong reference or owner of a `GtkFramePrivate` instance.
///

open class FramePrivate: FramePrivateProtocol {
    /// Untyped pointer to the underlying `GtkFramePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FramePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkFramePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FramePrivateProtocol`
    /// `GtkFramePrivate` does not allow reference counting.
    public convenience init<T: FramePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkFramePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkFramePrivate`.
    deinit {
        // no reference counting for GtkFramePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FramePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFramePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FramePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFramePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FramePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFramePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FramePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFramePrivate>(opaquePointer))
    }



}

// MARK: - no FramePrivate properties

// MARK: - no signals


public extension FramePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFramePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkFramePrivate> { return ptr.assumingMemoryBound(to: GtkFramePrivate.self) }

}



// MARK: - GLAreaClass Record

/// The `GLAreaClassProtocol` protocol exposes the methods and properties of an underlying `GtkGLAreaClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GLAreaClass`.
/// Alternatively, use `GLAreaClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkGLAreaClass` structure contains only private data.
public protocol GLAreaClassProtocol {
    /// Untyped pointer to the underlying `GtkGLAreaClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGLAreaClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGLAreaClass> { get }
}

/// The `GLAreaClassRef` type acts as a lightweight Swift reference to an underlying `GtkGLAreaClass` instance.
/// It exposes methods that can operate on this data type through `GLAreaClassProtocol` conformance.
/// Use `GLAreaClassRef` only as an `unowned` reference to an existing `GtkGLAreaClass` instance.
///
/// The `GtkGLAreaClass` structure contains only private data.
public struct GLAreaClassRef: GLAreaClassProtocol {
    /// Untyped pointer to the underlying `GtkGLAreaClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GLAreaClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGLAreaClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GLAreaClassProtocol`
    init<T: GLAreaClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GLAreaClass` type acts as an owner of an underlying `GtkGLAreaClass` instance.
/// It provides the methods that can operate on this data type through `GLAreaClassProtocol` conformance.
/// Use `GLAreaClass` as a strong reference or owner of a `GtkGLAreaClass` instance.
///
/// The `GtkGLAreaClass` structure contains only private data.
open class GLAreaClass: GLAreaClassProtocol {
    /// Untyped pointer to the underlying `GtkGLAreaClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GLAreaClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkGLAreaClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `GLAreaClassProtocol`
    /// `GtkGLAreaClass` does not allow reference counting.
    public convenience init<T: GLAreaClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkGLAreaClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkGLAreaClass`.
    deinit {
        // no reference counting for GtkGLAreaClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGLAreaClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGLAreaClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGLAreaClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGLAreaClass>(opaquePointer))
    }



}

// MARK: - no GLAreaClass properties

// MARK: - no signals


public extension GLAreaClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGLAreaClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGLAreaClass> { return ptr.assumingMemoryBound(to: GtkGLAreaClass.self) }

}



