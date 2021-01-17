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

/// Metatype/GType declaration for EditableLabel
public extension EditableLabelClassRef {
    
    /// This getter returns the GLib type identifier registered for `EditableLabel`
    static var metatypeReference: GType { gtk_editable_label_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEditableLabelClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEditableLabelClass.self) }
    
    static var metatype: GtkEditableLabelClass? { metatypePointer?.pointee } 
    
    static var wrapper: EditableLabelClassRef? { EditableLabelClassRef(metatypePointer) }
    
    
}

// MARK: - EditableLabelClass Record

/// The `EditableLabelClassProtocol` protocol exposes the methods and properties of an underlying `GtkEditableLabelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EditableLabelClass`.
/// Alternatively, use `EditableLabelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EditableLabelClassProtocol {
        /// Untyped pointer to the underlying `GtkEditableLabelClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEditableLabelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEditableLabelClass>! { get }

}

/// The `EditableLabelClassRef` type acts as a lightweight Swift reference to an underlying `GtkEditableLabelClass` instance.
/// It exposes methods that can operate on this data type through `EditableLabelClassProtocol` conformance.
/// Use `EditableLabelClassRef` only as an `unowned` reference to an existing `GtkEditableLabelClass` instance.
///

public struct EditableLabelClassRef: EditableLabelClassProtocol {
        /// Untyped pointer to the underlying `GtkEditableLabelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EditableLabelClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEditableLabelClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEditableLabelClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEditableLabelClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEditableLabelClass>?) {
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

    /// Reference intialiser for a related type that implements `EditableLabelClassProtocol`
    @inlinable init<T: EditableLabelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableLabelClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EditableLabelClass Record: EditableLabelClassProtocol extension (methods and fields)
public extension EditableLabelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEditableLabelClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEditableLabelClass>! { return ptr?.assumingMemoryBound(to: GtkEditableLabelClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for EmojiChooser
public extension EmojiChooserClassRef {
    
    /// This getter returns the GLib type identifier registered for `EmojiChooser`
    static var metatypeReference: GType { gtk_emoji_chooser_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEmojiChooserClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEmojiChooserClass.self) }
    
    static var metatype: GtkEmojiChooserClass? { metatypePointer?.pointee } 
    
    static var wrapper: EmojiChooserClassRef? { EmojiChooserClassRef(metatypePointer) }
    
    
}

// MARK: - EmojiChooserClass Record

/// The `EmojiChooserClassProtocol` protocol exposes the methods and properties of an underlying `GtkEmojiChooserClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EmojiChooserClass`.
/// Alternatively, use `EmojiChooserClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EmojiChooserClassProtocol {
        /// Untyped pointer to the underlying `GtkEmojiChooserClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEmojiChooserClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEmojiChooserClass>! { get }

}

/// The `EmojiChooserClassRef` type acts as a lightweight Swift reference to an underlying `GtkEmojiChooserClass` instance.
/// It exposes methods that can operate on this data type through `EmojiChooserClassProtocol` conformance.
/// Use `EmojiChooserClassRef` only as an `unowned` reference to an existing `GtkEmojiChooserClass` instance.
///

public struct EmojiChooserClassRef: EmojiChooserClassProtocol {
        /// Untyped pointer to the underlying `GtkEmojiChooserClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EmojiChooserClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEmojiChooserClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEmojiChooserClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEmojiChooserClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEmojiChooserClass>?) {
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

    /// Reference intialiser for a related type that implements `EmojiChooserClassProtocol`
    @inlinable init<T: EmojiChooserClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmojiChooserClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EmojiChooserClass Record: EmojiChooserClassProtocol extension (methods and fields)
public extension EmojiChooserClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEmojiChooserClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEmojiChooserClass>! { return ptr?.assumingMemoryBound(to: GtkEmojiChooserClass.self) }



}



/// Metatype/GType declaration for EntryBuffer
public extension EntryBufferClassRef {
    
