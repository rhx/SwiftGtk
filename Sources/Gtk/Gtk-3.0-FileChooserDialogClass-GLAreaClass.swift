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

/// Metatype/GType declaration for FileChooserDialog
public extension FileChooserDialogClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_file_chooser_dialog_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFileChooserDialogClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFileChooserDialogClass.self) }
    
    static var metatype: GtkFileChooserDialogClass? { metatypePointer?.pointee } 
    
    static var wrapper: FileChooserDialogClassRef? { FileChooserDialogClassRef(metatypePointer) }
    
    
}

// MARK: - FileChooserDialogClass Record

/// The `FileChooserDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserDialogClass`.
/// Alternatively, use `FileChooserDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileChooserDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkFileChooserDialogClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFileChooserDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserDialogClass>! { get }

}

/// The `FileChooserDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserDialogClass` instance.
/// It exposes methods that can operate on this data type through `FileChooserDialogClassProtocol` conformance.
/// Use `FileChooserDialogClassRef` only as an `unowned` reference to an existing `GtkFileChooserDialogClass` instance.
///

public struct FileChooserDialogClassRef: FileChooserDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkFileChooserDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileChooserDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFileChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFileChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFileChooserDialogClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFileChooserDialogClass>?) {
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

    /// Reference intialiser for a related type that implements `FileChooserDialogClassProtocol`
    @inlinable init<T: FileChooserDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FileChooserDialogClass Record: FileChooserDialogClassProtocol extension (methods and fields)
public extension FileChooserDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserDialogClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFileChooserDialogClass>! { return ptr?.assumingMemoryBound(to: GtkFileChooserDialogClass.self) }


    @inlinable var parentClass: GtkDialogClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for FileChooserNative
public extension FileChooserNativeClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_file_chooser_native_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFileChooserNativeClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFileChooserNativeClass.self) }
    
    static var metatype: GtkFileChooserNativeClass? { metatypePointer?.pointee } 
    
    static var wrapper: FileChooserNativeClassRef? { FileChooserNativeClassRef(metatypePointer) }
    
    
}

// MARK: - FileChooserNativeClass Record

/// The `FileChooserNativeClassProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserNativeClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserNativeClass`.
/// Alternatively, use `FileChooserNativeClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileChooserNativeClassProtocol {
        /// Untyped pointer to the underlying `GtkFileChooserNativeClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFileChooserNativeClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserNativeClass>! { get }

}

/// The `FileChooserNativeClassRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserNativeClass` instance.
/// It exposes methods that can operate on this data type through `FileChooserNativeClassProtocol` conformance.
/// Use `FileChooserNativeClassRef` only as an `unowned` reference to an existing `GtkFileChooserNativeClass` instance.
///

public struct FileChooserNativeClassRef: FileChooserNativeClassProtocol {
        /// Untyped pointer to the underlying `GtkFileChooserNativeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileChooserNativeClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFileChooserNativeClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFileChooserNativeClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFileChooserNativeClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFileChooserNativeClass>?) {
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

    /// Reference intialiser for a related type that implements `FileChooserNativeClassProtocol`
    @inlinable init<T: FileChooserNativeClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FileChooserNativeClass Record: FileChooserNativeClassProtocol extension (methods and fields)
public extension FileChooserNativeClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserNativeClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFileChooserNativeClass>! { return ptr?.assumingMemoryBound(to: GtkFileChooserNativeClass.self) }


    @inlinable var parentClass: GtkNativeDialogClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for FileChooserWidget
public extension FileChooserWidgetClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_file_chooser_widget_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFileChooserWidgetClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFileChooserWidgetClass.self) }
    
    static var metatype: GtkFileChooserWidgetClass? { metatypePointer?.pointee } 
    
    static var wrapper: FileChooserWidgetClassRef? { FileChooserWidgetClassRef(metatypePointer) }
    
    
}

// MARK: - FileChooserWidgetClass Record

/// The `FileChooserWidgetClassProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserWidgetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserWidgetClass`.
/// Alternatively, use `FileChooserWidgetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileChooserWidgetClassProtocol {
        /// Untyped pointer to the underlying `GtkFileChooserWidgetClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFileChooserWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserWidgetClass>! { get }

}

