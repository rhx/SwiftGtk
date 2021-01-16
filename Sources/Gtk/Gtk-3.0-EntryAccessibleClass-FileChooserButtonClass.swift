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

/// Metatype/GType declaration for EntryAccessible
public extension EntryAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_entry_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEntryAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEntryAccessibleClass.self) }
    
    static var metatype: GtkEntryAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: EntryAccessibleClassRef? { EntryAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - EntryAccessibleClass Record

/// The `EntryAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkEntryAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryAccessibleClass`.
/// Alternatively, use `EntryAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EntryAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkEntryAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEntryAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryAccessibleClass>! { get }

}

/// The `EntryAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkEntryAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `EntryAccessibleClassProtocol` conformance.
/// Use `EntryAccessibleClassRef` only as an `unowned` reference to an existing `GtkEntryAccessibleClass` instance.
///

public struct EntryAccessibleClassRef: EntryAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkEntryAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EntryAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEntryAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEntryAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEntryAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEntryAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `EntryAccessibleClassProtocol`
    @inlinable init<T: EntryAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EntryAccessibleClass Record: EntryAccessibleClassProtocol extension (methods and fields)
public extension EntryAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEntryAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkEntryAccessibleClass.self) }


    @inlinable var parentClass: GtkWidgetAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for EntryBuffer
public extension EntryBufferClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
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
    
    /// This getter returns type identifier in the GLib type system registry
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

    // var populatePopup is unavailable because populate_popup is void

    // var activate is unavailable because activate is void

    // var moveCursor is unavailable because move_cursor is void

    // var insertAtCursor is unavailable because insert_at_cursor is void

    // var deleteFromCursor is unavailable because delete_from_cursor is void

    // var backspace is unavailable because backspace is void

    // var cutClipboard is unavailable because cut_clipboard is void

    // var copyClipboard is unavailable because copy_clipboard is void

    // var pasteClipboard is unavailable because paste_clipboard is void

    // var toggleOverwrite is unavailable because toggle_overwrite is void

    // var getTextAreaSize is unavailable because get_text_area_size is void

    // var getFrameSize is unavailable because get_frame_size is void

    // var insertEmoji is unavailable because insert_emoji is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

}



/// Metatype/GType declaration for EntryCompletion
public extension EntryCompletionClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_entry_completion_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEntryCompletionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEntryCompletionClass.self) }
    
    static var metatype: GtkEntryCompletionClass? { metatypePointer?.pointee } 
    
    static var wrapper: EntryCompletionClassRef? { EntryCompletionClassRef(metatypePointer) }
    
    
}

// MARK: - EntryCompletionClass Record

/// The `EntryCompletionClassProtocol` protocol exposes the methods and properties of an underlying `GtkEntryCompletionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryCompletionClass`.
/// Alternatively, use `EntryCompletionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EntryCompletionClassProtocol {
        /// Untyped pointer to the underlying `GtkEntryCompletionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEntryCompletionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEntryCompletionClass>! { get }

}

/// The `EntryCompletionClassRef` type acts as a lightweight Swift reference to an underlying `GtkEntryCompletionClass` instance.
/// It exposes methods that can operate on this data type through `EntryCompletionClassProtocol` conformance.
/// Use `EntryCompletionClassRef` only as an `unowned` reference to an existing `GtkEntryCompletionClass` instance.
///

public struct EntryCompletionClassRef: EntryCompletionClassProtocol {
        /// Untyped pointer to the underlying `GtkEntryCompletionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EntryCompletionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEntryCompletionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEntryCompletionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEntryCompletionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEntryCompletionClass>?) {
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

    /// Reference intialiser for a related type that implements `EntryCompletionClassProtocol`
    @inlinable init<T: EntryCompletionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EntryCompletionClass Record: EntryCompletionClassProtocol extension (methods and fields)
public extension EntryCompletionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryCompletionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEntryCompletionClass>! { return ptr?.assumingMemoryBound(to: GtkEntryCompletionClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var matchSelected is unavailable because match_selected is void

    // var actionActivated is unavailable because action_activated is void

    // var insertPrefix is unavailable because insert_prefix is void

    // var cursorOnMatch is unavailable because cursor_on_match is void

    // var noMatches is unavailable because no_matches is void

    // var GtkReserved0 is unavailable because _gtk_reserved0 is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

}



/// Metatype/GType declaration for EventBox
public extension EventBoxClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_event_box_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEventBoxClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEventBoxClass.self) }
    
    static var metatype: GtkEventBoxClass? { metatypePointer?.pointee } 
    
    static var wrapper: EventBoxClassRef? { EventBoxClassRef(metatypePointer) }
    
    
}

// MARK: - EventBoxClass Record

/// The `EventBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkEventBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventBoxClass`.
/// Alternatively, use `EventBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EventBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkEventBoxClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEventBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkEventBoxClass>! { get }

}

/// The `EventBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkEventBoxClass` instance.
/// It exposes methods that can operate on this data type through `EventBoxClassProtocol` conformance.
/// Use `EventBoxClassRef` only as an `unowned` reference to an existing `GtkEventBoxClass` instance.
///

public struct EventBoxClassRef: EventBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkEventBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEventBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEventBoxClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEventBoxClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEventBoxClass>?) {
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

