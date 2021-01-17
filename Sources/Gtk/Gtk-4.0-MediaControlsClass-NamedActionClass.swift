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

/// Metatype/GType declaration for MediaControls
public extension MediaControlsClassRef {
    
    /// This getter returns the GLib type identifier registered for `MediaControls`
    static var metatypeReference: GType { gtk_media_controls_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMediaControlsClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMediaControlsClass.self) }
    
    static var metatype: GtkMediaControlsClass? { metatypePointer?.pointee } 
    
    static var wrapper: MediaControlsClassRef? { MediaControlsClassRef(metatypePointer) }
    
    
}

// MARK: - MediaControlsClass Record

/// The `MediaControlsClassProtocol` protocol exposes the methods and properties of an underlying `GtkMediaControlsClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MediaControlsClass`.
/// Alternatively, use `MediaControlsClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MediaControlsClassProtocol {
        /// Untyped pointer to the underlying `GtkMediaControlsClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMediaControlsClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMediaControlsClass>! { get }

}

/// The `MediaControlsClassRef` type acts as a lightweight Swift reference to an underlying `GtkMediaControlsClass` instance.
/// It exposes methods that can operate on this data type through `MediaControlsClassProtocol` conformance.
/// Use `MediaControlsClassRef` only as an `unowned` reference to an existing `GtkMediaControlsClass` instance.
///

public struct MediaControlsClassRef: MediaControlsClassProtocol {
        /// Untyped pointer to the underlying `GtkMediaControlsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MediaControlsClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMediaControlsClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMediaControlsClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMediaControlsClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMediaControlsClass>?) {
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

    /// Reference intialiser for a related type that implements `MediaControlsClassProtocol`
    @inlinable init<T: MediaControlsClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MediaControlsClass Record: MediaControlsClassProtocol extension (methods and fields)
public extension MediaControlsClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMediaControlsClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMediaControlsClass>! { return ptr?.assumingMemoryBound(to: GtkMediaControlsClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for MediaFile
public extension MediaFileClassRef {
    
    /// This getter returns the GLib type identifier registered for `MediaFile`
    static var metatypeReference: GType { gtk_media_file_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMediaFileClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMediaFileClass.self) }
    
    static var metatype: GtkMediaFileClass? { metatypePointer?.pointee } 
    
    static var wrapper: MediaFileClassRef? { MediaFileClassRef(metatypePointer) }
    
    
}

// MARK: - MediaFileClass Record

/// The `MediaFileClassProtocol` protocol exposes the methods and properties of an underlying `GtkMediaFileClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MediaFileClass`.
/// Alternatively, use `MediaFileClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MediaFileClassProtocol {
        /// Untyped pointer to the underlying `GtkMediaFileClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMediaFileClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMediaFileClass>! { get }

}

/// The `MediaFileClassRef` type acts as a lightweight Swift reference to an underlying `GtkMediaFileClass` instance.
/// It exposes methods that can operate on this data type through `MediaFileClassProtocol` conformance.
/// Use `MediaFileClassRef` only as an `unowned` reference to an existing `GtkMediaFileClass` instance.
///

public struct MediaFileClassRef: MediaFileClassProtocol {
        /// Untyped pointer to the underlying `GtkMediaFileClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MediaFileClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMediaFileClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMediaFileClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMediaFileClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMediaFileClass>?) {
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

    /// Reference intialiser for a related type that implements `MediaFileClassProtocol`
    @inlinable init<T: MediaFileClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MediaFileClass Record: MediaFileClassProtocol extension (methods and fields)
public extension MediaFileClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMediaFileClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMediaFileClass>! { return ptr?.assumingMemoryBound(to: GtkMediaFileClass.self) }


    @inlinable var parentClass: GtkMediaStreamClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var open is unavailable because open is void

    // var close is unavailable because close is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for MediaStream
public extension MediaStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `MediaStream`
    static var metatypeReference: GType { gtk_media_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMediaStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMediaStreamClass.self) }
    