/// The `FileChooserWidgetClassRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserWidgetClass` instance.
/// It exposes methods that can operate on this data type through `FileChooserWidgetClassProtocol` conformance.
/// Use `FileChooserWidgetClassRef` only as an `unowned` reference to an existing `GtkFileChooserWidgetClass` instance.
///

public struct FileChooserWidgetClassRef: FileChooserWidgetClassProtocol {
        /// Untyped pointer to the underlying `GtkFileChooserWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileChooserWidgetClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFileChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFileChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFileChooserWidgetClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFileChooserWidgetClass>?) {
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

    /// Reference intialiser for a related type that implements `FileChooserWidgetClassProtocol`
    @inlinable init<T: FileChooserWidgetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FileChooserWidgetClass Record: FileChooserWidgetClassProtocol extension (methods and fields)
public extension FileChooserWidgetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserWidgetClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFileChooserWidgetClass>! { return ptr?.assumingMemoryBound(to: GtkFileChooserWidgetClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBoxClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



// MARK: - FileFilterInfo Record

/// The `FileFilterInfoProtocol` protocol exposes the methods and properties of an underlying `GtkFileFilterInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileFilterInfo`.
/// Alternatively, use `FileFilterInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkFileFilterInfo`-struct is used to pass information about the
/// tested file to `gtk_file_filter_filter()`.
public protocol FileFilterInfoProtocol {
        /// Untyped pointer to the underlying `GtkFileFilterInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFileFilterInfo` instance.
    var _ptr: UnsafeMutablePointer<GtkFileFilterInfo>! { get }

}

/// The `FileFilterInfoRef` type acts as a lightweight Swift reference to an underlying `GtkFileFilterInfo` instance.
/// It exposes methods that can operate on this data type through `FileFilterInfoProtocol` conformance.
/// Use `FileFilterInfoRef` only as an `unowned` reference to an existing `GtkFileFilterInfo` instance.
///
/// A `GtkFileFilterInfo`-struct is used to pass information about the
/// tested file to `gtk_file_filter_filter()`.
public struct FileFilterInfoRef: FileFilterInfoProtocol {
        /// Untyped pointer to the underlying `GtkFileFilterInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileFilterInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFileFilterInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFileFilterInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFileFilterInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFileFilterInfo>?) {
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

    /// Reference intialiser for a related type that implements `FileFilterInfoProtocol`
    @inlinable init<T: FileFilterInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileFilterInfo` type acts as an owner of an underlying `GtkFileFilterInfo` instance.
/// It provides the methods that can operate on this data type through `FileFilterInfoProtocol` conformance.
/// Use `FileFilterInfo` as a strong reference or owner of a `GtkFileFilterInfo` instance.
///
/// A `GtkFileFilterInfo`-struct is used to pass information about the
/// tested file to `gtk_file_filter_filter()`.
open class FileFilterInfo: FileFilterInfoProtocol {
        /// Untyped pointer to the underlying `GtkFileFilterInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileFilterInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFileFilterInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileFilterInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFileFilterInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileFilterInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileFilterInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileFilterInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFileFilterInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileFilterInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFileFilterInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkFileFilterInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileFilterInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFileFilterInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkFileFilterInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `FileFilterInfoProtocol`
    /// `GtkFileFilterInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileFilterInfoProtocol`
    @inlinable public init<T: FileFilterInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkFileFilterInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkFileFilterInfo`.
    deinit {
        // no reference counting for GtkFileFilterInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkFileFilterInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkFileFilterInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkFileFilterInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkFileFilterInfo, cannot ref(_ptr)
    }



}

// MARK: no FileFilterInfo properties

// MARK: FileFilterInfo has no signals// MARK: FileFilterInfo Record: FileFilterInfoProtocol extension (methods and fields)
public extension FileFilterInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileFilterInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFileFilterInfo>! { return ptr?.assumingMemoryBound(to: GtkFileFilterInfo.self) }


    /// Flags indicating which of the following fields need
    ///   are filled
    @inlinable var contains: FileFilterFlags {
        /// Flags indicating which of the following fields need
        ///   are filled
        get {
            let rv = FileFilterFlags(_ptr.pointee.contains)
            return rv
        }
        /// Flags indicating which of the following fields need
        ///   are filled
         set {
            _ptr.pointee.contains = newValue.value
        }
    }

    /// the filename of the file being tested
    @inlinable var filename: UnsafePointer<gchar>! {
        /// the filename of the file being tested
        get {
            let rv = _ptr.pointee.filename
            return rv
        }
        /// the filename of the file being tested
         set {
            _ptr.pointee.filename = newValue
        }
    }

    /// the URI for the file being tested
    @inlinable var uri: UnsafePointer<gchar>! {
        /// the URI for the file being tested
        get {
            let rv = _ptr.pointee.uri
            return rv
        }
        /// the URI for the file being tested
         set {
            _ptr.pointee.uri = newValue
        }
    }

    /// the string that will be used to display the file
    ///   in the file chooser
    @inlinable var displayName: UnsafePointer<gchar>! {
        /// the string that will be used to display the file
        ///   in the file chooser
        get {
            let rv = _ptr.pointee.display_name
            return rv
        }
        /// the string that will be used to display the file
        ///   in the file chooser
         set {
            _ptr.pointee.display_name = newValue
        }
    }

    /// the mime type of the file
    @inlinable var mimeType: UnsafePointer<gchar>! {
        /// the mime type of the file
        get {
            let rv = _ptr.pointee.mime_type
            return rv
        }
        /// the mime type of the file
         set {
            _ptr.pointee.mime_type = newValue
        }
    }

}



// MARK: - FixedChild Record

/// The `FixedChildProtocol` protocol exposes the methods and properties of an underlying `GtkFixedChild` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FixedChild`.
/// Alternatively, use `FixedChildRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FixedChildProtocol {
        /// Untyped pointer to the underlying `GtkFixedChild` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFixedChild` instance.
    var _ptr: UnsafeMutablePointer<GtkFixedChild>! { get }

}

/// The `FixedChildRef` type acts as a lightweight Swift reference to an underlying `GtkFixedChild` instance.
/// It exposes methods that can operate on this data type through `FixedChildProtocol` conformance.
/// Use `FixedChildRef` only as an `unowned` reference to an existing `GtkFixedChild` instance.
///

public struct FixedChildRef: FixedChildProtocol {
        /// Untyped pointer to the underlying `GtkFixedChild` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FixedChildRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFixedChild>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFixedChild>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFixedChild>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFixedChild>?) {
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

    /// Reference intialiser for a related type that implements `FixedChildProtocol`
    @inlinable init<T: FixedChildProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFixedChild>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFixedChild>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedChild` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFixedChild>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFixedChild>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkFixedChild` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FixedChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFixedChild>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkFixedChild, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `FixedChildProtocol`
    /// `GtkFixedChild` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FixedChildProtocol`
    @inlinable public init<T: FixedChildProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkFixedChild, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkFixedChild`.
    deinit {
        // no reference counting for GtkFixedChild, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkFixedChild, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkFixedChild, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkFixedChild, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedChildProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkFixedChild, cannot ref(_ptr)
    }



}

// MARK: no FixedChild properties

// MARK: FixedChild has no signals// MARK: FixedChild Record: FixedChildProtocol extension (methods and fields)
public extension FixedChildProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFixedChild` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFixedChild>! { return ptr?.assumingMemoryBound(to: GtkFixedChild.self) }


    @inlinable var widget: WidgetRef! {
        get {
            let rv = WidgetRef(gconstpointer: gconstpointer(_ptr.pointee.widget))
            return rv
        }
         set {
            _ptr.pointee.widget = UnsafeMutablePointer<GtkWidget>(newValue.widget_ptr)
        }
    }

    @inlinable var x: gint {
        get {
            let rv = _ptr.pointee.x
            return rv
        }
         set {
            _ptr.pointee.x = newValue
        }
    }

    @inlinable var y: gint {
        get {
            let rv = _ptr.pointee.y
            return rv
        }
         set {
            _ptr.pointee.y = newValue
        }
    }

}



/// Metatype/GType declaration for Fixed
public extension FixedClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_fixed_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFixedClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFixedClass.self) }
    
