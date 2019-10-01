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

// MARK: - _MountOperationHandlerIface Record

/// The `_MountOperationHandlerIfaceProtocol` protocol exposes the methods and properties of an underlying `_GtkMountOperationHandlerIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MountOperationHandlerIface`.
/// Alternatively, use `_MountOperationHandlerIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Virtual table for the D-Bus interface <link linkend="gdbus-interface-org-Gtk-MountOperationHandler.top_of_page">org.Gtk.MountOperationHandler</link>.
public protocol _MountOperationHandlerIfaceProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandlerIface` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerIface> { get }
}

/// The `_MountOperationHandlerIfaceRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandlerIface` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerIfaceProtocol` conformance.
/// Use `_MountOperationHandlerIfaceRef` only as an `unowned` reference to an existing `_GtkMountOperationHandlerIface` instance.
///
/// Virtual table for the D-Bus interface <link linkend="gdbus-interface-org-Gtk-MountOperationHandler.top_of_page">org.Gtk.MountOperationHandler</link>.
public struct _MountOperationHandlerIfaceRef: _MountOperationHandlerIfaceProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension _MountOperationHandlerIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<_GtkMountOperationHandlerIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerIfaceProtocol`
    init<T: _MountOperationHandlerIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MountOperationHandlerIface` type acts as an owner of an underlying `_GtkMountOperationHandlerIface` instance.
/// It provides the methods that can operate on this data type through `_MountOperationHandlerIfaceProtocol` conformance.
/// Use `_MountOperationHandlerIface` as a strong reference or owner of a `_GtkMountOperationHandlerIface` instance.
///
/// Virtual table for the D-Bus interface <link linkend="gdbus-interface-org-Gtk-MountOperationHandler.top_of_page">org.Gtk.MountOperationHandler</link>.
open class _MountOperationHandlerIface: _MountOperationHandlerIfaceProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `_MountOperationHandlerIface` instance.
    public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `_MountOperationHandlerIfaceProtocol`
    /// `_GtkMountOperationHandlerIface` does not allow reference counting.
    public convenience init<T: _MountOperationHandlerIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for _GtkMountOperationHandlerIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`_GtkMountOperationHandlerIface`.
    deinit {
        // no reference counting for _GtkMountOperationHandlerIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: _GtkMountOperationHandlerIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: _GtkMountOperationHandlerIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: _GtkMountOperationHandlerIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<_GtkMountOperationHandlerIface>(opaquePointer))
    }



}

// MARK: - no _MountOperationHandlerIface properties

// MARK: - no signals


public extension _MountOperationHandlerIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandlerIface` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerIface> { return ptr.assumingMemoryBound(to: _GtkMountOperationHandlerIface.self) }

}



// MARK: - _MountOperationHandlerProxy Record

/// The `_MountOperationHandlerProxyProtocol` protocol exposes the methods and properties of an underlying `_GtkMountOperationHandlerProxy` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MountOperationHandlerProxy`.
/// Alternatively, use `_MountOperationHandlerProxyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `_GtkMountOperationHandlerProxy` structure contains only private data and should only be accessed using the provided API.
public protocol _MountOperationHandlerProxyProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxy` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandlerProxy` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerProxy> { get }
}

/// The `_MountOperationHandlerProxyRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandlerProxy` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerProxyProtocol` conformance.
/// Use `_MountOperationHandlerProxyRef` only as an `unowned` reference to an existing `_GtkMountOperationHandlerProxy` instance.
///
/// The `_GtkMountOperationHandlerProxy` structure contains only private data and should only be accessed using the provided API.
public struct _MountOperationHandlerProxyRef: _MountOperationHandlerProxyProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxy` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension _MountOperationHandlerProxyRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<_GtkMountOperationHandlerProxy>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerProxyProtocol`
    init<T: _MountOperationHandlerProxyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MountOperationHandlerProxy` type acts as an owner of an underlying `_GtkMountOperationHandlerProxy` instance.
/// It provides the methods that can operate on this data type through `_MountOperationHandlerProxyProtocol` conformance.
/// Use `_MountOperationHandlerProxy` as a strong reference or owner of a `_GtkMountOperationHandlerProxy` instance.
///
/// The `_GtkMountOperationHandlerProxy` structure contains only private data and should only be accessed using the provided API.
open class _MountOperationHandlerProxy: _MountOperationHandlerProxyProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxy` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `_MountOperationHandlerProxy` instance.
    public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerProxy>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `_MountOperationHandlerProxyProtocol`
    /// `_GtkMountOperationHandlerProxy` does not allow reference counting.
    public convenience init<T: _MountOperationHandlerProxyProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for _GtkMountOperationHandlerProxy, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`_GtkMountOperationHandlerProxy`.
    deinit {
        // no reference counting for _GtkMountOperationHandlerProxy, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: _GtkMountOperationHandlerProxy.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: _GtkMountOperationHandlerProxy.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: _GtkMountOperationHandlerProxy.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<_GtkMountOperationHandlerProxy>(opaquePointer))
    }



}