    static var metatype: GtkMediaStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: MediaStreamClassRef? { MediaStreamClassRef(metatypePointer) }
    
    
}

// MARK: - MediaStreamClass Record

/// The `MediaStreamClassProtocol` protocol exposes the methods and properties of an underlying `GtkMediaStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MediaStreamClass`.
/// Alternatively, use `MediaStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MediaStreamClassProtocol {
        /// Untyped pointer to the underlying `GtkMediaStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMediaStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMediaStreamClass>! { get }

}

/// The `MediaStreamClassRef` type acts as a lightweight Swift reference to an underlying `GtkMediaStreamClass` instance.
/// It exposes methods that can operate on this data type through `MediaStreamClassProtocol` conformance.
/// Use `MediaStreamClassRef` only as an `unowned` reference to an existing `GtkMediaStreamClass` instance.
///

public struct MediaStreamClassRef: MediaStreamClassProtocol {
        /// Untyped pointer to the underlying `GtkMediaStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MediaStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMediaStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMediaStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMediaStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMediaStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `MediaStreamClassProtocol`
    @inlinable init<T: MediaStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MediaStreamClass Record: MediaStreamClassProtocol extension (methods and fields)
public extension MediaStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMediaStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMediaStreamClass>! { return ptr?.assumingMemoryBound(to: GtkMediaStreamClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var play is unavailable because play is void

    // var pause is unavailable because pause is void

    // var seek is unavailable because seek is void

    // var updateAudio is unavailable because update_audio is void

    // var realize is unavailable because realize is void

    // var unrealize is unavailable because unrealize is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

}



/// Metatype/GType declaration for MessageDialog
public extension MessageDialogClassRef {
    
    /// This getter returns the GLib type identifier registered for `MessageDialog`
    static var metatypeReference: GType { gtk_message_dialog_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMessageDialogClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMessageDialogClass.self) }
    
    static var metatype: GtkMessageDialogClass? { metatypePointer?.pointee } 
    
    static var wrapper: MessageDialogClassRef? { MessageDialogClassRef(metatypePointer) }
    
    
}

// MARK: - MessageDialogClass Record

/// The `MessageDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkMessageDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MessageDialogClass`.
/// Alternatively, use `MessageDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MessageDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkMessageDialogClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMessageDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMessageDialogClass>! { get }

}

/// The `MessageDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkMessageDialogClass` instance.
/// It exposes methods that can operate on this data type through `MessageDialogClassProtocol` conformance.
/// Use `MessageDialogClassRef` only as an `unowned` reference to an existing `GtkMessageDialogClass` instance.
///

public struct MessageDialogClassRef: MessageDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkMessageDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MessageDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMessageDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMessageDialogClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMessageDialogClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMessageDialogClass>?) {
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

    /// Reference intialiser for a related type that implements `MessageDialogClassProtocol`
    @inlinable init<T: MessageDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MessageDialogClass Record: MessageDialogClassProtocol extension (methods and fields)
public extension MessageDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMessageDialogClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMessageDialogClass>! { return ptr?.assumingMemoryBound(to: GtkMessageDialogClass.self) }



}



/// Metatype/GType declaration for MnemonicAction
public extension MnemonicActionClassRef {
    
    /// This getter returns the GLib type identifier registered for `MnemonicAction`
    static var metatypeReference: GType { gtk_mnemonic_action_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMnemonicActionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMnemonicActionClass.self) }
    
    static var metatype: GtkMnemonicActionClass? { metatypePointer?.pointee } 
    
    static var wrapper: MnemonicActionClassRef? { MnemonicActionClassRef(metatypePointer) }
    
    
}

// MARK: - MnemonicActionClass Record

/// The `MnemonicActionClassProtocol` protocol exposes the methods and properties of an underlying `GtkMnemonicActionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MnemonicActionClass`.
/// Alternatively, use `MnemonicActionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MnemonicActionClassProtocol {
        /// Untyped pointer to the underlying `GtkMnemonicActionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMnemonicActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMnemonicActionClass>! { get }

}