    static var metatype: GtkFixedClass? { metatypePointer?.pointee } 
    
    static var wrapper: FixedClassRef? { FixedClassRef(metatypePointer) }
    
    
}

// MARK: - FixedClass Record

/// The `FixedClassProtocol` protocol exposes the methods and properties of an underlying `GtkFixedClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FixedClass`.
/// Alternatively, use `FixedClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FixedClassProtocol {
        /// Untyped pointer to the underlying `GtkFixedClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFixedClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFixedClass>! { get }

}

/// The `FixedClassRef` type acts as a lightweight Swift reference to an underlying `GtkFixedClass` instance.
/// It exposes methods that can operate on this data type through `FixedClassProtocol` conformance.
/// Use `FixedClassRef` only as an `unowned` reference to an existing `GtkFixedClass` instance.
///

public struct FixedClassRef: FixedClassProtocol {
        /// Untyped pointer to the underlying `GtkFixedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FixedClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFixedClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFixedClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFixedClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFixedClass>?) {
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

    /// Reference intialiser for a related type that implements `FixedClassProtocol`
    @inlinable init<T: FixedClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FixedClass Record: FixedClassProtocol extension (methods and fields)
public extension FixedClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFixedClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFixedClass>! { return ptr?.assumingMemoryBound(to: GtkFixedClass.self) }