// MARK: - no _MountOperationHandlerProxy properties

// MARK: - no signals


public extension _MountOperationHandlerProxyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandlerProxy` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerProxy> { return ptr.assumingMemoryBound(to: _GtkMountOperationHandlerProxy.self) }

}



// MARK: - _MountOperationHandlerProxyClass Record

/// The `_MountOperationHandlerProxyClassProtocol` protocol exposes the methods and properties of an underlying `_GtkMountOperationHandlerProxyClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MountOperationHandlerProxyClass`.
/// Alternatively, use `_MountOperationHandlerProxyClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `_GtkMountOperationHandlerProxy`.
public protocol _MountOperationHandlerProxyClassProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxyClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandlerProxyClass` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerProxyClass> { get }
}

/// The `_MountOperationHandlerProxyClassRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandlerProxyClass` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerProxyClassProtocol` conformance.
/// Use `_MountOperationHandlerProxyClassRef` only as an `unowned` reference to an existing `_GtkMountOperationHandlerProxyClass` instance.
///
/// Class structure for `_GtkMountOperationHandlerProxy`.
public struct _MountOperationHandlerProxyClassRef: _MountOperationHandlerProxyClassProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension _MountOperationHandlerProxyClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<_GtkMountOperationHandlerProxyClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerProxyClassProtocol`
    init<T: _MountOperationHandlerProxyClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MountOperationHandlerProxyClass` type acts as an owner of an underlying `_GtkMountOperationHandlerProxyClass` instance.
/// It provides the methods that can operate on this data type through `_MountOperationHandlerProxyClassProtocol` conformance.
/// Use `_MountOperationHandlerProxyClass` as a strong reference or owner of a `_GtkMountOperationHandlerProxyClass` instance.
///
/// Class structure for `_GtkMountOperationHandlerProxy`.
open class _MountOperationHandlerProxyClass: _MountOperationHandlerProxyClassProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `_MountOperationHandlerProxyClass` instance.
    public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerProxyClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `_MountOperationHandlerProxyClassProtocol`
    /// `_GtkMountOperationHandlerProxyClass` does not allow reference counting.
    public convenience init<T: _MountOperationHandlerProxyClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for _GtkMountOperationHandlerProxyClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`_GtkMountOperationHandlerProxyClass`.
    deinit {
        // no reference counting for _GtkMountOperationHandlerProxyClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: _GtkMountOperationHandlerProxyClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: _GtkMountOperationHandlerProxyClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: _GtkMountOperationHandlerProxyClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<_GtkMountOperationHandlerProxyClass>(opaquePointer))
    }



}

// MARK: - no _MountOperationHandlerProxyClass properties

// MARK: - no signals


public extension _MountOperationHandlerProxyClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandlerProxyClass` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerProxyClass> { return ptr.assumingMemoryBound(to: _GtkMountOperationHandlerProxyClass.self) }

}



// MARK: - _MountOperationHandlerProxyPrivate Record

/// The `_MountOperationHandlerProxyPrivateProtocol` protocol exposes the methods and properties of an underlying `_GtkMountOperationHandlerProxyPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MountOperationHandlerProxyPrivate`.
/// Alternatively, use `_MountOperationHandlerProxyPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol _MountOperationHandlerProxyPrivateProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxyPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandlerProxyPrivate` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerProxyPrivate> { get }
}

/// The `_MountOperationHandlerProxyPrivateRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandlerProxyPrivate` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerProxyPrivateProtocol` conformance.
/// Use `_MountOperationHandlerProxyPrivateRef` only as an `unowned` reference to an existing `_GtkMountOperationHandlerProxyPrivate` instance.
///

public struct _MountOperationHandlerProxyPrivateRef: _MountOperationHandlerProxyPrivateProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxyPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension _MountOperationHandlerProxyPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<_GtkMountOperationHandlerProxyPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerProxyPrivateProtocol`
    init<T: _MountOperationHandlerProxyPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MountOperationHandlerProxyPrivate` type acts as an owner of an underlying `_GtkMountOperationHandlerProxyPrivate` instance.
/// It provides the methods that can operate on this data type through `_MountOperationHandlerProxyPrivateProtocol` conformance.
/// Use `_MountOperationHandlerProxyPrivate` as a strong reference or owner of a `_GtkMountOperationHandlerProxyPrivate` instance.
///