    /// Reference intialiser for a related type that implements `EventBoxClassProtocol`
    @inlinable init<T: EventBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EventBoxClass Record: EventBoxClassProtocol extension (methods and fields)
public extension EventBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventBoxClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEventBoxClass>! { return ptr?.assumingMemoryBound(to: GtkEventBoxClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBinClass {
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



/// Metatype/GType declaration for EventController
public extension EventControllerClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
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



/// Metatype/GType declaration for EventControllerKey
public extension EventControllerKeyClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
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



/// Metatype/GType declaration for EventControllerMotion
public extension EventControllerMotionClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
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
    
    /// This getter returns type identifier in the GLib type system registry
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



/// Metatype/GType declaration for ExpanderAccessible
public extension ExpanderAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_expander_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkExpanderAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkExpanderAccessibleClass.self) }
    
    static var metatype: GtkExpanderAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ExpanderAccessibleClassRef? { ExpanderAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ExpanderAccessibleClass Record

/// The `ExpanderAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkExpanderAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ExpanderAccessibleClass`.
/// Alternatively, use `ExpanderAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ExpanderAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkExpanderAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkExpanderAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkExpanderAccessibleClass>! { get }

}

/// The `ExpanderAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkExpanderAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ExpanderAccessibleClassProtocol` conformance.
/// Use `ExpanderAccessibleClassRef` only as an `unowned` reference to an existing `GtkExpanderAccessibleClass` instance.
///

public struct ExpanderAccessibleClassRef: ExpanderAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkExpanderAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ExpanderAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkExpanderAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkExpanderAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkExpanderAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkExpanderAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ExpanderAccessibleClassProtocol`
    @inlinable init<T: ExpanderAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ExpanderAccessibleClass Record: ExpanderAccessibleClassProtocol extension (methods and fields)
public extension ExpanderAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkExpanderAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkExpanderAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkExpanderAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Expander
public extension ExpanderClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_expander_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkExpanderClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkExpanderClass.self) }
    
    static var metatype: GtkExpanderClass? { metatypePointer?.pointee } 
    
    static var wrapper: ExpanderClassRef? { ExpanderClassRef(metatypePointer) }
    
    
}

// MARK: - ExpanderClass Record

/// The `ExpanderClassProtocol` protocol exposes the methods and properties of an underlying `GtkExpanderClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ExpanderClass`.
/// Alternatively, use `ExpanderClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ExpanderClassProtocol {
        /// Untyped pointer to the underlying `GtkExpanderClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkExpanderClass` instance.
    var _ptr: UnsafeMutablePointer<GtkExpanderClass>! { get }

}

/// The `ExpanderClassRef` type acts as a lightweight Swift reference to an underlying `GtkExpanderClass` instance.
/// It exposes methods that can operate on this data type through `ExpanderClassProtocol` conformance.
/// Use `ExpanderClassRef` only as an `unowned` reference to an existing `GtkExpanderClass` instance.
///

public struct ExpanderClassRef: ExpanderClassProtocol {
        /// Untyped pointer to the underlying `GtkExpanderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ExpanderClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkExpanderClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkExpanderClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkExpanderClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkExpanderClass>?) {
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

    /// Reference intialiser for a related type that implements `ExpanderClassProtocol`
    @inlinable init<T: ExpanderClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ExpanderClass Record: ExpanderClassProtocol extension (methods and fields)
public extension ExpanderClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkExpanderClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkExpanderClass>! { return ptr?.assumingMemoryBound(to: GtkExpanderClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBinClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var activate is unavailable because activate is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for FileChooserButton
public extension FileChooserButtonClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_file_chooser_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkFileChooserButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkFileChooserButtonClass.self) }
    
    static var metatype: GtkFileChooserButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: FileChooserButtonClassRef? { FileChooserButtonClassRef(metatypePointer) }
    
    
}

// MARK: - FileChooserButtonClass Record

/// The `FileChooserButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserButtonClass`.
/// Alternatively, use `FileChooserButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileChooserButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkFileChooserButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFileChooserButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkFileChooserButtonClass>! { get }

}

/// The `FileChooserButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserButtonClass` instance.
/// It exposes methods that can operate on this data type through `FileChooserButtonClassProtocol` conformance.
/// Use `FileChooserButtonClassRef` only as an `unowned` reference to an existing `GtkFileChooserButtonClass` instance.
///

public struct FileChooserButtonClassRef: FileChooserButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkFileChooserButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileChooserButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFileChooserButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFileChooserButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFileChooserButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFileChooserButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `FileChooserButtonClassProtocol`
    @inlinable init<T: FileChooserButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FileChooserButtonClass Record: FileChooserButtonClassProtocol extension (methods and fields)
public extension FileChooserButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkFileChooserButtonClass>! { return ptr?.assumingMemoryBound(to: GtkFileChooserButtonClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBoxClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var fileSet is unavailable because file_set is void

    // var _gtkReserved1 is unavailable because __gtk_reserved1 is void

    // var _gtkReserved2 is unavailable because __gtk_reserved2 is void

    // var _gtkReserved3 is unavailable because __gtk_reserved3 is void

    // var _gtkReserved4 is unavailable because __gtk_reserved4 is void

}