    @inlinable var parentClass: GtkContainerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for FlowBoxAccessible
public extension FlowBoxAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_flow_box_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFlowBoxAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFlowBoxAccessibleClass.self) }
    
    static var metatype: GtkFlowBoxAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: FlowBoxAccessibleClassRef? { FlowBoxAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - FlowBoxAccessibleClass Record

/// The `FlowBoxAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkFlowBoxAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlowBoxAccessibleClass`.
/// Alternatively, use `FlowBoxAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FlowBoxAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkFlowBoxAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFlowBoxAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFlowBoxAccessibleClass>! { get }

}

/// The `FlowBoxAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkFlowBoxAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `FlowBoxAccessibleClassProtocol` conformance.
/// Use `FlowBoxAccessibleClassRef` only as an `unowned` reference to an existing `GtkFlowBoxAccessibleClass` instance.
///

public struct FlowBoxAccessibleClassRef: FlowBoxAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkFlowBoxAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FlowBoxAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFlowBoxAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFlowBoxAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFlowBoxAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFlowBoxAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `FlowBoxAccessibleClassProtocol`
    @inlinable init<T: FlowBoxAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FlowBoxAccessibleClass Record: FlowBoxAccessibleClassProtocol extension (methods and fields)
public extension FlowBoxAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlowBoxAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFlowBoxAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkFlowBoxAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for FlowBoxChildAccessible
public extension FlowBoxChildAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_flow_box_child_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFlowBoxChildAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFlowBoxChildAccessibleClass.self) }
    
    static var metatype: GtkFlowBoxChildAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: FlowBoxChildAccessibleClassRef? { FlowBoxChildAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - FlowBoxChildAccessibleClass Record

/// The `FlowBoxChildAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkFlowBoxChildAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlowBoxChildAccessibleClass`.
/// Alternatively, use `FlowBoxChildAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FlowBoxChildAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkFlowBoxChildAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFlowBoxChildAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFlowBoxChildAccessibleClass>! { get }

}

/// The `FlowBoxChildAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkFlowBoxChildAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `FlowBoxChildAccessibleClassProtocol` conformance.
/// Use `FlowBoxChildAccessibleClassRef` only as an `unowned` reference to an existing `GtkFlowBoxChildAccessibleClass` instance.
///

public struct FlowBoxChildAccessibleClassRef: FlowBoxChildAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkFlowBoxChildAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FlowBoxChildAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFlowBoxChildAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFlowBoxChildAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFlowBoxChildAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFlowBoxChildAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `FlowBoxChildAccessibleClassProtocol`
    @inlinable init<T: FlowBoxChildAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FlowBoxChildAccessibleClass Record: FlowBoxChildAccessibleClassProtocol extension (methods and fields)
public extension FlowBoxChildAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlowBoxChildAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFlowBoxChildAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkFlowBoxChildAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for FlowBoxChild
public extension FlowBoxChildClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_flow_box_child_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFlowBoxChildClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFlowBoxChildClass.self) }
    
    static var metatype: GtkFlowBoxChildClass? { metatypePointer?.pointee } 
    
    static var wrapper: FlowBoxChildClassRef? { FlowBoxChildClassRef(metatypePointer) }
    
    
}

// MARK: - FlowBoxChildClass Record