    /// This getter returns the GLib type identifier registered for `EntryBuffer`
    static var metatypeReference: GType { gtk_entry_buffer_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEntryBufferClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEntryBufferClass.self) }
    
    static var metatype: GtkEntryBufferClass? { metatypePointer?.pointee } 
    
    static var wrapper: EntryBufferClassRef? { EntryBufferClassRef(metatypePointer) }
    
    
}

// MARK: - EntryBufferClass Record

/// The `EntryBufferClassProtocol` protocol exposes the methods and properties of an underlying `GtkEntryBufferClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryBufferClass`.
/// Alternatively, use `EntryBufferClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EntryBufferClassProtocol {
        /// Untyped pointer to the underlying `GtkEntryBufferClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEntryBufferClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryBufferClass>! { get }

}

/// The `EntryBufferClassRef` type acts as a lightweight Swift reference to an underlying `GtkEntryBufferClass` instance.
/// It exposes methods that can operate on this data type through `EntryBufferClassProtocol` conformance.
/// Use `EntryBufferClassRef` only as an `unowned` reference to an existing `GtkEntryBufferClass` instance.
///

public struct EntryBufferClassRef: EntryBufferClassProtocol {
        /// Untyped pointer to the underlying `GtkEntryBufferClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EntryBufferClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEntryBufferClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEntryBufferClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEntryBufferClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEntryBufferClass>?) {
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

    /// Reference intialiser for a related type that implements `EntryBufferClassProtocol`
    @inlinable init<T: EntryBufferClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EntryBufferClass Record: EntryBufferClassProtocol extension (methods and fields)
public extension EntryBufferClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryBufferClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEntryBufferClass>! { return ptr?.assumingMemoryBound(to: GtkEntryBufferClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var insertedText is unavailable because inserted_text is void

    // var deletedText is unavailable because deleted_text is void

    // var getText is unavailable because get_text is void

    // var getLength is unavailable because get_length is void

    // var insertText is unavailable because insert_text is void

    // var deleteText is unavailable because delete_text is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

}



/// Metatype/GType declaration for Entry
public extension EntryClassRef {
    
    /// This getter returns the GLib type identifier registered for `Entry`
    static var metatypeReference: GType { gtk_entry_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEntryClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEntryClass.self) }
    
    static var metatype: GtkEntryClass? { metatypePointer?.pointee } 
    
    static var wrapper: EntryClassRef? { EntryClassRef(metatypePointer) }
    
    
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEntryClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryClass>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension EntryClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEntryClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEntryClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEntryClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEntryClass>?) {
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

    /// Reference intialiser for a related type that implements `EntryClassProtocol`
    @inlinable init<T: EntryClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EntryClass Record: EntryClassProtocol extension (methods and fields)
public extension EntryClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEntryClass>! { return ptr?.assumingMemoryBound(to: GtkEntryClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkWidgetClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var activate is unavailable because activate is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for EventController
public extension EventControllerClassRef {
    
    /// This getter returns the GLib type identifier registered for `EventController`
    static var metatypeReference: GType { gtk_event_controller_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEventControllerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEventControllerClass.self) }
    
    static var metatype: GtkEventControllerClass? { metatypePointer?.pointee } 
    
    static var wrapper: EventControllerClassRef? { EventControllerClassRef(metatypePointer) }
    
    
}

// MARK: - EventControllerClass Record

/// The `EventControllerClassProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerClass`.
/// Alternatively, use `EventControllerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EventControllerClassProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEventControllerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventControllerClass>! { get }

}

/// The `EventControllerClassRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerClass` instance.
/// It exposes methods that can operate on this data type through `EventControllerClassProtocol` conformance.
/// Use `EventControllerClassRef` only as an `unowned` reference to an existing `GtkEventControllerClass` instance.
///

public struct EventControllerClassRef: EventControllerClassProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventControllerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEventControllerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEventControllerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEventControllerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEventControllerClass>?) {
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

