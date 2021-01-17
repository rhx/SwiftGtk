import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import CGtk
import GLib
import GLibObject
import GIO
import Pango
import Cairo
import PangoCairo
import GdkPixbuf
import Gdk

/// Metatype/GType declaration for NativeDialog
public extension NativeDialogClassRef {
    
    /// This getter returns the GLib type identifier registered for `NativeDialog`
    static var metatypeReference: GType { gtk_native_dialog_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkNativeDialogClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkNativeDialogClass.self) }
    
    static var metatype: GtkNativeDialogClass? { metatypePointer?.pointee } 
    
    static var wrapper: NativeDialogClassRef? { NativeDialogClassRef(metatypePointer) }
    
    
}

// MARK: - NativeDialogClass Record

/// The `NativeDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkNativeDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NativeDialogClass`.
/// Alternatively, use `NativeDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GtkNativeDialog`.
public protocol NativeDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkNativeDialogClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNativeDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNativeDialogClass>! { get }

}

/// The `NativeDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkNativeDialogClass` instance.
/// It exposes methods that can operate on this data type through `NativeDialogClassProtocol` conformance.
/// Use `NativeDialogClassRef` only as an `unowned` reference to an existing `GtkNativeDialogClass` instance.
///
/// Class structure for `GtkNativeDialog`.
public struct NativeDialogClassRef: NativeDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkNativeDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NativeDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNativeDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNativeDialogClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNativeDialogClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNativeDialogClass>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `NativeDialogClassProtocol`
    @inlinable init<T: NativeDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NativeDialogClass Record: NativeDialogClassProtocol extension (methods and fields)
public extension NativeDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNativeDialogClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkNativeDialogClass>! { return ptr?.assumingMemoryBound(to: GtkNativeDialogClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var response is unavailable because response is void

    // var show is unavailable because show is void

    // var hide is unavailable because hide is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for Native
public extension NativeInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Native`
    static var metatypeReference: GType { gtk_native_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkNativeInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkNativeInterface.self) }
    
    static var metatype: GtkNativeInterface? { metatypePointer?.pointee } 
    
    static var wrapper: NativeInterfaceRef? { NativeInterfaceRef(metatypePointer) }
    
    
}

// MARK: - NativeInterface Record

/// The `NativeInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkNativeInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NativeInterface`.
/// Alternatively, use `NativeInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NativeInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkNativeInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNativeInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkNativeInterface>! { get }

}

/// The `NativeInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkNativeInterface` instance.
/// It exposes methods that can operate on this data type through `NativeInterfaceProtocol` conformance.
/// Use `NativeInterfaceRef` only as an `unowned` reference to an existing `GtkNativeInterface` instance.
///

public struct NativeInterfaceRef: NativeInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkNativeInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NativeInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNativeInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNativeInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNativeInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNativeInterface>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `NativeInterfaceProtocol`
    @inlinable init<T: NativeInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NativeInterface Record: NativeInterfaceProtocol extension (methods and fields)
public extension NativeInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNativeInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkNativeInterface>! { return ptr?.assumingMemoryBound(to: GtkNativeInterface.self) }



}



/// Metatype/GType declaration for NeverTrigger
public extension NeverTriggerClassRef {
    
    /// This getter returns the GLib type identifier registered for `NeverTrigger`
    static var metatypeReference: GType { gtk_never_trigger_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkNeverTriggerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkNeverTriggerClass.self) }
    
    static var metatype: GtkNeverTriggerClass? { metatypePointer?.pointee } 
    
    static var wrapper: NeverTriggerClassRef? { NeverTriggerClassRef(metatypePointer) }
    
    
}

// MARK: - NeverTriggerClass Record

/// The `NeverTriggerClassProtocol` protocol exposes the methods and properties of an underlying `GtkNeverTriggerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NeverTriggerClass`.
/// Alternatively, use `NeverTriggerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NeverTriggerClassProtocol {
        /// Untyped pointer to the underlying `GtkNeverTriggerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNeverTriggerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNeverTriggerClass>! { get }

}