/// The `FlowBoxChildClassProtocol` protocol exposes the methods and properties of an underlying `GtkFlowBoxChildClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlowBoxChildClass`.
/// Alternatively, use `FlowBoxChildClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FlowBoxChildClassProtocol {
        /// Untyped pointer to the underlying `GtkFlowBoxChildClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFlowBoxChildClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFlowBoxChildClass>! { get }

}

/// The `FlowBoxChildClassRef` type acts as a lightweight Swift reference to an underlying `GtkFlowBoxChildClass` instance.
/// It exposes methods that can operate on this data type through `FlowBoxChildClassProtocol` conformance.
/// Use `FlowBoxChildClassRef` only as an `unowned` reference to an existing `GtkFlowBoxChildClass` instance.
///

public struct FlowBoxChildClassRef: FlowBoxChildClassProtocol {
        /// Untyped pointer to the underlying `GtkFlowBoxChildClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FlowBoxChildClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFlowBoxChildClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFlowBoxChildClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFlowBoxChildClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFlowBoxChildClass>?) {
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

    /// Reference intialiser for a related type that implements `FlowBoxChildClassProtocol`
    @inlinable init<T: FlowBoxChildClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FlowBoxChildClass Record: FlowBoxChildClassProtocol extension (methods and fields)
public extension FlowBoxChildClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlowBoxChildClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFlowBoxChildClass>! { return ptr?.assumingMemoryBound(to: GtkFlowBoxChildClass.self) }


    @inlinable var parentClass: GtkBinClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var activate is unavailable because activate is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

}



/// Metatype/GType declaration for FlowBox
public extension FlowBoxClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_flow_box_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFlowBoxClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFlowBoxClass.self) }
    
    static var metatype: GtkFlowBoxClass? { metatypePointer?.pointee } 
    
    static var wrapper: FlowBoxClassRef? { FlowBoxClassRef(metatypePointer) }
    
    
}

// MARK: - FlowBoxClass Record

/// The `FlowBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkFlowBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlowBoxClass`.
/// Alternatively, use `FlowBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FlowBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkFlowBoxClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFlowBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFlowBoxClass>! { get }

}

/// The `FlowBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkFlowBoxClass` instance.
/// It exposes methods that can operate on this data type through `FlowBoxClassProtocol` conformance.
/// Use `FlowBoxClassRef` only as an `unowned` reference to an existing `GtkFlowBoxClass` instance.
///

public struct FlowBoxClassRef: FlowBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkFlowBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FlowBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFlowBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFlowBoxClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFlowBoxClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFlowBoxClass>?) {
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

    /// Reference intialiser for a related type that implements `FlowBoxClassProtocol`
    @inlinable init<T: FlowBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FlowBoxClass Record: FlowBoxClassProtocol extension (methods and fields)
public extension FlowBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlowBoxClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFlowBoxClass>! { return ptr?.assumingMemoryBound(to: GtkFlowBoxClass.self) }


    @inlinable var parentClass: GtkContainerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var childActivated is unavailable because child_activated is void

    // var selectedChildrenChanged is unavailable because selected_children_changed is void

    // var activateCursorChild is unavailable because activate_cursor_child is void

    // var toggleCursorChild is unavailable because toggle_cursor_child is void

    // var moveCursor is unavailable because move_cursor is void

    // var selectAll is unavailable because select_all is void

    // var unselectAll is unavailable because unselect_all is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

}



/// Metatype/GType declaration for FontButton
public extension FontButtonClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_font_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFontButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFontButtonClass.self) }
    
    static var metatype: GtkFontButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontButtonClassRef? { FontButtonClassRef(metatypePointer) }
    
    
}

// MARK: - FontButtonClass Record

/// The `FontButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkFontButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontButtonClass`.
/// Alternatively, use `FontButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkFontButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFontButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFontButtonClass>! { get }

}

/// The `FontButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkFontButtonClass` instance.
/// It exposes methods that can operate on this data type through `FontButtonClassProtocol` conformance.
/// Use `FontButtonClassRef` only as an `unowned` reference to an existing `GtkFontButtonClass` instance.
///

public struct FontButtonClassRef: FontButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkFontButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFontButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFontButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFontButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFontButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `FontButtonClassProtocol`
    @inlinable init<T: FontButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontButtonClass Record: FontButtonClassProtocol extension (methods and fields)