    /// Reference intialiser for a related type that implements `EventControllerClassProtocol`
    @inlinable init<T: EventControllerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EventControllerClass Record: EventControllerClassProtocol extension (methods and fields)
public extension EventControllerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEventControllerClass>! { return ptr?.assumingMemoryBound(to: GtkEventControllerClass.self) }



}



/// Metatype/GType declaration for EventControllerFocus
public extension EventControllerFocusClassRef {
    
    /// This getter returns the GLib type identifier registered for `EventControllerFocus`
    static var metatypeReference: GType { gtk_event_controller_focus_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEventControllerFocusClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEventControllerFocusClass.self) }
    
    static var metatype: GtkEventControllerFocusClass? { metatypePointer?.pointee } 
    
    static var wrapper: EventControllerFocusClassRef? { EventControllerFocusClassRef(metatypePointer) }
    
    
}

// MARK: - EventControllerFocusClass Record

/// The `EventControllerFocusClassProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerFocusClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerFocusClass`.
/// Alternatively, use `EventControllerFocusClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EventControllerFocusClassProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerFocusClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEventControllerFocusClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventControllerFocusClass>! { get }

}

/// The `EventControllerFocusClassRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerFocusClass` instance.
/// It exposes methods that can operate on this data type through `EventControllerFocusClassProtocol` conformance.
/// Use `EventControllerFocusClassRef` only as an `unowned` reference to an existing `GtkEventControllerFocusClass` instance.
///

public struct EventControllerFocusClassRef: EventControllerFocusClassProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerFocusClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventControllerFocusClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEventControllerFocusClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEventControllerFocusClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEventControllerFocusClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEventControllerFocusClass>?) {
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

    /// Reference intialiser for a related type that implements `EventControllerFocusClassProtocol`
    @inlinable init<T: EventControllerFocusClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerFocusClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EventControllerFocusClass Record: EventControllerFocusClassProtocol extension (methods and fields)
public extension EventControllerFocusClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerFocusClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEventControllerFocusClass>! { return ptr?.assumingMemoryBound(to: GtkEventControllerFocusClass.self) }



}



/// Metatype/GType declaration for EventControllerKey
public extension EventControllerKeyClassRef {
    
    /// This getter returns the GLib type identifier registered for `EventControllerKey`
    static var metatypeReference: GType { gtk_event_controller_key_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEventControllerKeyClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEventControllerKeyClass.self) }
    
    static var metatype: GtkEventControllerKeyClass? { metatypePointer?.pointee } 
    
    static var wrapper: EventControllerKeyClassRef? { EventControllerKeyClassRef(metatypePointer) }
    
    
}

// MARK: - EventControllerKeyClass Record

/// The `EventControllerKeyClassProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerKeyClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerKeyClass`.
/// Alternatively, use `EventControllerKeyClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EventControllerKeyClassProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerKeyClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEventControllerKeyClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventControllerKeyClass>! { get }

}

/// The `EventControllerKeyClassRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerKeyClass` instance.
/// It exposes methods that can operate on this data type through `EventControllerKeyClassProtocol` conformance.
/// Use `EventControllerKeyClassRef` only as an `unowned` reference to an existing `GtkEventControllerKeyClass` instance.
///

public struct EventControllerKeyClassRef: EventControllerKeyClassProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerKeyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventControllerKeyClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEventControllerKeyClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEventControllerKeyClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEventControllerKeyClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEventControllerKeyClass>?) {
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

    /// Reference intialiser for a related type that implements `EventControllerKeyClassProtocol`
    @inlinable init<T: EventControllerKeyClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EventControllerKeyClass Record: EventControllerKeyClassProtocol extension (methods and fields)
public extension EventControllerKeyClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerKeyClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEventControllerKeyClass>! { return ptr?.assumingMemoryBound(to: GtkEventControllerKeyClass.self) }



}



/// Metatype/GType declaration for EventControllerLegacy
public extension EventControllerLegacyClassRef {
    
    /// This getter returns the GLib type identifier registered for `EventControllerLegacy`
    static var metatypeReference: GType { gtk_event_controller_legacy_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEventControllerLegacyClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEventControllerLegacyClass.self) }
    
    static var metatype: GtkEventControllerLegacyClass? { metatypePointer?.pointee } 
    
    static var wrapper: EventControllerLegacyClassRef? { EventControllerLegacyClassRef(metatypePointer) }
    
    
}