/// The `NeverTriggerClassRef` type acts as a lightweight Swift reference to an underlying `GtkNeverTriggerClass` instance.
/// It exposes methods that can operate on this data type through `NeverTriggerClassProtocol` conformance.
/// Use `NeverTriggerClassRef` only as an `unowned` reference to an existing `GtkNeverTriggerClass` instance.
///

public struct NeverTriggerClassRef: NeverTriggerClassProtocol {
        /// Untyped pointer to the underlying `GtkNeverTriggerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NeverTriggerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNeverTriggerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNeverTriggerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNeverTriggerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNeverTriggerClass>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `NeverTriggerClassProtocol`
    @inlinable init<T: NeverTriggerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NeverTriggerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NeverTriggerClass Record: NeverTriggerClassProtocol extension (methods and fields)
public extension NeverTriggerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNeverTriggerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkNeverTriggerClass>! { return ptr?.assumingMemoryBound(to: GtkNeverTriggerClass.self) }



}



/// Metatype/GType declaration for NoSelection
public extension NoSelectionClassRef {
    
    /// This getter returns the GLib type identifier registered for `NoSelection`
    static var metatypeReference: GType { gtk_no_selection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkNoSelectionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkNoSelectionClass.self) }
    
    static var metatype: GtkNoSelectionClass? { metatypePointer?.pointee } 
    
    static var wrapper: NoSelectionClassRef? { NoSelectionClassRef(metatypePointer) }
    
    
}

// MARK: - NoSelectionClass Record

/// The `NoSelectionClassProtocol` protocol exposes the methods and properties of an underlying `GtkNoSelectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NoSelectionClass`.
/// Alternatively, use `NoSelectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NoSelectionClassProtocol {
        /// Untyped pointer to the underlying `GtkNoSelectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNoSelectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNoSelectionClass>! { get }

}

/// The `NoSelectionClassRef` type acts as a lightweight Swift reference to an underlying `GtkNoSelectionClass` instance.
/// It exposes methods that can operate on this data type through `NoSelectionClassProtocol` conformance.
/// Use `NoSelectionClassRef` only as an `unowned` reference to an existing `GtkNoSelectionClass` instance.
///

public struct NoSelectionClassRef: NoSelectionClassProtocol {
        /// Untyped pointer to the underlying `GtkNoSelectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NoSelectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNoSelectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNoSelectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNoSelectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNoSelectionClass>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `NoSelectionClassProtocol`
    @inlinable init<T: NoSelectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NoSelectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NoSelectionClass Record: NoSelectionClassProtocol extension (methods and fields)
public extension NoSelectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNoSelectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkNoSelectionClass>! { return ptr?.assumingMemoryBound(to: GtkNoSelectionClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for NothingAction
public extension NothingActionClassRef {
    
    /// This getter returns the GLib type identifier registered for `NothingAction`
    static var metatypeReference: GType { gtk_nothing_action_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkNothingActionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkNothingActionClass.self) }
    
    static var metatype: GtkNothingActionClass? { metatypePointer?.pointee } 
    
    static var wrapper: NothingActionClassRef? { NothingActionClassRef(metatypePointer) }
    
    
}

// MARK: - NothingActionClass Record

/// The `NothingActionClassProtocol` protocol exposes the methods and properties of an underlying `GtkNothingActionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NothingActionClass`.
/// Alternatively, use `NothingActionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NothingActionClassProtocol {
        /// Untyped pointer to the underlying `GtkNothingActionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNothingActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNothingActionClass>! { get }

}

/// The `NothingActionClassRef` type acts as a lightweight Swift reference to an underlying `GtkNothingActionClass` instance.
/// It exposes methods that can operate on this data type through `NothingActionClassProtocol` conformance.
/// Use `NothingActionClassRef` only as an `unowned` reference to an existing `GtkNothingActionClass` instance.
///

public struct NothingActionClassRef: NothingActionClassProtocol {
        /// Untyped pointer to the underlying `GtkNothingActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NothingActionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNothingActionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNothingActionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNothingActionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNothingActionClass>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `NothingActionClassProtocol`
    @inlinable init<T: NothingActionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NothingActionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NothingActionClass Record: NothingActionClassProtocol extension (methods and fields)
public extension NothingActionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNothingActionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkNothingActionClass>! { return ptr?.assumingMemoryBound(to: GtkNothingActionClass.self) }



}



/// Metatype/GType declaration for NumericSorter
public extension NumericSorterClassRef {
    