/// The `MnemonicActionClassRef` type acts as a lightweight Swift reference to an underlying `GtkMnemonicActionClass` instance.
/// It exposes methods that can operate on this data type through `MnemonicActionClassProtocol` conformance.
/// Use `MnemonicActionClassRef` only as an `unowned` reference to an existing `GtkMnemonicActionClass` instance.
///

public struct MnemonicActionClassRef: MnemonicActionClassProtocol {
        /// Untyped pointer to the underlying `GtkMnemonicActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MnemonicActionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMnemonicActionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMnemonicActionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMnemonicActionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMnemonicActionClass>?) {
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

    /// Reference intialiser for a related type that implements `MnemonicActionClassProtocol`
    @inlinable init<T: MnemonicActionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MnemonicActionClass Record: MnemonicActionClassProtocol extension (methods and fields)
public extension MnemonicActionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMnemonicActionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMnemonicActionClass>! { return ptr?.assumingMemoryBound(to: GtkMnemonicActionClass.self) }



}



/// Metatype/GType declaration for MnemonicTrigger
public extension MnemonicTriggerClassRef {
    
    /// This getter returns the GLib type identifier registered for `MnemonicTrigger`
    static var metatypeReference: GType { gtk_mnemonic_trigger_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMnemonicTriggerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMnemonicTriggerClass.self) }
    
    static var metatype: GtkMnemonicTriggerClass? { metatypePointer?.pointee } 
    
    static var wrapper: MnemonicTriggerClassRef? { MnemonicTriggerClassRef(metatypePointer) }
    
    
}

// MARK: - MnemonicTriggerClass Record

/// The `MnemonicTriggerClassProtocol` protocol exposes the methods and properties of an underlying `GtkMnemonicTriggerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MnemonicTriggerClass`.
/// Alternatively, use `MnemonicTriggerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MnemonicTriggerClassProtocol {
        /// Untyped pointer to the underlying `GtkMnemonicTriggerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMnemonicTriggerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMnemonicTriggerClass>! { get }

}

/// The `MnemonicTriggerClassRef` type acts as a lightweight Swift reference to an underlying `GtkMnemonicTriggerClass` instance.
/// It exposes methods that can operate on this data type through `MnemonicTriggerClassProtocol` conformance.
/// Use `MnemonicTriggerClassRef` only as an `unowned` reference to an existing `GtkMnemonicTriggerClass` instance.
///

public struct MnemonicTriggerClassRef: MnemonicTriggerClassProtocol {
        /// Untyped pointer to the underlying `GtkMnemonicTriggerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MnemonicTriggerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMnemonicTriggerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMnemonicTriggerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMnemonicTriggerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMnemonicTriggerClass>?) {
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

    /// Reference intialiser for a related type that implements `MnemonicTriggerClassProtocol`
    @inlinable init<T: MnemonicTriggerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MnemonicTriggerClass Record: MnemonicTriggerClassProtocol extension (methods and fields)
public extension MnemonicTriggerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMnemonicTriggerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMnemonicTriggerClass>! { return ptr?.assumingMemoryBound(to: GtkMnemonicTriggerClass.self) }



}



/// Metatype/GType declaration for MountOperation
public extension MountOperationClassRef {
    
    /// This getter returns the GLib type identifier registered for `MountOperation`
    static var metatypeReference: GType { gtk_mount_operation_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMountOperationClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMountOperationClass.self) }
    
    static var metatype: GtkMountOperationClass? { metatypePointer?.pointee } 
    
    static var wrapper: MountOperationClassRef? { MountOperationClassRef(metatypePointer) }
    
    
}

// MARK: - MountOperationClass Record

/// The `MountOperationClassProtocol` protocol exposes the methods and properties of an underlying `GtkMountOperationClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MountOperationClass`.
/// Alternatively, use `MountOperationClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MountOperationClassProtocol {
        /// Untyped pointer to the underlying `GtkMountOperationClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMountOperationClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMountOperationClass>! { get }

}