// MARK: - EventControllerLegacyClass Record

/// The `EventControllerLegacyClassProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerLegacyClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerLegacyClass`.
/// Alternatively, use `EventControllerLegacyClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EventControllerLegacyClassProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerLegacyClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEventControllerLegacyClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventControllerLegacyClass>! { get }

}

/// The `EventControllerLegacyClassRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerLegacyClass` instance.
/// It exposes methods that can operate on this data type through `EventControllerLegacyClassProtocol` conformance.
/// Use `EventControllerLegacyClassRef` only as an `unowned` reference to an existing `GtkEventControllerLegacyClass` instance.
///

public struct EventControllerLegacyClassRef: EventControllerLegacyClassProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerLegacyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventControllerLegacyClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEventControllerLegacyClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEventControllerLegacyClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEventControllerLegacyClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEventControllerLegacyClass>?) {
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

    /// Reference intialiser for a related type that implements `EventControllerLegacyClassProtocol`
    @inlinable init<T: EventControllerLegacyClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerLegacyClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EventControllerLegacyClass Record: EventControllerLegacyClassProtocol extension (methods and fields)
public extension EventControllerLegacyClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerLegacyClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEventControllerLegacyClass>! { return ptr?.assumingMemoryBound(to: GtkEventControllerLegacyClass.self) }



}



/// Metatype/GType declaration for EventControllerMotion
public extension EventControllerMotionClassRef {
    
    /// This getter returns the GLib type identifier registered for `EventControllerMotion`
    static var metatypeReference: GType { gtk_event_controller_motion_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEventControllerMotionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEventControllerMotionClass.self) }
    
    static var metatype: GtkEventControllerMotionClass? { metatypePointer?.pointee } 
    
    static var wrapper: EventControllerMotionClassRef? { EventControllerMotionClassRef(metatypePointer) }
    
    
}

// MARK: - EventControllerMotionClass Record

/// The `EventControllerMotionClassProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerMotionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerMotionClass`.
/// Alternatively, use `EventControllerMotionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EventControllerMotionClassProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerMotionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEventControllerMotionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventControllerMotionClass>! { get }

}

/// The `EventControllerMotionClassRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerMotionClass` instance.
/// It exposes methods that can operate on this data type through `EventControllerMotionClassProtocol` conformance.
/// Use `EventControllerMotionClassRef` only as an `unowned` reference to an existing `GtkEventControllerMotionClass` instance.
///

public struct EventControllerMotionClassRef: EventControllerMotionClassProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerMotionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventControllerMotionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEventControllerMotionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEventControllerMotionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEventControllerMotionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEventControllerMotionClass>?) {
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

    /// Reference intialiser for a related type that implements `EventControllerMotionClassProtocol`
    @inlinable init<T: EventControllerMotionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EventControllerMotionClass Record: EventControllerMotionClassProtocol extension (methods and fields)
public extension EventControllerMotionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerMotionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEventControllerMotionClass>! { return ptr?.assumingMemoryBound(to: GtkEventControllerMotionClass.self) }



}



/// Metatype/GType declaration for EventControllerScroll
public extension EventControllerScrollClassRef {
    
    /// This getter returns the GLib type identifier registered for `EventControllerScroll`
    static var metatypeReference: GType { gtk_event_controller_scroll_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEventControllerScrollClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEventControllerScrollClass.self) }
    
    static var metatype: GtkEventControllerScrollClass? { metatypePointer?.pointee } 
    
    static var wrapper: EventControllerScrollClassRef? { EventControllerScrollClassRef(metatypePointer) }
    
    
}

// MARK: - EventControllerScrollClass Record

/// The `EventControllerScrollClassProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerScrollClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerScrollClass`.
/// Alternatively, use `EventControllerScrollClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EventControllerScrollClassProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerScrollClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEventControllerScrollClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventControllerScrollClass>! { get }

}