public extension FontButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFontButtonClass>! { return ptr?.assumingMemoryBound(to: GtkFontButtonClass.self) }


    @inlinable var parentClass: GtkButtonClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var fontSet is unavailable because font_set is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for FontChooserDialog
public extension FontChooserDialogClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_font_chooser_dialog_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFontChooserDialogClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFontChooserDialogClass.self) }
    
    static var metatype: GtkFontChooserDialogClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontChooserDialogClassRef? { FontChooserDialogClassRef(metatypePointer) }
    
    
}

// MARK: - FontChooserDialogClass Record

/// The `FontChooserDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkFontChooserDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontChooserDialogClass`.
/// Alternatively, use `FontChooserDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontChooserDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkFontChooserDialogClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFontChooserDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFontChooserDialogClass>! { get }

}

/// The `FontChooserDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkFontChooserDialogClass` instance.
/// It exposes methods that can operate on this data type through `FontChooserDialogClassProtocol` conformance.
/// Use `FontChooserDialogClassRef` only as an `unowned` reference to an existing `GtkFontChooserDialogClass` instance.
///

public struct FontChooserDialogClassRef: FontChooserDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkFontChooserDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontChooserDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFontChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFontChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFontChooserDialogClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFontChooserDialogClass>?) {
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

    /// Reference intialiser for a related type that implements `FontChooserDialogClassProtocol`
    @inlinable init<T: FontChooserDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontChooserDialogClass Record: FontChooserDialogClassProtocol extension (methods and fields)
public extension FontChooserDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontChooserDialogClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFontChooserDialogClass>! { return ptr?.assumingMemoryBound(to: GtkFontChooserDialogClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkDialogClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for FontChooser
public extension FontChooserIfaceRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_font_chooser_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFontChooserIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFontChooserIface.self) }
    
    static var metatype: GtkFontChooserIface? { metatypePointer?.pointee } 
    
    static var wrapper: FontChooserIfaceRef? { FontChooserIfaceRef(metatypePointer) }
    
    
}

// MARK: - FontChooserIface Record

/// The `FontChooserIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkFontChooserIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontChooserIface`.
/// Alternatively, use `FontChooserIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontChooserIfaceProtocol {
        /// Untyped pointer to the underlying `GtkFontChooserIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFontChooserIface` instance.
    var _ptr: UnsafeMutablePointer<GtkFontChooserIface>! { get }

}

/// The `FontChooserIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkFontChooserIface` instance.
/// It exposes methods that can operate on this data type through `FontChooserIfaceProtocol` conformance.
/// Use `FontChooserIfaceRef` only as an `unowned` reference to an existing `GtkFontChooserIface` instance.
///

public struct FontChooserIfaceRef: FontChooserIfaceProtocol {
        /// Untyped pointer to the underlying `GtkFontChooserIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontChooserIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFontChooserIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFontChooserIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFontChooserIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFontChooserIface>?) {
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

    /// Reference intialiser for a related type that implements `FontChooserIfaceProtocol`
    @inlinable init<T: FontChooserIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontChooserIface Record: FontChooserIfaceProtocol extension (methods and fields)
public extension FontChooserIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontChooserIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFontChooserIface>! { return ptr?.assumingMemoryBound(to: GtkFontChooserIface.self) }


    @inlinable var baseIface: GTypeInterface {
        get {
            let rv = _ptr.pointee.base_iface
            return rv
        }
    }

    // var getFontFamily is unavailable because get_font_family is void

    // var getFontFace is unavailable because get_font_face is void

    // var getFontSize is unavailable because get_font_size is void

    // var setFilterFunc is unavailable because set_filter_func is void

    // var fontActivated is unavailable because font_activated is void

    // var setFontMap is unavailable because set_font_map is void

    // var getFontMap is unavailable because get_font_map is void

    @inlinable var padding: (gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?) {
        get {
            let rv = _ptr.pointee.padding
            return rv
        }
    }

}



/// Metatype/GType declaration for FontChooserWidget
public extension FontChooserWidgetClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_font_chooser_widget_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFontChooserWidgetClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFontChooserWidgetClass.self) }
    
    static var metatype: GtkFontChooserWidgetClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontChooserWidgetClassRef? { FontChooserWidgetClassRef(metatypePointer) }
    
    
}

// MARK: - FontChooserWidgetClass Record