open class _MountOperationHandlerProxyPrivate: _MountOperationHandlerProxyPrivateProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerProxyPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `_MountOperationHandlerProxyPrivate` instance.
    public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerProxyPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `_MountOperationHandlerProxyPrivateProtocol`
    /// `_GtkMountOperationHandlerProxyPrivate` does not allow reference counting.
    public convenience init<T: _MountOperationHandlerProxyPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for _GtkMountOperationHandlerProxyPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`_GtkMountOperationHandlerProxyPrivate`.
    deinit {
        // no reference counting for _GtkMountOperationHandlerProxyPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: _GtkMountOperationHandlerProxyPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: _GtkMountOperationHandlerProxyPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: _GtkMountOperationHandlerProxyPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProxyPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<_GtkMountOperationHandlerProxyPrivate>(opaquePointer))
    }



}

// MARK: - no _MountOperationHandlerProxyPrivate properties

// MARK: - no signals


public extension _MountOperationHandlerProxyPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandlerProxyPrivate` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerProxyPrivate> { return ptr.assumingMemoryBound(to: _GtkMountOperationHandlerProxyPrivate.self) }

}



// MARK: - _MountOperationHandlerSkeleton Record

/// The `_MountOperationHandlerSkeletonProtocol` protocol exposes the methods and properties of an underlying `_GtkMountOperationHandlerSkeleton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MountOperationHandlerSkeleton`.
/// Alternatively, use `_MountOperationHandlerSkeletonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `_GtkMountOperationHandlerSkeleton` structure contains only private data and should only be accessed using the provided API.
public protocol _MountOperationHandlerSkeletonProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeleton` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandlerSkeleton` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerSkeleton> { get }
}

/// The `_MountOperationHandlerSkeletonRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandlerSkeleton` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerSkeletonProtocol` conformance.
/// Use `_MountOperationHandlerSkeletonRef` only as an `unowned` reference to an existing `_GtkMountOperationHandlerSkeleton` instance.
///
/// The `_GtkMountOperationHandlerSkeleton` structure contains only private data and should only be accessed using the provided API.
public struct _MountOperationHandlerSkeletonRef: _MountOperationHandlerSkeletonProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeleton` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension _MountOperationHandlerSkeletonRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<_GtkMountOperationHandlerSkeleton>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerSkeletonProtocol`
    init<T: _MountOperationHandlerSkeletonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MountOperationHandlerSkeleton` type acts as an owner of an underlying `_GtkMountOperationHandlerSkeleton` instance.
/// It provides the methods that can operate on this data type through `_MountOperationHandlerSkeletonProtocol` conformance.
/// Use `_MountOperationHandlerSkeleton` as a strong reference or owner of a `_GtkMountOperationHandlerSkeleton` instance.
///
/// The `_GtkMountOperationHandlerSkeleton` structure contains only private data and should only be accessed using the provided API.
open class _MountOperationHandlerSkeleton: _MountOperationHandlerSkeletonProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeleton` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `_MountOperationHandlerSkeleton` instance.
    public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerSkeleton>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `_MountOperationHandlerSkeletonProtocol`
    /// `_GtkMountOperationHandlerSkeleton` does not allow reference counting.
    public convenience init<T: _MountOperationHandlerSkeletonProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for _GtkMountOperationHandlerSkeleton, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`_GtkMountOperationHandlerSkeleton`.
    deinit {
        // no reference counting for _GtkMountOperationHandlerSkeleton, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: _GtkMountOperationHandlerSkeleton.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: _GtkMountOperationHandlerSkeleton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: _GtkMountOperationHandlerSkeleton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<_GtkMountOperationHandlerSkeleton>(opaquePointer))
    }



}

// MARK: - no _MountOperationHandlerSkeleton properties

// MARK: - no signals


public extension _MountOperationHandlerSkeletonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandlerSkeleton` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerSkeleton> { return ptr.assumingMemoryBound(to: _GtkMountOperationHandlerSkeleton.self) }

}



// MARK: - _MountOperationHandlerSkeletonClass Record

/// The `_MountOperationHandlerSkeletonClassProtocol` protocol exposes the methods and properties of an underlying `_GtkMountOperationHandlerSkeletonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MountOperationHandlerSkeletonClass`.
/// Alternatively, use `_MountOperationHandlerSkeletonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `_GtkMountOperationHandlerSkeleton`.
public protocol _MountOperationHandlerSkeletonClassProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeletonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandlerSkeletonClass` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonClass> { get }
}

/// The `_MountOperationHandlerSkeletonClassRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandlerSkeletonClass` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerSkeletonClassProtocol` conformance.
/// Use `_MountOperationHandlerSkeletonClassRef` only as an `unowned` reference to an existing `_GtkMountOperationHandlerSkeletonClass` instance.
///
/// Class structure for `_GtkMountOperationHandlerSkeleton`.
public struct _MountOperationHandlerSkeletonClassRef: _MountOperationHandlerSkeletonClassProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeletonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension _MountOperationHandlerSkeletonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerSkeletonClassProtocol`
    init<T: _MountOperationHandlerSkeletonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MountOperationHandlerSkeletonClass` type acts as an owner of an underlying `_GtkMountOperationHandlerSkeletonClass` instance.