/// The `EventControllerScrollClassRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerScrollClass` instance.
/// It exposes methods that can operate on this data type through `EventControllerScrollClassProtocol` conformance.
/// Use `EventControllerScrollClassRef` only as an `unowned` reference to an existing `GtkEventControllerScrollClass` instance.
///

public struct EventControllerScrollClassRef: EventControllerScrollClassProtocol {
        /// Untyped pointer to the underlying `GtkEventControllerScrollClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventControllerScrollClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEventControllerScrollClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEventControllerScrollClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEventControllerScrollClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEventControllerScrollClass>?) {
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

    /// Reference intialiser for a related type that implements `EventControllerScrollClassProtocol`
    @inlinable init<T: EventControllerScrollClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EventControllerScrollClass Record: EventControllerScrollClassProtocol extension (methods and fields)
public extension EventControllerScrollClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerScrollClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEventControllerScrollClass>! { return ptr?.assumingMemoryBound(to: GtkEventControllerScrollClass.self) }



}



/// Metatype/GType declaration for EveryFilter
public extension EveryFilterClassRef {
    
    /// This getter returns the GLib type identifier registered for `EveryFilter`
    static var metatypeReference: GType { gtk_every_filter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEveryFilterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEveryFilterClass.self) }
    
    static var metatype: GtkEveryFilterClass? { metatypePointer?.pointee } 
    
    static var wrapper: EveryFilterClassRef? { EveryFilterClassRef(metatypePointer) }
    
    
}

// MARK: - EveryFilterClass Record

/// The `EveryFilterClassProtocol` protocol exposes the methods and properties of an underlying `GtkEveryFilterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EveryFilterClass`.
/// Alternatively, use `EveryFilterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EveryFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkEveryFilterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEveryFilterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEveryFilterClass>! { get }

}

/// The `EveryFilterClassRef` type acts as a lightweight Swift reference to an underlying `GtkEveryFilterClass` instance.
/// It exposes methods that can operate on this data type through `EveryFilterClassProtocol` conformance.
/// Use `EveryFilterClassRef` only as an `unowned` reference to an existing `GtkEveryFilterClass` instance.
///

public struct EveryFilterClassRef: EveryFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkEveryFilterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EveryFilterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEveryFilterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEveryFilterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEveryFilterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEveryFilterClass>?) {
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

    /// Reference intialiser for a related type that implements `EveryFilterClassProtocol`
    @inlinable init<T: EveryFilterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EveryFilterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EveryFilterClass Record: EveryFilterClassProtocol extension (methods and fields)
public extension EveryFilterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEveryFilterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEveryFilterClass>! { return ptr?.assumingMemoryBound(to: GtkEveryFilterClass.self) }



}



// MARK: - ExpressionWatch Record

/// The `ExpressionWatchProtocol` protocol exposes the methods and properties of an underlying `GtkExpressionWatch` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ExpressionWatch`.
/// Alternatively, use `ExpressionWatchRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ExpressionWatchProtocol {
        /// Untyped pointer to the underlying `GtkExpressionWatch` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkExpressionWatch` instance.
    var _ptr: UnsafeMutablePointer<GtkExpressionWatch>! { get }

}

/// The `ExpressionWatchRef` type acts as a lightweight Swift reference to an underlying `GtkExpressionWatch` instance.
/// It exposes methods that can operate on this data type through `ExpressionWatchProtocol` conformance.
/// Use `ExpressionWatchRef` only as an `unowned` reference to an existing `GtkExpressionWatch` instance.
///

public struct ExpressionWatchRef: ExpressionWatchProtocol {
        /// Untyped pointer to the underlying `GtkExpressionWatch` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ExpressionWatchRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkExpressionWatch>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkExpressionWatch>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkExpressionWatch>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkExpressionWatch>?) {
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