    /// This getter returns the GLib type identifier registered for `NumericSorter`
    static var metatypeReference: GType { gtk_numeric_sorter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkNumericSorterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkNumericSorterClass.self) }
    
    static var metatype: GtkNumericSorterClass? { metatypePointer?.pointee } 
    
    static var wrapper: NumericSorterClassRef? { NumericSorterClassRef(metatypePointer) }
    
    
}

// MARK: - NumericSorterClass Record

/// The `NumericSorterClassProtocol` protocol exposes the methods and properties of an underlying `GtkNumericSorterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NumericSorterClass`.
/// Alternatively, use `NumericSorterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NumericSorterClassProtocol {
        /// Untyped pointer to the underlying `GtkNumericSorterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNumericSorterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNumericSorterClass>! { get }

}

/// The `NumericSorterClassRef` type acts as a lightweight Swift reference to an underlying `GtkNumericSorterClass` instance.
/// It exposes methods that can operate on this data type through `NumericSorterClassProtocol` conformance.
/// Use `NumericSorterClassRef` only as an `unowned` reference to an existing `GtkNumericSorterClass` instance.
///

public struct NumericSorterClassRef: NumericSorterClassProtocol {
        /// Untyped pointer to the underlying `GtkNumericSorterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NumericSorterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNumericSorterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNumericSorterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNumericSorterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNumericSorterClass>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `NumericSorterClassProtocol`
    @inlinable init<T: NumericSorterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumericSorterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NumericSorterClass Record: NumericSorterClassProtocol extension (methods and fields)
public extension NumericSorterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNumericSorterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkNumericSorterClass>! { return ptr?.assumingMemoryBound(to: GtkNumericSorterClass.self) }


    @inlinable var parentClass: GtkSorterClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Orientable
public extension OrientableIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Orientable`
    static var metatypeReference: GType { gtk_orientable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkOrientableIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkOrientableIface.self) }
    
    static var metatype: GtkOrientableIface? { metatypePointer?.pointee } 
    
    static var wrapper: OrientableIfaceRef? { OrientableIfaceRef(metatypePointer) }
    
    
}

// MARK: - OrientableIface Record

/// The `OrientableIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkOrientableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OrientableIface`.
/// Alternatively, use `OrientableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OrientableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkOrientableIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkOrientableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkOrientableIface>! { get }

}

/// The `OrientableIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkOrientableIface` instance.
/// It exposes methods that can operate on this data type through `OrientableIfaceProtocol` conformance.
/// Use `OrientableIfaceRef` only as an `unowned` reference to an existing `GtkOrientableIface` instance.
///

public struct OrientableIfaceRef: OrientableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkOrientableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OrientableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkOrientableIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkOrientableIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkOrientableIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkOrientableIface>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `OrientableIfaceProtocol`
    @inlinable init<T: OrientableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: OrientableIface Record: OrientableIfaceProtocol extension (methods and fields)
public extension OrientableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOrientableIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkOrientableIface>! { return ptr?.assumingMemoryBound(to: GtkOrientableIface.self) }


    @inlinable var baseIface: GTypeInterface {
        get {
            let rv = _ptr.pointee.base_iface
            return rv
        }
    }

}