/// The `MountOperationClassRef` type acts as a lightweight Swift reference to an underlying `GtkMountOperationClass` instance.
/// It exposes methods that can operate on this data type through `MountOperationClassProtocol` conformance.
/// Use `MountOperationClassRef` only as an `unowned` reference to an existing `GtkMountOperationClass` instance.
///

public struct MountOperationClassRef: MountOperationClassProtocol {
        /// Untyped pointer to the underlying `GtkMountOperationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MountOperationClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMountOperationClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMountOperationClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMountOperationClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMountOperationClass>?) {
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

    /// Reference intialiser for a related type that implements `MountOperationClassProtocol`
    @inlinable init<T: MountOperationClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MountOperationClass Record: MountOperationClassProtocol extension (methods and fields)
public extension MountOperationClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMountOperationClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMountOperationClass>! { return ptr?.assumingMemoryBound(to: GtkMountOperationClass.self) }


    /// The parent class.
    @inlinable var parentClass: GMountOperationClass {
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



/// Metatype/GType declaration for MultiFilter
public extension MultiFilterClassRef {
    
    /// This getter returns the GLib type identifier registered for `MultiFilter`
    static var metatypeReference: GType { gtk_multi_filter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMultiFilterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMultiFilterClass.self) }
    
    static var metatype: GtkMultiFilterClass? { metatypePointer?.pointee } 
    
    static var wrapper: MultiFilterClassRef? { MultiFilterClassRef(metatypePointer) }
    
    
}

// MARK: - MultiFilterClass Record

/// The `MultiFilterClassProtocol` protocol exposes the methods and properties of an underlying `GtkMultiFilterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MultiFilterClass`.
/// Alternatively, use `MultiFilterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MultiFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkMultiFilterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMultiFilterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMultiFilterClass>! { get }

}

/// The `MultiFilterClassRef` type acts as a lightweight Swift reference to an underlying `GtkMultiFilterClass` instance.
/// It exposes methods that can operate on this data type through `MultiFilterClassProtocol` conformance.
/// Use `MultiFilterClassRef` only as an `unowned` reference to an existing `GtkMultiFilterClass` instance.
///

public struct MultiFilterClassRef: MultiFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkMultiFilterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MultiFilterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMultiFilterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMultiFilterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMultiFilterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMultiFilterClass>?) {
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

    /// Reference intialiser for a related type that implements `MultiFilterClassProtocol`
    @inlinable init<T: MultiFilterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MultiFilterClass Record: MultiFilterClassProtocol extension (methods and fields)
public extension MultiFilterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMultiFilterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMultiFilterClass>! { return ptr?.assumingMemoryBound(to: GtkMultiFilterClass.self) }



}



/// Metatype/GType declaration for MultiSelection
public extension MultiSelectionClassRef {
    
    /// This getter returns the GLib type identifier registered for `MultiSelection`
    static var metatypeReference: GType { gtk_multi_selection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMultiSelectionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMultiSelectionClass.self) }
    
    static var metatype: GtkMultiSelectionClass? { metatypePointer?.pointee } 
    
    static var wrapper: MultiSelectionClassRef? { MultiSelectionClassRef(metatypePointer) }
    
    
}

// MARK: - MultiSelectionClass Record

/// The `MultiSelectionClassProtocol` protocol exposes the methods and properties of an underlying `GtkMultiSelectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MultiSelectionClass`.
/// Alternatively, use `MultiSelectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MultiSelectionClassProtocol {
        /// Untyped pointer to the underlying `GtkMultiSelectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMultiSelectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMultiSelectionClass>! { get }

}

/// The `MultiSelectionClassRef` type acts as a lightweight Swift reference to an underlying `GtkMultiSelectionClass` instance.
/// It exposes methods that can operate on this data type through `MultiSelectionClassProtocol` conformance.
/// Use `MultiSelectionClassRef` only as an `unowned` reference to an existing `GtkMultiSelectionClass` instance.
///