/// The `FontChooserWidgetClassProtocol` protocol exposes the methods and properties of an underlying `GtkFontChooserWidgetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontChooserWidgetClass`.
/// Alternatively, use `FontChooserWidgetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontChooserWidgetClassProtocol {
        /// Untyped pointer to the underlying `GtkFontChooserWidgetClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFontChooserWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFontChooserWidgetClass>! { get }

}

/// The `FontChooserWidgetClassRef` type acts as a lightweight Swift reference to an underlying `GtkFontChooserWidgetClass` instance.
/// It exposes methods that can operate on this data type through `FontChooserWidgetClassProtocol` conformance.
/// Use `FontChooserWidgetClassRef` only as an `unowned` reference to an existing `GtkFontChooserWidgetClass` instance.
///

public struct FontChooserWidgetClassRef: FontChooserWidgetClassProtocol {
        /// Untyped pointer to the underlying `GtkFontChooserWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontChooserWidgetClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFontChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFontChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFontChooserWidgetClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFontChooserWidgetClass>?) {
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

    /// Reference intialiser for a related type that implements `FontChooserWidgetClassProtocol`
    @inlinable init<T: FontChooserWidgetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontChooserWidgetClass Record: FontChooserWidgetClassProtocol extension (methods and fields)
public extension FontChooserWidgetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontChooserWidgetClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFontChooserWidgetClass>! { return ptr?.assumingMemoryBound(to: GtkFontChooserWidgetClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBoxClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

}



/// Metatype/GType declaration for FontSelection
public extension FontSelectionClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_font_selection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFontSelectionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFontSelectionClass.self) }
    
    static var metatype: GtkFontSelectionClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontSelectionClassRef? { FontSelectionClassRef(metatypePointer) }
    
    
}

// MARK: - FontSelectionClass Record

/// The `FontSelectionClassProtocol` protocol exposes the methods and properties of an underlying `GtkFontSelectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontSelectionClass`.
/// Alternatively, use `FontSelectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontSelectionClassProtocol {
        /// Untyped pointer to the underlying `GtkFontSelectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFontSelectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFontSelectionClass>! { get }

}

/// The `FontSelectionClassRef` type acts as a lightweight Swift reference to an underlying `GtkFontSelectionClass` instance.
/// It exposes methods that can operate on this data type through `FontSelectionClassProtocol` conformance.
/// Use `FontSelectionClassRef` only as an `unowned` reference to an existing `GtkFontSelectionClass` instance.
///

public struct FontSelectionClassRef: FontSelectionClassProtocol {
        /// Untyped pointer to the underlying `GtkFontSelectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontSelectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFontSelectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFontSelectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFontSelectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFontSelectionClass>?) {
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

    /// Reference intialiser for a related type that implements `FontSelectionClassProtocol`
    @inlinable init<T: FontSelectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontSelectionClass Record: FontSelectionClassProtocol extension (methods and fields)
public extension FontSelectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontSelectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFontSelectionClass>! { return ptr?.assumingMemoryBound(to: GtkFontSelectionClass.self) }


    @inlinable var parentClass: GtkBoxClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for FontSelectionDialog
public extension FontSelectionDialogClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_font_selection_dialog_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFontSelectionDialogClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFontSelectionDialogClass.self) }
    
    static var metatype: GtkFontSelectionDialogClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontSelectionDialogClassRef? { FontSelectionDialogClassRef(metatypePointer) }
    
    
}

// MARK: - FontSelectionDialogClass Record

/// The `FontSelectionDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkFontSelectionDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontSelectionDialogClass`.
/// Alternatively, use `FontSelectionDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontSelectionDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkFontSelectionDialogClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFontSelectionDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFontSelectionDialogClass>! { get }

}

/// The `FontSelectionDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkFontSelectionDialogClass` instance.
/// It exposes methods that can operate on this data type through `FontSelectionDialogClassProtocol` conformance.
/// Use `FontSelectionDialogClassRef` only as an `unowned` reference to an existing `GtkFontSelectionDialogClass` instance.
///

public struct FontSelectionDialogClassRef: FontSelectionDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkFontSelectionDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontSelectionDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFontSelectionDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFontSelectionDialogClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFontSelectionDialogClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFontSelectionDialogClass>?) {
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