    /// Reference intialiser for a related type that implements `ExpressionWatchProtocol`
    @inlinable init<T: ExpressionWatchProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionWatchProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionWatchProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionWatchProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionWatchProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionWatchProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ExpressionWatch` type acts as a reference-counted owner of an underlying `GtkExpressionWatch` instance.
/// It provides the methods that can operate on this data type through `ExpressionWatchProtocol` conformance.
/// Use `ExpressionWatch` as a strong reference or owner of a `GtkExpressionWatch` instance.
///

open class ExpressionWatch: ExpressionWatchProtocol {
        /// Untyped pointer to the underlying `GtkExpressionWatch` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ExpressionWatch` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkExpressionWatch>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ExpressionWatch` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkExpressionWatch>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ExpressionWatch` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ExpressionWatch` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ExpressionWatch` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkExpressionWatch>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ExpressionWatch` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkExpressionWatch>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkExpressionWatch`.
    /// i.e., ownership is transferred to the `ExpressionWatch` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkExpressionWatch>) {
        ptr = UnsafeMutableRawPointer(op)
        gtk_expression_watch_ref(ptr.assumingMemoryBound(to: GtkExpressionWatch.self))
    }

    /// Reference intialiser for a related type that implements `ExpressionWatchProtocol`
    /// Will retain `GtkExpressionWatch`.
    /// - Parameter other: an instance of a related type that implements `ExpressionWatchProtocol`
    @inlinable public init<T: ExpressionWatchProtocol>(_ other: T) {
        ptr = other.ptr
        gtk_expression_watch_ref(ptr.assumingMemoryBound(to: GtkExpressionWatch.self))
    }

    /// Releases the underlying `GtkExpressionWatch` instance using `gtk_expression_watch_unref`.
    deinit {
        gtk_expression_watch_unref(ptr.assumingMemoryBound(to: GtkExpressionWatch.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionWatchProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionWatchProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gtk_expression_watch_ref(ptr.assumingMemoryBound(to: GtkExpressionWatch.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionWatchProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionWatchProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gtk_expression_watch_ref(ptr.assumingMemoryBound(to: GtkExpressionWatch.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionWatchProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionWatchProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gtk_expression_watch_ref(ptr.assumingMemoryBound(to: GtkExpressionWatch.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionWatchProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpressionWatchProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gtk_expression_watch_ref(ptr.assumingMemoryBound(to: GtkExpressionWatch.self))
    }



}

// MARK: no ExpressionWatch properties

// MARK: no ExpressionWatch signals

// MARK: ExpressionWatch has no signals
// MARK: ExpressionWatch Record: ExpressionWatchProtocol extension (methods and fields)
public extension ExpressionWatchProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkExpressionWatch` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkExpressionWatch>! { return ptr?.assumingMemoryBound(to: GtkExpressionWatch.self) }

    /// Evaluates the watched expression and on success stores the result
    /// in `value`.
    /// 
    /// This is equivalent to calling `gtk_expression_evaluate()` with the
    /// expression and this pointer originally used to create `watch`.
    @inlinable func evaluate<ValueT: GLibObject.ValueProtocol>(value: ValueT) -> Bool {
        let rv = ((gtk_expression_watch_evaluate(_ptr, value.value_ptr)) != 0)
        return rv
    }

    /// Acquires a reference on the given `GtkExpressionWatch`.
    @discardableResult @inlinable func ref() -> ExpressionWatchRef! {
        guard let rv = ExpressionWatchRef(gconstpointer: gconstpointer(gtk_expression_watch_ref(_ptr))) else { return nil }
        return rv
    }

    /// Releases a reference on the given `GtkExpressionWatch`.
    /// 
    /// If the reference was the last, the resources associated to `self` are
    /// freed.
    @inlinable func unref() {
        gtk_expression_watch_unref(_ptr)
    
    }

    /// Stops watching an expression that was established via `gtk_expression_watch()`.
    @inlinable func unwatch() {
        gtk_expression_watch_unwatch(_ptr)
    
    }


}



/// Metatype/GType declaration for FileChooserNative
public extension FileChooserNativeClassRef {
    
    /// This getter returns the GLib type identifier registered for `FileChooserNative`
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