public struct MultiSelectionClassRef: MultiSelectionClassProtocol {
        /// Untyped pointer to the underlying `GtkMultiSelectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MultiSelectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMultiSelectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMultiSelectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMultiSelectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMultiSelectionClass>?) {
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

    /// Reference intialiser for a related type that implements `MultiSelectionClassProtocol`
    @inlinable init<T: MultiSelectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MultiSelectionClass Record: MultiSelectionClassProtocol extension (methods and fields)
public extension MultiSelectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMultiSelectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMultiSelectionClass>! { return ptr?.assumingMemoryBound(to: GtkMultiSelectionClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for MultiSorter
public extension MultiSorterClassRef {
    
    /// This getter returns the GLib type identifier registered for `MultiSorter`
    static var metatypeReference: GType { gtk_multi_sorter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMultiSorterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMultiSorterClass.self) }
    
    static var metatype: GtkMultiSorterClass? { metatypePointer?.pointee } 
    
    static var wrapper: MultiSorterClassRef? { MultiSorterClassRef(metatypePointer) }
    
    
}

// MARK: - MultiSorterClass Record

/// The `MultiSorterClassProtocol` protocol exposes the methods and properties of an underlying `GtkMultiSorterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MultiSorterClass`.
/// Alternatively, use `MultiSorterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MultiSorterClassProtocol {
        /// Untyped pointer to the underlying `GtkMultiSorterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMultiSorterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMultiSorterClass>! { get }

}

/// The `MultiSorterClassRef` type acts as a lightweight Swift reference to an underlying `GtkMultiSorterClass` instance.
/// It exposes methods that can operate on this data type through `MultiSorterClassProtocol` conformance.
/// Use `MultiSorterClassRef` only as an `unowned` reference to an existing `GtkMultiSorterClass` instance.
///

public struct MultiSorterClassRef: MultiSorterClassProtocol {
        /// Untyped pointer to the underlying `GtkMultiSorterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MultiSorterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMultiSorterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMultiSorterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMultiSorterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMultiSorterClass>?) {
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

    /// Reference intialiser for a related type that implements `MultiSorterClassProtocol`
    @inlinable init<T: MultiSorterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MultiSorterClass Record: MultiSorterClassProtocol extension (methods and fields)
public extension MultiSorterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMultiSorterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMultiSorterClass>! { return ptr?.assumingMemoryBound(to: GtkMultiSorterClass.self) }


    @inlinable var parentClass: GtkSorterClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for NamedAction
public extension NamedActionClassRef {
    
    /// This getter returns the GLib type identifier registered for `NamedAction`
    static var metatypeReference: GType { gtk_named_action_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkNamedActionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkNamedActionClass.self) }
    
    static var metatype: GtkNamedActionClass? { metatypePointer?.pointee } 
    
    static var wrapper: NamedActionClassRef? { NamedActionClassRef(metatypePointer) }
    
    
}

// MARK: - NamedActionClass Record

/// The `NamedActionClassProtocol` protocol exposes the methods and properties of an underlying `GtkNamedActionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NamedActionClass`.
/// Alternatively, use `NamedActionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NamedActionClassProtocol {
        /// Untyped pointer to the underlying `GtkNamedActionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNamedActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNamedActionClass>! { get }

}

/// The `NamedActionClassRef` type acts as a lightweight Swift reference to an underlying `GtkNamedActionClass` instance.
/// It exposes methods that can operate on this data type through `NamedActionClassProtocol` conformance.
/// Use `NamedActionClassRef` only as an `unowned` reference to an existing `GtkNamedActionClass` instance.
///

public struct NamedActionClassRef: NamedActionClassProtocol {
        /// Untyped pointer to the underlying `GtkNamedActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NamedActionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNamedActionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNamedActionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNamedActionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNamedActionClass>?) {
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

    /// Reference intialiser for a related type that implements `NamedActionClassProtocol`
    @inlinable init<T: NamedActionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NamedActionClass Record: NamedActionClassProtocol extension (methods and fields)
public extension NamedActionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNamedActionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkNamedActionClass>! { return ptr?.assumingMemoryBound(to: GtkNamedActionClass.self) }



}