/// It provides the methods that can operate on this data type through `_MountOperationHandlerSkeletonClassProtocol` conformance.
/// Use `_MountOperationHandlerSkeletonClass` as a strong reference or owner of a `_GtkMountOperationHandlerSkeletonClass` instance.
///
/// Class structure for `_GtkMountOperationHandlerSkeleton`.
open class _MountOperationHandlerSkeletonClass: _MountOperationHandlerSkeletonClassProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeletonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `_MountOperationHandlerSkeletonClass` instance.
    public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `_MountOperationHandlerSkeletonClassProtocol`
    /// `_GtkMountOperationHandlerSkeletonClass` does not allow reference counting.
    public convenience init<T: _MountOperationHandlerSkeletonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for _GtkMountOperationHandlerSkeletonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`_GtkMountOperationHandlerSkeletonClass`.
    deinit {
        // no reference counting for _GtkMountOperationHandlerSkeletonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: _GtkMountOperationHandlerSkeletonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: _GtkMountOperationHandlerSkeletonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: _GtkMountOperationHandlerSkeletonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonClass>(opaquePointer))
    }



}

// MARK: - no _MountOperationHandlerSkeletonClass properties

// MARK: - no signals


public extension _MountOperationHandlerSkeletonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandlerSkeletonClass` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonClass> { return ptr.assumingMemoryBound(to: _GtkMountOperationHandlerSkeletonClass.self) }

}



// MARK: - _MountOperationHandlerSkeletonPrivate Record

/// The `_MountOperationHandlerSkeletonPrivateProtocol` protocol exposes the methods and properties of an underlying `_GtkMountOperationHandlerSkeletonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MountOperationHandlerSkeletonPrivate`.
/// Alternatively, use `_MountOperationHandlerSkeletonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol _MountOperationHandlerSkeletonPrivateProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeletonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandlerSkeletonPrivate` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonPrivate> { get }
}

/// The `_MountOperationHandlerSkeletonPrivateRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandlerSkeletonPrivate` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerSkeletonPrivateProtocol` conformance.
/// Use `_MountOperationHandlerSkeletonPrivateRef` only as an `unowned` reference to an existing `_GtkMountOperationHandlerSkeletonPrivate` instance.
///

public struct _MountOperationHandlerSkeletonPrivateRef: _MountOperationHandlerSkeletonPrivateProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeletonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension _MountOperationHandlerSkeletonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerSkeletonPrivateProtocol`
    init<T: _MountOperationHandlerSkeletonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MountOperationHandlerSkeletonPrivate` type acts as an owner of an underlying `_GtkMountOperationHandlerSkeletonPrivate` instance.
/// It provides the methods that can operate on this data type through `_MountOperationHandlerSkeletonPrivateProtocol` conformance.
/// Use `_MountOperationHandlerSkeletonPrivate` as a strong reference or owner of a `_GtkMountOperationHandlerSkeletonPrivate` instance.
///

open class _MountOperationHandlerSkeletonPrivate: _MountOperationHandlerSkeletonPrivateProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandlerSkeletonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `_MountOperationHandlerSkeletonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `_MountOperationHandlerSkeletonPrivateProtocol`
    /// `_GtkMountOperationHandlerSkeletonPrivate` does not allow reference counting.
    public convenience init<T: _MountOperationHandlerSkeletonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for _GtkMountOperationHandlerSkeletonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`_GtkMountOperationHandlerSkeletonPrivate`.
    deinit {
        // no reference counting for _GtkMountOperationHandlerSkeletonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: _GtkMountOperationHandlerSkeletonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: _GtkMountOperationHandlerSkeletonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: _GtkMountOperationHandlerSkeletonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerSkeletonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonPrivate>(opaquePointer))
    }



}

// MARK: - no _MountOperationHandlerSkeletonPrivate properties

// MARK: - no signals


public extension _MountOperationHandlerSkeletonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandlerSkeletonPrivate` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandlerSkeletonPrivate> { return ptr.assumingMemoryBound(to: _GtkMountOperationHandlerSkeletonPrivate.self) }

}