    /// Reference intialiser for a related type that implements `FontSelectionDialogClassProtocol`
    @inlinable init<T: FontSelectionDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontSelectionDialogClass Record: FontSelectionDialogClassProtocol extension (methods and fields)
public extension FontSelectionDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontSelectionDialogClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFontSelectionDialogClass>! { return ptr?.assumingMemoryBound(to: GtkFontSelectionDialogClass.self) }


    @inlinable var parentClass: GtkDialogClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for FrameAccessible
public extension FrameAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_frame_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFrameAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFrameAccessibleClass.self) }
    
    static var metatype: GtkFrameAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: FrameAccessibleClassRef? { FrameAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - FrameAccessibleClass Record

/// The `FrameAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkFrameAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FrameAccessibleClass`.
/// Alternatively, use `FrameAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FrameAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkFrameAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFrameAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFrameAccessibleClass>! { get }

}

/// The `FrameAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkFrameAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `FrameAccessibleClassProtocol` conformance.
/// Use `FrameAccessibleClassRef` only as an `unowned` reference to an existing `GtkFrameAccessibleClass` instance.
///

public struct FrameAccessibleClassRef: FrameAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkFrameAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FrameAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFrameAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFrameAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFrameAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFrameAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `FrameAccessibleClassProtocol`
    @inlinable init<T: FrameAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FrameAccessibleClass Record: FrameAccessibleClassProtocol extension (methods and fields)
public extension FrameAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFrameAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFrameAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkFrameAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Frame
public extension FrameClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_frame_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFrameClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFrameClass.self) }
    
    static var metatype: GtkFrameClass? { metatypePointer?.pointee } 
    
    static var wrapper: FrameClassRef? { FrameClassRef(metatypePointer) }
    
    
}

// MARK: - FrameClass Record

/// The `FrameClassProtocol` protocol exposes the methods and properties of an underlying `GtkFrameClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FrameClass`.
/// Alternatively, use `FrameClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FrameClassProtocol {
        /// Untyped pointer to the underlying `GtkFrameClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFrameClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFrameClass>! { get }

}

/// The `FrameClassRef` type acts as a lightweight Swift reference to an underlying `GtkFrameClass` instance.
/// It exposes methods that can operate on this data type through `FrameClassProtocol` conformance.
/// Use `FrameClassRef` only as an `unowned` reference to an existing `GtkFrameClass` instance.
///

public struct FrameClassRef: FrameClassProtocol {
        /// Untyped pointer to the underlying `GtkFrameClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FrameClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFrameClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFrameClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFrameClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFrameClass>?) {
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

    /// Reference intialiser for a related type that implements `FrameClassProtocol`
    @inlinable init<T: FrameClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FrameClass Record: FrameClassProtocol extension (methods and fields)
public extension FrameClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFrameClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFrameClass>! { return ptr?.assumingMemoryBound(to: GtkFrameClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBinClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var computeChildAllocation is unavailable because compute_child_allocation is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for GLArea
public extension GLAreaClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_gl_area_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkGLAreaClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkGLAreaClass.self) }
    
    static var metatype: GtkGLAreaClass? { metatypePointer?.pointee } 
    
    static var wrapper: GLAreaClassRef? { GLAreaClassRef(metatypePointer) }
    
    
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGLAreaClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGLAreaClass>! { get }

}

/// The `GLAreaClassRef` type acts as a lightweight Swift reference to an underlying `GtkGLAreaClass` instance.
/// It exposes methods that can operate on this data type through `GLAreaClassProtocol` conformance.
/// Use `GLAreaClassRef` only as an `unowned` reference to an existing `GtkGLAreaClass` instance.
///
/// The `GtkGLAreaClass` structure contains only private data.
public struct GLAreaClassRef: GLAreaClassProtocol {
        /// Untyped pointer to the underlying `GtkGLAreaClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GLAreaClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGLAreaClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGLAreaClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGLAreaClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGLAreaClass>?) {
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

    /// Reference intialiser for a related type that implements `GLAreaClassProtocol`
    @inlinable init<T: GLAreaClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GLAreaClass Record: GLAreaClassProtocol extension (methods and fields)
public extension GLAreaClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGLAreaClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkGLAreaClass>! { return ptr?.assumingMemoryBound(to: GtkGLAreaClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var render is unavailable because render is void

    // var resize is unavailable because resize is void

    // var createContext is unavailable because create_context is void

    // var Padding is unavailable because _padding is private

}



