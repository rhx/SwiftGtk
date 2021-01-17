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

/// Metatype/GType declaration for TextBuffer
public extension TextBufferClassRef {
    
    /// This getter returns the GLib type identifier registered for `TextBuffer`
    static var metatypeReference: GType { gtk_text_buffer_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTextBufferClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTextBufferClass.self) }
    
    static var metatype: GtkTextBufferClass? { metatypePointer?.pointee } 
    
    static var wrapper: TextBufferClassRef? { TextBufferClassRef(metatypePointer) }
    
    
}

// MARK: - TextBufferClass Record

/// The `TextBufferClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextBufferClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextBufferClass`.
/// Alternatively, use `TextBufferClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The class structure for `GtkTextBuffer`.
public protocol TextBufferClassProtocol {
        /// Untyped pointer to the underlying `GtkTextBufferClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextBufferClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextBufferClass>! { get }

}

/// The `TextBufferClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextBufferClass` instance.
/// It exposes methods that can operate on this data type through `TextBufferClassProtocol` conformance.
/// Use `TextBufferClassRef` only as an `unowned` reference to an existing `GtkTextBufferClass` instance.
///
/// The class structure for `GtkTextBuffer`.
public struct TextBufferClassRef: TextBufferClassProtocol {
        /// Untyped pointer to the underlying `GtkTextBufferClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextBufferClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextBufferClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextBufferClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextBufferClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextBufferClass>?) {
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

    /// Reference intialiser for a related type that implements `TextBufferClassProtocol`
    @inlinable init<T: TextBufferClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TextBufferClass Record: TextBufferClassProtocol extension (methods and fields)
public extension TextBufferClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextBufferClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextBufferClass>! { return ptr?.assumingMemoryBound(to: GtkTextBufferClass.self) }


    /// The object class structure needs to be the first.
    @inlinable var parentClass: GObjectClass {
        /// The object class structure needs to be the first.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var insertText is unavailable because insert_text is void

    // var insertPaintable is unavailable because insert_paintable is void

    // var insertChildAnchor is unavailable because insert_child_anchor is void

    // var deleteRange is unavailable because delete_range is void

    // var changed is unavailable because changed is void

    // var modifiedChanged is unavailable because modified_changed is void

    // var markSet is unavailable because mark_set is void

    // var markDeleted is unavailable because mark_deleted is void

    // var applyTag is unavailable because apply_tag is void

    // var removeTag is unavailable because remove_tag is void

    // var beginUserAction is unavailable because begin_user_action is void

    // var endUserAction is unavailable because end_user_action is void

    // var pasteDone is unavailable because paste_done is void

    // var undo is unavailable because undo is void

    // var redo is unavailable because redo is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for TextChildAnchor
public extension TextChildAnchorClassRef {
    
    /// This getter returns the GLib type identifier registered for `TextChildAnchor`
    static var metatypeReference: GType { gtk_text_child_anchor_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTextChildAnchorClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTextChildAnchorClass.self) }
    
    static var metatype: GtkTextChildAnchorClass? { metatypePointer?.pointee } 
    
    static var wrapper: TextChildAnchorClassRef? { TextChildAnchorClassRef(metatypePointer) }
    
    
}

// MARK: - TextChildAnchorClass Record

/// The `TextChildAnchorClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextChildAnchorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextChildAnchorClass`.
/// Alternatively, use `TextChildAnchorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextChildAnchorClassProtocol {
        /// Untyped pointer to the underlying `GtkTextChildAnchorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextChildAnchorClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextChildAnchorClass>! { get }

}

/// The `TextChildAnchorClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextChildAnchorClass` instance.
/// It exposes methods that can operate on this data type through `TextChildAnchorClassProtocol` conformance.
/// Use `TextChildAnchorClassRef` only as an `unowned` reference to an existing `GtkTextChildAnchorClass` instance.
///

public struct TextChildAnchorClassRef: TextChildAnchorClassProtocol {
        /// Untyped pointer to the underlying `GtkTextChildAnchorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextChildAnchorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextChildAnchorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextChildAnchorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextChildAnchorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextChildAnchorClass>?) {
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

    /// Reference intialiser for a related type that implements `TextChildAnchorClassProtocol`
    @inlinable init<T: TextChildAnchorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextChildAnchorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TextChildAnchorClass Record: TextChildAnchorClassProtocol extension (methods and fields)
public extension TextChildAnchorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextChildAnchorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextChildAnchorClass>! { return ptr?.assumingMemoryBound(to: GtkTextChildAnchorClass.self) }


    @inlinable var parentClass: GObjectClass {
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



// MARK: - TextIter Record

/// The `TextIterProtocol` protocol exposes the methods and properties of an underlying `GtkTextIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextIter`.
/// Alternatively, use `TextIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// You may wish to begin by reading the
/// [text widget conceptual overview](#TextWidget)
/// which gives an overview of all the objects and data
/// types related to the text widget and how they work together.
public protocol TextIterProtocol {
        /// Untyped pointer to the underlying `GtkTextIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextIter` instance.
    var text_iter_ptr: UnsafeMutablePointer<GtkTextIter>! { get }

}

/// The `TextIterRef` type acts as a lightweight Swift reference to an underlying `GtkTextIter` instance.
/// It exposes methods that can operate on this data type through `TextIterProtocol` conformance.
/// Use `TextIterRef` only as an `unowned` reference to an existing `GtkTextIter` instance.
///
/// You may wish to begin by reading the
/// [text widget conceptual overview](#TextWidget)
/// which gives an overview of all the objects and data
/// types related to the text widget and how they work together.
public struct TextIterRef: TextIterProtocol {
        /// Untyped pointer to the underlying `GtkTextIter` instance.
    /// For type-safe access, use the generated, typed pointer `text_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextIter>?) {
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

    /// Reference intialiser for a related type that implements `TextIterProtocol`
    @inlinable init<T: TextIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TextIter` type acts as an owner of an underlying `GtkTextIter` instance.
/// It provides the methods that can operate on this data type through `TextIterProtocol` conformance.
/// Use `TextIter` as a strong reference or owner of a `GtkTextIter` instance.
///
/// You may wish to begin by reading the
/// [text widget conceptual overview](#TextWidget)
/// which gives an overview of all the objects and data
/// types related to the text widget and how they work together.
open class TextIter: TextIterProtocol {
        /// Untyped pointer to the underlying `GtkTextIter` instance.
    /// For type-safe access, use the generated, typed pointer `text_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTextIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTextIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTextIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TextIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTextIter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkTextIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TextIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTextIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkTextIter, cannot ref(text_iter_ptr)
    }

    /// Reference intialiser for a related type that implements `TextIterProtocol`
    /// `GtkTextIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TextIterProtocol`
    @inlinable public init<T: TextIterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkTextIter, cannot ref(text_iter_ptr)
    }

    /// Do-nothing destructor for `GtkTextIter`.
    deinit {
        // no reference counting for GtkTextIter, cannot unref(text_iter_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkTextIter, cannot ref(text_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkTextIter, cannot ref(text_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkTextIter, cannot ref(text_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkTextIter, cannot ref(text_iter_ptr)
    }



}

// MARK: no TextIter properties

// MARK: no TextIter signals

// MARK: TextIter has no signals
// MARK: TextIter Record: TextIterProtocol extension (methods and fields)
public extension TextIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextIter` instance.
    @inlinable var text_iter_ptr: UnsafeMutablePointer<GtkTextIter>! { return ptr?.assumingMemoryBound(to: GtkTextIter.self) }

    /// Assigns the value of `other` to `iter`.  This function
    /// is not useful in applications, because iterators can be assigned
    /// with `GtkTextIter i = j;`. The
    /// function is used by language bindings.
    @inlinable func assign<TextIterT: TextIterProtocol>(other: TextIterT) {
        gtk_text_iter_assign(text_iter_ptr, other.text_iter_ptr)
    
    }

    /// Moves backward by one character offset. Returns `true` if movement
    /// was possible; if `iter` was the first in the buffer (character
    /// offset 0), `gtk_text_iter_backward_char()` returns `false` for convenience when
    /// writing loops.
    @inlinable func backwardChar() -> Bool {
        let rv = ((gtk_text_iter_backward_char(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `count` characters backward, if possible (if `count` would move
    /// past the start or end of the buffer, moves to the start or end of
    /// the buffer).  The return value indicates whether the iterator moved
    /// onto a dereferenceable position; if the iterator didn’t move, or
    /// moved onto the end iterator, then `false` is returned. If `count` is 0,
    /// the function does nothing and returns `false`.
    @inlinable func backwardChars(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_chars(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Like `gtk_text_iter_forward_cursor_position()`, but moves backward.
    @inlinable func backwardCursorPosition() -> Bool {
        let rv = ((gtk_text_iter_backward_cursor_position(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves up to `count` cursor positions. See
    /// `gtk_text_iter_forward_cursor_position()` for details.
    @inlinable func backwardCursorPositions(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_cursor_positions(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Same as `gtk_text_iter_forward_find_char()`, but goes backward from `iter`.
    @inlinable func backwardFindChar(pred: @escaping GtkTextCharPredicate, userData: gpointer! = nil, limit: TextIterRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_backward_find_char(text_iter_ptr, pred, userData, limit?.text_iter_ptr)) != 0)
        return rv
    }
    /// Same as `gtk_text_iter_forward_find_char()`, but goes backward from `iter`.
    @inlinable func backwardFindChar<TextIterT: TextIterProtocol>(pred: @escaping GtkTextCharPredicate, userData: gpointer! = nil, limit: TextIterT?) -> Bool {
        let rv = ((gtk_text_iter_backward_find_char(text_iter_ptr, pred, userData, limit?.text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `iter` to the start of the previous line. Returns `true` if
    /// `iter` could be moved; i.e. if `iter` was at character offset 0, this
    /// function returns `false`. Therefore if `iter` was already on line 0,
    /// but not at the start of the line, `iter` is snapped to the start of
    /// the line and the function returns `true`. (Note that this implies that
    /// in a loop calling this function, the line number may not change on
    /// every iteration, if your first iteration is on line 0.)
    @inlinable func backwardLine() -> Bool {
        let rv = ((gtk_text_iter_backward_line(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `count` lines backward, if possible (if `count` would move
    /// past the start or end of the buffer, moves to the start or end of
    /// the buffer).  The return value indicates whether the iterator moved
    /// onto a dereferenceable position; if the iterator didn’t move, or
    /// moved onto the end iterator, then `false` is returned. If `count` is 0,
    /// the function does nothing and returns `false`. If `count` is negative,
    /// moves forward by 0 - `count` lines.
    @inlinable func backwardLines(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_lines(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Same as `gtk_text_iter_forward_search()`, but moves backward.
    /// 
    /// `match_end` will never be set to a `GtkTextIter` located after `iter`, even if
    /// there is a possible `match_start` before or at `iter`.
    @inlinable func backwardSearch(str: UnsafePointer<CChar>!, flags: TextSearchFlags, matchStart: TextIterRef? = nil, matchEnd: TextIterRef? = nil, limit: TextIterRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_backward_search(text_iter_ptr, str, flags.value, matchStart?.text_iter_ptr, matchEnd?.text_iter_ptr, limit?.text_iter_ptr)) != 0)
        return rv
    }
    /// Same as `gtk_text_iter_forward_search()`, but moves backward.
    /// 
    /// `match_end` will never be set to a `GtkTextIter` located after `iter`, even if
    /// there is a possible `match_start` before or at `iter`.
    @inlinable func backwardSearch<TextIterT: TextIterProtocol>(str: UnsafePointer<CChar>!, flags: TextSearchFlags, matchStart: TextIterT?, matchEnd: TextIterT?, limit: TextIterT?) -> Bool {
        let rv = ((gtk_text_iter_backward_search(text_iter_ptr, str, flags.value, matchStart?.text_iter_ptr, matchEnd?.text_iter_ptr, limit?.text_iter_ptr)) != 0)
        return rv
    }

    /// Moves backward to the previous sentence start; if `iter` is already at
    /// the start of a sentence, moves backward to the next one.  Sentence
    /// boundaries are determined by Pango and should be correct for nearly
    /// any language (if not, the correct fix would be to the Pango text
    /// boundary algorithms).
    @inlinable func backwardSentenceStart() -> Bool {
        let rv = ((gtk_text_iter_backward_sentence_start(text_iter_ptr)) != 0)
        return rv
    }

    /// Calls `gtk_text_iter_backward_sentence_start()` up to `count` times,
    /// or until it returns `false`. If `count` is negative, moves forward
    /// instead of backward.
    @inlinable func backwardSentenceStarts(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_sentence_starts(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves backward to the next toggle (on or off) of the
    /// `GtkTextTag` `tag`, or to the next toggle of any tag if
    /// `tag` is `nil`. If no matching tag toggles are found,
    /// returns `false`, otherwise `true`. Does not return toggles
    /// located at `iter`, only toggles before `iter`. Sets `iter`
    /// to the location of the toggle, or the start of the buffer
    /// if no toggle is found.
    @inlinable func backwardToTagToggle(tag: TextTagRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_backward_to_tag_toggle(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }
    /// Moves backward to the next toggle (on or off) of the
    /// `GtkTextTag` `tag`, or to the next toggle of any tag if
    /// `tag` is `nil`. If no matching tag toggles are found,
    /// returns `false`, otherwise `true`. Does not return toggles
    /// located at `iter`, only toggles before `iter`. Sets `iter`
    /// to the location of the toggle, or the start of the buffer
    /// if no toggle is found.
    @inlinable func backwardToTagToggle<TextTagT: TextTagProtocol>(tag: TextTagT?) -> Bool {
        let rv = ((gtk_text_iter_backward_to_tag_toggle(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }

    /// Moves `iter` forward to the previous visible cursor position. See
    /// `gtk_text_iter_backward_cursor_position()` for details.
    @inlinable func backwardVisibleCursorPosition() -> Bool {
        let rv = ((gtk_text_iter_backward_visible_cursor_position(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves up to `count` visible cursor positions. See
    /// `gtk_text_iter_backward_cursor_position()` for details.
    @inlinable func backwardVisibleCursorPositions(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_visible_cursor_positions(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves `iter` to the start of the previous visible line. Returns `true` if
    /// `iter` could be moved; i.e. if `iter` was at character offset 0, this
    /// function returns `false`. Therefore if `iter` was already on line 0,
    /// but not at the start of the line, `iter` is snapped to the start of
    /// the line and the function returns `true`. (Note that this implies that
    /// in a loop calling this function, the line number may not change on
    /// every iteration, if your first iteration is on line 0.)
    @inlinable func backwardVisibleLine() -> Bool {
        let rv = ((gtk_text_iter_backward_visible_line(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `count` visible lines backward, if possible (if `count` would move
    /// past the start or end of the buffer, moves to the start or end of
    /// the buffer).  The return value indicates whether the iterator moved
    /// onto a dereferenceable position; if the iterator didn’t move, or
    /// moved onto the end iterator, then `false` is returned. If `count` is 0,
    /// the function does nothing and returns `false`. If `count` is negative,
    /// moves forward by 0 - `count` lines.
    @inlinable func backwardVisibleLines(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_visible_lines(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves backward to the previous visible word start. (If `iter` is currently
    /// on a word start, moves backward to the next one after that.) Word breaks
    /// are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    @inlinable func backwardVisibleWordStart() -> Bool {
        let rv = ((gtk_text_iter_backward_visible_word_start(text_iter_ptr)) != 0)
        return rv
    }

    /// Calls `gtk_text_iter_backward_visible_word_start()` up to `count` times.
    @inlinable func backwardVisibleWordStarts(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_visible_word_starts(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves backward to the previous word start. (If `iter` is currently on a
    /// word start, moves backward to the next one after that.) Word breaks
    /// are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    @inlinable func backwardWordStart() -> Bool {
        let rv = ((gtk_text_iter_backward_word_start(text_iter_ptr)) != 0)
        return rv
    }

    /// Calls `gtk_text_iter_backward_word_start()` up to `count` times.
    @inlinable func backwardWordStarts(count: Int) -> Bool {
        let rv = ((gtk_text_iter_backward_word_starts(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Considering the default editability of the buffer, and tags that
    /// affect editability, determines whether text inserted at `iter` would
    /// be editable. If text inserted at `iter` would be editable then the
    /// user should be allowed to insert text at `iter`.
    /// `gtk_text_buffer_insert_interactive()` uses this function to decide
    /// whether insertions are allowed at a given position.
    @inlinable func canInsert(defaultEditability: Bool) -> Bool {
        let rv = ((gtk_text_iter_can_insert(text_iter_ptr, gboolean((defaultEditability) ? 1 : 0))) != 0)
        return rv
    }

    /// A `qsort()`-style function that returns negative if `lhs` is less than
    /// `rhs`, positive if `lhs` is greater than `rhs`, and 0 if they’re equal.
    /// Ordering is in character offset order, i.e. the first character in the buffer
    /// is less than the second character in the buffer.
    @inlinable func compare<TextIterT: TextIterProtocol>(rhs: TextIterT) -> Int {
        let rv = Int(gtk_text_iter_compare(text_iter_ptr, rhs.text_iter_ptr))
        return rv
    }

    /// Creates a dynamically-allocated copy of an iterator. This function
    /// is not useful in applications, because iterators can be copied with a
    /// simple assignment (`GtkTextIter i = j;`). The
    /// function is used by language bindings.
    @inlinable func copy() -> TextIterRef! {
        guard let rv = TextIterRef(gconstpointer: gconstpointer(gtk_text_iter_copy(text_iter_ptr))) else { return nil }
        return rv
    }

    /// Returns whether the character at `iter` is within an editable region
    /// of text.
    /// 
    /// Non-editable text is “locked” and can’t be changed by the
    /// user via `GtkTextView`. If no tags applied to this text affect
    /// editability, `default_setting` will be returned.
    /// 
    /// You don’t want to use this function to decide whether text can be
    /// inserted at `iter`, because for insertion you don’t want to know
    /// whether the char at `iter` is inside an editable range, you want to
    /// know whether a new character inserted at `iter` would be inside an
    /// editable range. Use `gtk_text_iter_can_insert()` to handle this
    /// case.
    @inlinable func editable(defaultSetting: Bool) -> Bool {
        let rv = ((gtk_text_iter_editable(text_iter_ptr, gboolean((defaultSetting) ? 1 : 0))) != 0)
        return rv
    }

    /// Returns `true` if `iter` points to the start of the paragraph
    /// delimiter characters for a line (delimiters will be either a
    /// newline, a carriage return, a carriage return followed by a
    /// newline, or a Unicode paragraph separator character). Note that an
    /// iterator pointing to the \n of a \r\n pair will not be counted as
    /// the end of a line, the line ends before the \r. The end iterator is
    /// considered to be at the end of a line, even though there are no
    /// paragraph delimiter chars there.
    @inlinable func endsLine() -> Bool {
        let rv = ((gtk_text_iter_ends_line(text_iter_ptr)) != 0)
        return rv
    }

    /// Determines whether `iter` ends a sentence.  Sentence boundaries are
    /// determined by Pango and should be correct for nearly any language
    /// (if not, the correct fix would be to the Pango text boundary
    /// algorithms).
    @inlinable func endsSentence() -> Bool {
        let rv = ((gtk_text_iter_ends_sentence(text_iter_ptr)) != 0)
        return rv
    }

    /// Returns `true` if `tag` is toggled off at exactly this point. If `tag`
    /// is `nil`, returns `true` if any tag is toggled off at this point.
    /// 
    /// Note that if `gtk_text_iter_ends_tag()` returns `true`, it means that `iter` is
    /// at the end of the tagged range, but that the character
    /// at `iter` is outside the tagged range. In other words,
    /// unlike `gtk_text_iter_starts_tag()`, if `gtk_text_iter_ends_tag()` returns `true`,
    /// `gtk_text_iter_has_tag()` will return `false` for the same parameters.
    @inlinable func ends(tag: TextTagRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_ends_tag(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }
    /// Returns `true` if `tag` is toggled off at exactly this point. If `tag`
    /// is `nil`, returns `true` if any tag is toggled off at this point.
    /// 
    /// Note that if `gtk_text_iter_ends_tag()` returns `true`, it means that `iter` is
    /// at the end of the tagged range, but that the character
    /// at `iter` is outside the tagged range. In other words,
    /// unlike `gtk_text_iter_starts_tag()`, if `gtk_text_iter_ends_tag()` returns `true`,
    /// `gtk_text_iter_has_tag()` will return `false` for the same parameters.
    @inlinable func ends<TextTagT: TextTagProtocol>(tag: TextTagT?) -> Bool {
        let rv = ((gtk_text_iter_ends_tag(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }

    /// Determines whether `iter` ends a natural-language word.  Word breaks
    /// are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    @inlinable func endsWord() -> Bool {
        let rv = ((gtk_text_iter_ends_word(text_iter_ptr)) != 0)
        return rv
    }

    /// Tests whether two iterators are equal, using the fastest possible
    /// mechanism. This function is very fast; you can expect it to perform
    /// better than e.g. getting the character offset for each iterator and
    /// comparing the offsets yourself. Also, it’s a bit faster than
    /// `gtk_text_iter_compare()`.
    @inlinable func equal<TextIterT: TextIterProtocol>(rhs: TextIterT) -> Bool {
        let rv = ((gtk_text_iter_equal(text_iter_ptr, rhs.text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `iter` forward by one character offset. Note that images
    /// embedded in the buffer occupy 1 character slot, so
    /// `gtk_text_iter_forward_char()` may actually move onto an image instead
    /// of a character, if you have images in your buffer.  If `iter` is the
    /// end iterator or one character before it, `iter` will now point at
    /// the end iterator, and `gtk_text_iter_forward_char()` returns `false` for
    /// convenience when writing loops.
    @inlinable func forwardChar() -> Bool {
        let rv = ((gtk_text_iter_forward_char(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `count` characters if possible (if `count` would move past the
    /// start or end of the buffer, moves to the start or end of the
    /// buffer). The return value indicates whether the new position of
    /// `iter` is different from its original position, and dereferenceable
    /// (the last iterator in the buffer is not dereferenceable). If `count`
    /// is 0, the function does nothing and returns `false`.
    @inlinable func forwardChars(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_chars(text_iter_ptr, gint(count))) != 0)
        return rv
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
    /// `pango_break()` function.
    @inlinable func forwardCursorPosition() -> Bool {
        let rv = ((gtk_text_iter_forward_cursor_position(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves up to `count` cursor positions. See
    /// `gtk_text_iter_forward_cursor_position()` for details.
    @inlinable func forwardCursorPositions(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_cursor_positions(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Advances `iter`, calling `pred` on each character. If
    /// `pred` returns `true`, returns `true` and stops scanning.
    /// If `pred` never returns `true`, `iter` is set to `limit` if
    /// `limit` is non-`nil`, otherwise to the end iterator.
    @inlinable func forwardFindChar(pred: @escaping GtkTextCharPredicate, userData: gpointer! = nil, limit: TextIterRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_forward_find_char(text_iter_ptr, pred, userData, limit?.text_iter_ptr)) != 0)
        return rv
    }
    /// Advances `iter`, calling `pred` on each character. If
    /// `pred` returns `true`, returns `true` and stops scanning.
    /// If `pred` never returns `true`, `iter` is set to `limit` if
    /// `limit` is non-`nil`, otherwise to the end iterator.
    @inlinable func forwardFindChar<TextIterT: TextIterProtocol>(pred: @escaping GtkTextCharPredicate, userData: gpointer! = nil, limit: TextIterT?) -> Bool {
        let rv = ((gtk_text_iter_forward_find_char(text_iter_ptr, pred, userData, limit?.text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `iter` to the start of the next line. If the iter is already on the
    /// last line of the buffer, moves the iter to the end of the current line.
    /// If after the operation, the iter is at the end of the buffer and not
    /// dereferenceable, returns `false`. Otherwise, returns `true`.
    @inlinable func forwardLine() -> Bool {
        let rv = ((gtk_text_iter_forward_line(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `count` lines forward, if possible (if `count` would move
    /// past the start or end of the buffer, moves to the start or end of
    /// the buffer).  The return value indicates whether the iterator moved
    /// onto a dereferenceable position; if the iterator didn’t move, or
    /// moved onto the end iterator, then `false` is returned. If `count` is 0,
    /// the function does nothing and returns `false`. If `count` is negative,
    /// moves backward by 0 - `count` lines.
    @inlinable func forwardLines(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_lines(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Searches forward for `str`. Any match is returned by setting
    /// `match_start` to the first character of the match and `match_end` to the
    /// first character after the match. The search will not continue past
    /// `limit`. Note that a search is a linear or `O(n)` operation, so you
    /// may wish to use `limit` to avoid locking up your UI on large
    /// buffers.
    /// 
    /// `match_start` will never be set to a `GtkTextIter` located before `iter`, even if
    /// there is a possible `match_end` after or at `iter`.
    @inlinable func forwardSearch(str: UnsafePointer<CChar>!, flags: TextSearchFlags, matchStart: TextIterRef? = nil, matchEnd: TextIterRef? = nil, limit: TextIterRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_forward_search(text_iter_ptr, str, flags.value, matchStart?.text_iter_ptr, matchEnd?.text_iter_ptr, limit?.text_iter_ptr)) != 0)
        return rv
    }
    /// Searches forward for `str`. Any match is returned by setting
    /// `match_start` to the first character of the match and `match_end` to the
    /// first character after the match. The search will not continue past
    /// `limit`. Note that a search is a linear or `O(n)` operation, so you
    /// may wish to use `limit` to avoid locking up your UI on large
    /// buffers.
    /// 
    /// `match_start` will never be set to a `GtkTextIter` located before `iter`, even if
    /// there is a possible `match_end` after or at `iter`.
    @inlinable func forwardSearch<TextIterT: TextIterProtocol>(str: UnsafePointer<CChar>!, flags: TextSearchFlags, matchStart: TextIterT?, matchEnd: TextIterT?, limit: TextIterT?) -> Bool {
        let rv = ((gtk_text_iter_forward_search(text_iter_ptr, str, flags.value, matchStart?.text_iter_ptr, matchEnd?.text_iter_ptr, limit?.text_iter_ptr)) != 0)
        return rv
    }

    /// Moves forward to the next sentence end. (If `iter` is at the end of
    /// a sentence, moves to the next end of sentence.)  Sentence
    /// boundaries are determined by Pango and should be correct for nearly
    /// any language (if not, the correct fix would be to the Pango text
    /// boundary algorithms).
    @inlinable func forwardSentenceEnd() -> Bool {
        let rv = ((gtk_text_iter_forward_sentence_end(text_iter_ptr)) != 0)
        return rv
    }

    /// Calls `gtk_text_iter_forward_sentence_end()` `count` times (or until
    /// `gtk_text_iter_forward_sentence_end()` returns `false`). If `count` is
    /// negative, moves backward instead of forward.
    @inlinable func forwardSentenceEnds(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_sentence_ends(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves `iter` forward to the “end iterator,” which points one past the last
    /// valid character in the buffer. `gtk_text_iter_get_char()` called on the
    /// end iterator returns 0, which is convenient for writing loops.
    @inlinable func forwardToEnd() {
        gtk_text_iter_forward_to_end(text_iter_ptr)
    
    }

    /// Moves the iterator to point to the paragraph delimiter characters,
    /// which will be either a newline, a carriage return, a carriage
    /// return/newline in sequence, or the Unicode paragraph separator
    /// character. If the iterator is already at the paragraph delimiter
    /// characters, moves to the paragraph delimiter characters for the
    /// next line. If `iter` is on the last line in the buffer, which does
    /// not end in paragraph delimiters, moves to the end iterator (end of
    /// the last line), and returns `false`.
    @inlinable func forwardToLineEnd() -> Bool {
        let rv = ((gtk_text_iter_forward_to_line_end(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves forward to the next toggle (on or off) of the
    /// `GtkTextTag` `tag`, or to the next toggle of any tag if
    /// `tag` is `nil`. If no matching tag toggles are found,
    /// returns `false`, otherwise `true`. Does not return toggles
    /// located at `iter`, only toggles after `iter`. Sets `iter` to
    /// the location of the toggle, or to the end of the buffer
    /// if no toggle is found.
    @inlinable func forwardToTagToggle(tag: TextTagRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_forward_to_tag_toggle(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }
    /// Moves forward to the next toggle (on or off) of the
    /// `GtkTextTag` `tag`, or to the next toggle of any tag if
    /// `tag` is `nil`. If no matching tag toggles are found,
    /// returns `false`, otherwise `true`. Does not return toggles
    /// located at `iter`, only toggles after `iter`. Sets `iter` to
    /// the location of the toggle, or to the end of the buffer
    /// if no toggle is found.
    @inlinable func forwardToTagToggle<TextTagT: TextTagProtocol>(tag: TextTagT?) -> Bool {
        let rv = ((gtk_text_iter_forward_to_tag_toggle(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }

    /// Moves `iter` forward to the next visible cursor position. See
    /// `gtk_text_iter_forward_cursor_position()` for details.
    @inlinable func forwardVisibleCursorPosition() -> Bool {
        let rv = ((gtk_text_iter_forward_visible_cursor_position(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves up to `count` visible cursor positions. See
    /// `gtk_text_iter_forward_cursor_position()` for details.
    @inlinable func forwardVisibleCursorPositions(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_visible_cursor_positions(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves `iter` to the start of the next visible line. Returns `true` if there
    /// was a next line to move to, and `false` if `iter` was simply moved to
    /// the end of the buffer and is now not dereferenceable, or if `iter` was
    /// already at the end of the buffer.
    @inlinable func forwardVisibleLine() -> Bool {
        let rv = ((gtk_text_iter_forward_visible_line(text_iter_ptr)) != 0)
        return rv
    }

    /// Moves `count` visible lines forward, if possible (if `count` would move
    /// past the start or end of the buffer, moves to the start or end of
    /// the buffer).  The return value indicates whether the iterator moved
    /// onto a dereferenceable position; if the iterator didn’t move, or
    /// moved onto the end iterator, then `false` is returned. If `count` is 0,
    /// the function does nothing and returns `false`. If `count` is negative,
    /// moves backward by 0 - `count` lines.
    @inlinable func forwardVisibleLines(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_visible_lines(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves forward to the next visible word end. (If `iter` is currently on a
    /// word end, moves forward to the next one after that.) Word breaks
    /// are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    @inlinable func forwardVisibleWordEnd() -> Bool {
        let rv = ((gtk_text_iter_forward_visible_word_end(text_iter_ptr)) != 0)
        return rv
    }

    /// Calls `gtk_text_iter_forward_visible_word_end()` up to `count` times.
    @inlinable func forwardVisibleWordEnds(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_visible_word_ends(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Moves forward to the next word end. (If `iter` is currently on a
    /// word end, moves forward to the next one after that.) Word breaks
    /// are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    @inlinable func forwardWordEnd() -> Bool {
        let rv = ((gtk_text_iter_forward_word_end(text_iter_ptr)) != 0)
        return rv
    }

    /// Calls `gtk_text_iter_forward_word_end()` up to `count` times.
    @inlinable func forwardWordEnds(count: Int) -> Bool {
        let rv = ((gtk_text_iter_forward_word_ends(text_iter_ptr, gint(count))) != 0)
        return rv
    }

    /// Free an iterator allocated on the heap. This function
    /// is intended for use in language bindings, and is not
    /// especially useful for applications, because iterators can
    /// simply be allocated on the stack.
    @inlinable func free() {
        gtk_text_iter_free(text_iter_ptr)
    
    }

    /// Returns the `GtkTextBuffer` this iterator is associated with.
    @inlinable func getBuffer() -> TextBufferRef! {
        let rv = TextBufferRef(gconstpointer: gconstpointer(gtk_text_iter_get_buffer(text_iter_ptr)))
        return rv
    }

    /// Returns the number of bytes in the line containing `iter`,
    /// including the paragraph delimiters.
    @inlinable func getBytesInLine() -> Int {
        let rv = Int(gtk_text_iter_get_bytes_in_line(text_iter_ptr))
        return rv
    }

    /// The Unicode character at this iterator is returned.  (Equivalent to
    /// operator* on a C++ iterator.)  If the element at this iterator is a
    /// non-character element, such as an image embedded in the buffer, the
    /// Unicode “unknown” character 0xFFFC is returned. If invoked on
    /// the end iterator, zero is returned; zero is not a valid Unicode character.
    /// So you can write a loop which ends when `gtk_text_iter_get_char()`
    /// returns 0.
    @inlinable func getChar() -> gunichar {
        let rv = gtk_text_iter_get_char(text_iter_ptr)
        return rv
    }

    /// Returns the number of characters in the line containing `iter`,
    /// including the paragraph delimiters.
    @inlinable func getCharsInLine() -> Int {
        let rv = Int(gtk_text_iter_get_chars_in_line(text_iter_ptr))
        return rv
    }

    /// If the location at `iter` contains a child anchor, the
    /// anchor is returned (with no new reference count added). Otherwise,
    /// `nil` is returned.
    @inlinable func getChildAnchor() -> TextChildAnchorRef! {
        let rv = TextChildAnchorRef(gconstpointer: gconstpointer(gtk_text_iter_get_child_anchor(text_iter_ptr)))
        return rv
    }

    /// Returns the language in effect at `iter`.
    /// 
    /// If no tags affecting language apply to `iter`, the return
    /// value is identical to that of `gtk_get_default_language()`.
    @inlinable func getLanguage() -> Pango.LanguageRef! {
        let rv = Pango.LanguageRef(gtk_text_iter_get_language(text_iter_ptr))
        return rv
    }

    /// Returns the line number containing the iterator. Lines in
    /// a `GtkTextBuffer` are numbered beginning with 0 for the first
    /// line in the buffer.
    @inlinable func getLine() -> Int {
        let rv = Int(gtk_text_iter_get_line(text_iter_ptr))
        return rv
    }

    /// Returns the byte index of the iterator, counting
    /// from the start of a newline-terminated line.
    /// Remember that `GtkTextBuffer` encodes text in
    /// UTF-8, and that characters can require a variable
    /// number of bytes to represent.
    @inlinable func getLineIndex() -> Int {
        let rv = Int(gtk_text_iter_get_line_index(text_iter_ptr))
        return rv
    }

    /// Returns the character offset of the iterator,
    /// counting from the start of a newline-terminated line.
    /// The first character on the line has offset 0.
    @inlinable func getLineOffset() -> Int {
        let rv = Int(gtk_text_iter_get_line_offset(text_iter_ptr))
        return rv
    }

    /// Returns a list of all `GtkTextMark` at this location. Because marks
    /// are not iterable (they don’t take up any "space" in the buffer,
    /// they are just marks in between iterable locations), multiple marks
    /// can exist in the same place. The returned list is not in any
    /// meaningful order.
    @inlinable func getMarks() -> GLib.SListRef! {
        let rv = GLib.SListRef(gtk_text_iter_get_marks(text_iter_ptr))
        return rv
    }

    /// Returns the character offset of an iterator.
    /// Each character in a `GtkTextBuffer` has an offset,
    /// starting with 0 for the first character in the buffer.
    /// Use `gtk_text_buffer_get_iter_at_offset()` to convert an
    /// offset back into an iterator.
    @inlinable func getOffset() -> Int {
        let rv = Int(gtk_text_iter_get_offset(text_iter_ptr))
        return rv
    }

    /// If the element at `iter` is a paintable, the paintable is returned
    /// (with no new reference count added). Otherwise, `nil` is returned.
    @inlinable func getPaintable() -> Gdk.PaintableRef! {
        let rv = Gdk.PaintableRef(gtk_text_iter_get_paintable(text_iter_ptr))
        return rv
    }

    /// Returns the text in the given range. A “slice” is an array of
    /// characters encoded in UTF-8 format, including the Unicode “unknown”
    /// character 0xFFFC for iterable non-character elements in the buffer,
    /// such as images.  Because images are encoded in the slice, byte and
    /// character offsets in the returned array will correspond to byte
    /// offsets in the text buffer. Note that 0xFFFC can occur in normal
    /// text as well, so it is not a reliable indicator that a paintable or
    /// widget is in the buffer.
    @inlinable func getSlice<TextIterT: TextIterProtocol>(end: TextIterT) -> String! {
        let rv = gtk_text_iter_get_slice(text_iter_ptr, end.text_iter_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns a list of tags that apply to `iter`, in ascending order of
    /// priority (highest-priority tags are last). The `GtkTextTag` in the
    /// list don’t have a reference added, but you have to free the list
    /// itself.
    @inlinable func getTags() -> GLib.SListRef! {
        let rv = GLib.SListRef(gtk_text_iter_get_tags(text_iter_ptr))
        return rv
    }

    /// Returns text in the given range.  If the range
    /// contains non-text elements such as images, the character and byte
    /// offsets in the returned string will not correspond to character and
    /// byte offsets in the buffer. If you want offsets to correspond, see
    /// `gtk_text_iter_get_slice()`.
    @inlinable func getText<TextIterT: TextIterProtocol>(end: TextIterT) -> String! {
        let rv = gtk_text_iter_get_text(text_iter_ptr, end.text_iter_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns a list of `GtkTextTag` that are toggled on or off at this
    /// point.  (If `toggled_on` is `true`, the list contains tags that are
    /// toggled on.) If a tag is toggled on at `iter`, then some non-empty
    /// range of characters following `iter` has that tag applied to it.  If
    /// a tag is toggled off, then some non-empty range following `iter`
    /// does not have the tag applied to it.
    @inlinable func getToggledTags(toggledOn: Bool) -> GLib.SListRef! {
        let rv = GLib.SListRef(gtk_text_iter_get_toggled_tags(text_iter_ptr, gboolean((toggledOn) ? 1 : 0)))
        return rv
    }

    /// Returns the number of bytes from the start of the
    /// line to the given `iter`, not counting bytes that
    /// are invisible due to tags with the “invisible” flag
    /// toggled on.
    @inlinable func getVisibleLineIndex() -> Int {
        let rv = Int(gtk_text_iter_get_visible_line_index(text_iter_ptr))
        return rv
    }

    /// Returns the offset in characters from the start of the
    /// line to the given `iter`, not counting characters that
    /// are invisible due to tags with the “invisible” flag
    /// toggled on.
    @inlinable func getVisibleLineOffset() -> Int {
        let rv = Int(gtk_text_iter_get_visible_line_offset(text_iter_ptr))
        return rv
    }

    /// Like `gtk_text_iter_get_slice()`, but invisible text is not included.
    /// Invisible text is usually invisible because a `GtkTextTag` with the
    /// “invisible” attribute turned on has been applied to it.
    @inlinable func getVisibleSlice<TextIterT: TextIterProtocol>(end: TextIterT) -> String! {
        let rv = gtk_text_iter_get_visible_slice(text_iter_ptr, end.text_iter_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Like `gtk_text_iter_get_text()`, but invisible text is not included.
    /// Invisible text is usually invisible because a `GtkTextTag` with the
    /// “invisible” attribute turned on has been applied to it.
    @inlinable func getVisibleText<TextIterT: TextIterProtocol>(end: TextIterT) -> String! {
        let rv = gtk_text_iter_get_visible_text(text_iter_ptr, end.text_iter_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns `true` if `iter` points to a character that is part of a range tagged
    /// with `tag`. See also `gtk_text_iter_starts_tag()` and `gtk_text_iter_ends_tag()`.
    @inlinable func has<TextTagT: TextTagProtocol>(tag: TextTagT) -> Bool {
        let rv = ((gtk_text_iter_has_tag(text_iter_ptr, tag.text_tag_ptr)) != 0)
        return rv
    }

    /// Checks whether `iter` falls in the range [`start`, `end`).
    /// `start` and `end` must be in ascending order.
    @inlinable func inRange<TextIterT: TextIterProtocol>(start: TextIterT, end: TextIterT) -> Bool {
        let rv = ((gtk_text_iter_in_range(text_iter_ptr, start.text_iter_ptr, end.text_iter_ptr)) != 0)
        return rv
    }

    /// Determines whether `iter` is inside a sentence (as opposed to in
    /// between two sentences, e.g. after a period and before the first
    /// letter of the next sentence).  Sentence boundaries are determined
    /// by Pango and should be correct for nearly any language (if not, the
    /// correct fix would be to the Pango text boundary algorithms).
    @inlinable func insideSentence() -> Bool {
        let rv = ((gtk_text_iter_inside_sentence(text_iter_ptr)) != 0)
        return rv
    }

    /// Determines whether the character pointed by `iter` is part of a
    /// natural-language word (as opposed to say inside some whitespace).  Word
    /// breaks are determined by Pango and should be correct for nearly any language
    /// (if not, the correct fix would be to the Pango word break algorithms).
    /// 
    /// Note that if `gtk_text_iter_starts_word()` returns `true`, then this function
    /// returns `true` too, since `iter` points to the first character of the word.
    @inlinable func insideWord() -> Bool {
        let rv = ((gtk_text_iter_inside_word(text_iter_ptr)) != 0)
        return rv
    }

    /// Swaps the value of `first` and `second` if `second` comes before
    /// `first` in the buffer. That is, ensures that `first` and `second` are
    /// in sequence. Most text buffer functions that take a range call this
    /// automatically on your behalf, so there’s no real reason to call it yourself
    /// in those cases. There are some exceptions, such as `gtk_text_iter_in_range()`,
    /// that expect a pre-sorted range.
    @inlinable func order<TextIterT: TextIterProtocol>(second: TextIterT) {
        gtk_text_iter_order(text_iter_ptr, second.text_iter_ptr)
    
    }

    /// Moves iterator `iter` to the start of the line `line_number`.  If
    /// `line_number` is negative or larger than the number of lines in the
    /// buffer, moves `iter` to the start of the last line in the buffer.
    @inlinable func setLine(lineNumber: Int) {
        gtk_text_iter_set_line(text_iter_ptr, gint(lineNumber))
    
    }

    /// Same as `gtk_text_iter_set_line_offset()`, but works with a
    /// byte index. The given byte index must be at
    /// the start of a character, it can’t be in the middle of a UTF-8
    /// encoded character.
    @inlinable func setLineIndex(byteOnLine: Int) {
        gtk_text_iter_set_line_index(text_iter_ptr, gint(byteOnLine))
    
    }

    /// Moves `iter` within a line, to a new character
    /// (not byte) offset. The given character offset must be less than or
    /// equal to the number of characters in the line; if equal, `iter`
    /// moves to the start of the next line. See
    /// `gtk_text_iter_set_line_index()` if you have a byte index rather than
    /// a character offset.
    @inlinable func setLineOffset(charOnLine: Int) {
        gtk_text_iter_set_line_offset(text_iter_ptr, gint(charOnLine))
    
    }

    /// Sets `iter` to point to `char_offset`. `char_offset` counts from the start
    /// of the entire text buffer, starting with 0.
    @inlinable func setOffset(charOffset: Int) {
        gtk_text_iter_set_offset(text_iter_ptr, gint(charOffset))
    
    }

    /// Like `gtk_text_iter_set_line_index()`, but the index is in visible
    /// bytes, i.e. text with a tag making it invisible is not counted
    /// in the index.
    @inlinable func setVisibleLineIndex(byteOnLine: Int) {
        gtk_text_iter_set_visible_line_index(text_iter_ptr, gint(byteOnLine))
    
    }

    /// Like `gtk_text_iter_set_line_offset()`, but the offset is in visible
    /// characters, i.e. text with a tag making it invisible is not
    /// counted in the offset.
    @inlinable func setVisibleLineOffset(charOnLine: Int) {
        gtk_text_iter_set_visible_line_offset(text_iter_ptr, gint(charOnLine))
    
    }

    /// Returns `true` if `iter` begins a paragraph,
    /// i.e. if `gtk_text_iter_get_line_offset()` would return 0.
    /// However this function is potentially more efficient than
    /// `gtk_text_iter_get_line_offset()` because it doesn’t have to compute
    /// the offset, it just has to see whether it’s 0.
    @inlinable func startsLine() -> Bool {
        let rv = ((gtk_text_iter_starts_line(text_iter_ptr)) != 0)
        return rv
    }

    /// Determines whether `iter` begins a sentence.  Sentence boundaries are
    /// determined by Pango and should be correct for nearly any language
    /// (if not, the correct fix would be to the Pango text boundary
    /// algorithms).
    @inlinable func startsSentence() -> Bool {
        let rv = ((gtk_text_iter_starts_sentence(text_iter_ptr)) != 0)
        return rv
    }

    /// Returns `true` if `tag` is toggled on at exactly this point. If `tag`
    /// is `nil`, returns `true` if any tag is toggled on at this point.
    /// 
    /// Note that if `gtk_text_iter_starts_tag()` returns `true`, it means that `iter` is
    /// at the beginning of the tagged range, and that the
    /// character at `iter` is inside the tagged range. In other
    /// words, unlike `gtk_text_iter_ends_tag()`, if `gtk_text_iter_starts_tag()` returns
    /// `true`, `gtk_text_iter_has_tag()` will also return `true` for the same
    /// parameters.
    @inlinable func starts(tag: TextTagRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_starts_tag(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }
    /// Returns `true` if `tag` is toggled on at exactly this point. If `tag`
    /// is `nil`, returns `true` if any tag is toggled on at this point.
    /// 
    /// Note that if `gtk_text_iter_starts_tag()` returns `true`, it means that `iter` is
    /// at the beginning of the tagged range, and that the
    /// character at `iter` is inside the tagged range. In other
    /// words, unlike `gtk_text_iter_ends_tag()`, if `gtk_text_iter_starts_tag()` returns
    /// `true`, `gtk_text_iter_has_tag()` will also return `true` for the same
    /// parameters.
    @inlinable func starts<TextTagT: TextTagProtocol>(tag: TextTagT?) -> Bool {
        let rv = ((gtk_text_iter_starts_tag(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }

    /// Determines whether `iter` begins a natural-language word.  Word
    /// breaks are determined by Pango and should be correct for nearly any
    /// language (if not, the correct fix would be to the Pango word break
    /// algorithms).
    @inlinable func startsWord() -> Bool {
        let rv = ((gtk_text_iter_starts_word(text_iter_ptr)) != 0)
        return rv
    }

    /// This is equivalent to (`gtk_text_iter_starts_tag()` ||
    /// `gtk_text_iter_ends_tag()`), i.e. it tells you whether a range with
    /// `tag` applied to it begins or ends at `iter`.
    @inlinable func toggles(tag: TextTagRef? = nil) -> Bool {
        let rv = ((gtk_text_iter_toggles_tag(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }
    /// This is equivalent to (`gtk_text_iter_starts_tag()` ||
    /// `gtk_text_iter_ends_tag()`), i.e. it tells you whether a range with
    /// `tag` applied to it begins or ends at `iter`.
    @inlinable func toggles<TextTagT: TextTagProtocol>(tag: TextTagT?) -> Bool {
        let rv = ((gtk_text_iter_toggles_tag(text_iter_ptr, tag?.text_tag_ptr)) != 0)
        return rv
    }
    /// Returns the `GtkTextBuffer` this iterator is associated with.
    @inlinable var buffer: TextBufferRef! {
        /// Returns the `GtkTextBuffer` this iterator is associated with.
        get {
            let rv = TextBufferRef(gconstpointer: gconstpointer(gtk_text_iter_get_buffer(text_iter_ptr)))
            return rv
        }
    }

    /// Returns the number of bytes in the line containing `iter`,
    /// including the paragraph delimiters.
    @inlinable var bytesInLine: Int {
        /// Returns the number of bytes in the line containing `iter`,
        /// including the paragraph delimiters.
        get {
            let rv = Int(gtk_text_iter_get_bytes_in_line(text_iter_ptr))
            return rv
        }
    }

    /// The Unicode character at this iterator is returned.  (Equivalent to
    /// operator* on a C++ iterator.)  If the element at this iterator is a
    /// non-character element, such as an image embedded in the buffer, the
    /// Unicode “unknown” character 0xFFFC is returned. If invoked on
    /// the end iterator, zero is returned; zero is not a valid Unicode character.
    /// So you can write a loop which ends when `gtk_text_iter_get_char()`
    /// returns 0.
    @inlinable var char: gunichar {
        /// The Unicode character at this iterator is returned.  (Equivalent to
        /// operator* on a C++ iterator.)  If the element at this iterator is a
        /// non-character element, such as an image embedded in the buffer, the
        /// Unicode “unknown” character 0xFFFC is returned. If invoked on
        /// the end iterator, zero is returned; zero is not a valid Unicode character.
        /// So you can write a loop which ends when `gtk_text_iter_get_char()`
        /// returns 0.
        get {
            let rv = gtk_text_iter_get_char(text_iter_ptr)
            return rv
        }
    }

    /// Returns the number of characters in the line containing `iter`,
    /// including the paragraph delimiters.
    @inlinable var charsInLine: Int {
        /// Returns the number of characters in the line containing `iter`,
        /// including the paragraph delimiters.
        get {
            let rv = Int(gtk_text_iter_get_chars_in_line(text_iter_ptr))
            return rv
        }
    }

    /// If the location at `iter` contains a child anchor, the
    /// anchor is returned (with no new reference count added). Otherwise,
    /// `nil` is returned.
    @inlinable var childAnchor: TextChildAnchorRef! {
        /// If the location at `iter` contains a child anchor, the
        /// anchor is returned (with no new reference count added). Otherwise,
        /// `nil` is returned.
        get {
            let rv = TextChildAnchorRef(gconstpointer: gconstpointer(gtk_text_iter_get_child_anchor(text_iter_ptr)))
            return rv
        }
    }

    /// See `gtk_text_iter_forward_cursor_position()` or `PangoLogAttr` or
    /// `pango_break()` for details on what a cursor position is.
    @inlinable var isCursorPosition: Bool {
        /// See `gtk_text_iter_forward_cursor_position()` or `PangoLogAttr` or
        /// `pango_break()` for details on what a cursor position is.
        get {
            let rv = ((gtk_text_iter_is_cursor_position(text_iter_ptr)) != 0)
            return rv
        }
    }

    /// Returns `true` if `iter` is the end iterator, i.e. one past the last
    /// dereferenceable iterator in the buffer. `gtk_text_iter_is_end()` is
    /// the most efficient way to check whether an iterator is the end
    /// iterator.
    @inlinable var isEnd: Bool {
        /// Returns `true` if `iter` is the end iterator, i.e. one past the last
        /// dereferenceable iterator in the buffer. `gtk_text_iter_is_end()` is
        /// the most efficient way to check whether an iterator is the end
        /// iterator.
        get {
            let rv = ((gtk_text_iter_is_end(text_iter_ptr)) != 0)
            return rv
        }
    }

    /// Returns `true` if `iter` is the first iterator in the buffer, that is
    /// if `iter` has a character offset of 0.
    @inlinable var isStart: Bool {
        /// Returns `true` if `iter` is the first iterator in the buffer, that is
        /// if `iter` has a character offset of 0.
        get {
            let rv = ((gtk_text_iter_is_start(text_iter_ptr)) != 0)
            return rv
        }
    }

    /// Returns the language in effect at `iter`.
    /// 
    /// If no tags affecting language apply to `iter`, the return
    /// value is identical to that of `gtk_get_default_language()`.
    @inlinable var language: Pango.LanguageRef! {
        /// Returns the language in effect at `iter`.
        /// 
        /// If no tags affecting language apply to `iter`, the return
        /// value is identical to that of `gtk_get_default_language()`.
        get {
            let rv = Pango.LanguageRef(gtk_text_iter_get_language(text_iter_ptr))
            return rv
        }
    }

    /// Returns the line number containing the iterator. Lines in
    /// a `GtkTextBuffer` are numbered beginning with 0 for the first
    /// line in the buffer.
    @inlinable var line: Int {
        /// Returns the line number containing the iterator. Lines in
        /// a `GtkTextBuffer` are numbered beginning with 0 for the first
        /// line in the buffer.
        get {
            let rv = Int(gtk_text_iter_get_line(text_iter_ptr))
            return rv
        }
        /// Moves iterator `iter` to the start of the line `line_number`.  If
        /// `line_number` is negative or larger than the number of lines in the
        /// buffer, moves `iter` to the start of the last line in the buffer.
        nonmutating set {
            gtk_text_iter_set_line(text_iter_ptr, gint(newValue))
        }
    }

    /// Returns the byte index of the iterator, counting
    /// from the start of a newline-terminated line.
    /// Remember that `GtkTextBuffer` encodes text in
    /// UTF-8, and that characters can require a variable
    /// number of bytes to represent.
    @inlinable var lineIndex: Int {
        /// Returns the byte index of the iterator, counting
        /// from the start of a newline-terminated line.
        /// Remember that `GtkTextBuffer` encodes text in
        /// UTF-8, and that characters can require a variable
        /// number of bytes to represent.
        get {
            let rv = Int(gtk_text_iter_get_line_index(text_iter_ptr))
            return rv
        }
        /// Same as `gtk_text_iter_set_line_offset()`, but works with a
        /// byte index. The given byte index must be at
        /// the start of a character, it can’t be in the middle of a UTF-8
        /// encoded character.
        nonmutating set {
            gtk_text_iter_set_line_index(text_iter_ptr, gint(newValue))
        }
    }

    /// Returns the character offset of the iterator,
    /// counting from the start of a newline-terminated line.
    /// The first character on the line has offset 0.
    @inlinable var lineOffset: Int {
        /// Returns the character offset of the iterator,
        /// counting from the start of a newline-terminated line.
        /// The first character on the line has offset 0.
        get {
            let rv = Int(gtk_text_iter_get_line_offset(text_iter_ptr))
            return rv
        }
        /// Moves `iter` within a line, to a new character
        /// (not byte) offset. The given character offset must be less than or
        /// equal to the number of characters in the line; if equal, `iter`
        /// moves to the start of the next line. See
        /// `gtk_text_iter_set_line_index()` if you have a byte index rather than
        /// a character offset.
        nonmutating set {
            gtk_text_iter_set_line_offset(text_iter_ptr, gint(newValue))
        }
    }

    /// Returns a list of all `GtkTextMark` at this location. Because marks
    /// are not iterable (they don’t take up any "space" in the buffer,
    /// they are just marks in between iterable locations), multiple marks
    /// can exist in the same place. The returned list is not in any
    /// meaningful order.
    @inlinable var marks: GLib.SListRef! {
        /// Returns a list of all `GtkTextMark` at this location. Because marks
        /// are not iterable (they don’t take up any "space" in the buffer,
        /// they are just marks in between iterable locations), multiple marks
        /// can exist in the same place. The returned list is not in any
        /// meaningful order.
        get {
            let rv = GLib.SListRef(gtk_text_iter_get_marks(text_iter_ptr))
            return rv
        }
    }

    /// Returns the character offset of an iterator.
    /// Each character in a `GtkTextBuffer` has an offset,
    /// starting with 0 for the first character in the buffer.
    /// Use `gtk_text_buffer_get_iter_at_offset()` to convert an
    /// offset back into an iterator.
    @inlinable var offset: Int {
        /// Returns the character offset of an iterator.
        /// Each character in a `GtkTextBuffer` has an offset,
        /// starting with 0 for the first character in the buffer.
        /// Use `gtk_text_buffer_get_iter_at_offset()` to convert an
        /// offset back into an iterator.
        get {
            let rv = Int(gtk_text_iter_get_offset(text_iter_ptr))
            return rv
        }
        /// Sets `iter` to point to `char_offset`. `char_offset` counts from the start
        /// of the entire text buffer, starting with 0.
        nonmutating set {
            gtk_text_iter_set_offset(text_iter_ptr, gint(newValue))
        }
    }

    /// If the element at `iter` is a paintable, the paintable is returned
    /// (with no new reference count added). Otherwise, `nil` is returned.
    @inlinable var paintable: Gdk.PaintableRef! {
        /// If the element at `iter` is a paintable, the paintable is returned
        /// (with no new reference count added). Otherwise, `nil` is returned.
        get {
            let rv = Gdk.PaintableRef(gtk_text_iter_get_paintable(text_iter_ptr))
            return rv
        }
    }

    /// Returns a list of tags that apply to `iter`, in ascending order of
    /// priority (highest-priority tags are last). The `GtkTextTag` in the
    /// list don’t have a reference added, but you have to free the list
    /// itself.
    @inlinable var tags: GLib.SListRef! {
        /// Returns a list of tags that apply to `iter`, in ascending order of
        /// priority (highest-priority tags are last). The `GtkTextTag` in the
        /// list don’t have a reference added, but you have to free the list
        /// itself.
        get {
            let rv = GLib.SListRef(gtk_text_iter_get_tags(text_iter_ptr))
            return rv
        }
    }

    /// Returns the number of bytes from the start of the
    /// line to the given `iter`, not counting bytes that
    /// are invisible due to tags with the “invisible” flag
    /// toggled on.
    @inlinable var visibleLineIndex: Int {
        /// Returns the number of bytes from the start of the
        /// line to the given `iter`, not counting bytes that
        /// are invisible due to tags with the “invisible” flag
        /// toggled on.
        get {
            let rv = Int(gtk_text_iter_get_visible_line_index(text_iter_ptr))
            return rv
        }
        /// Like `gtk_text_iter_set_line_index()`, but the index is in visible
        /// bytes, i.e. text with a tag making it invisible is not counted
        /// in the index.
        nonmutating set {
            gtk_text_iter_set_visible_line_index(text_iter_ptr, gint(newValue))
        }
    }

    /// Returns the offset in characters from the start of the
    /// line to the given `iter`, not counting characters that
    /// are invisible due to tags with the “invisible” flag
    /// toggled on.
    @inlinable var visibleLineOffset: Int {
        /// Returns the offset in characters from the start of the
        /// line to the given `iter`, not counting characters that
        /// are invisible due to tags with the “invisible” flag
        /// toggled on.
        get {
            let rv = Int(gtk_text_iter_get_visible_line_offset(text_iter_ptr))
            return rv
        }
        /// Like `gtk_text_iter_set_line_offset()`, but the offset is in visible
        /// characters, i.e. text with a tag making it invisible is not
        /// counted in the offset.
        nonmutating set {
            gtk_text_iter_set_visible_line_offset(text_iter_ptr, gint(newValue))
        }
    }

    // var dummy1 is unavailable because dummy1 is private

    // var dummy2 is unavailable because dummy2 is private

    // var dummy3 is unavailable because dummy3 is private

    // var dummy4 is unavailable because dummy4 is private

    // var dummy5 is unavailable because dummy5 is private

    // var dummy6 is unavailable because dummy6 is private

    // var dummy7 is unavailable because dummy7 is private

    // var dummy8 is unavailable because dummy8 is private

    // var dummy9 is unavailable because dummy9 is private

    // var dummy10 is unavailable because dummy10 is private

    // var dummy11 is unavailable because dummy11 is private

    // var dummy12 is unavailable because dummy12 is private

    // var dummy13 is unavailable because dummy13 is private

    // var dummy14 is unavailable because dummy14 is private

}



/// Metatype/GType declaration for TextMark
public extension TextMarkClassRef {
    
    /// This getter returns the GLib type identifier registered for `TextMark`
    static var metatypeReference: GType { gtk_text_mark_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTextMarkClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTextMarkClass.self) }
    
    static var metatype: GtkTextMarkClass? { metatypePointer?.pointee } 
    
    static var wrapper: TextMarkClassRef? { TextMarkClassRef(metatypePointer) }
    
    
}

// MARK: - TextMarkClass Record

/// The `TextMarkClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextMarkClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextMarkClass`.
/// Alternatively, use `TextMarkClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextMarkClassProtocol {
        /// Untyped pointer to the underlying `GtkTextMarkClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextMarkClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextMarkClass>! { get }

}

/// The `TextMarkClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextMarkClass` instance.
/// It exposes methods that can operate on this data type through `TextMarkClassProtocol` conformance.
/// Use `TextMarkClassRef` only as an `unowned` reference to an existing `GtkTextMarkClass` instance.
///

public struct TextMarkClassRef: TextMarkClassProtocol {
        /// Untyped pointer to the underlying `GtkTextMarkClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextMarkClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextMarkClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextMarkClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextMarkClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextMarkClass>?) {
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

    /// Reference intialiser for a related type that implements `TextMarkClassProtocol`
    @inlinable init<T: TextMarkClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextMarkClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TextMarkClass Record: TextMarkClassProtocol extension (methods and fields)
public extension TextMarkClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextMarkClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextMarkClass>! { return ptr?.assumingMemoryBound(to: GtkTextMarkClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for TextTag
public extension TextTagClassRef {
    
    /// This getter returns the GLib type identifier registered for `TextTag`
    static var metatypeReference: GType { gtk_text_tag_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTextTagClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTextTagClass.self) }
    
    static var metatype: GtkTextTagClass? { metatypePointer?.pointee } 
    
    static var wrapper: TextTagClassRef? { TextTagClassRef(metatypePointer) }
    
    
}

// MARK: - TextTagClass Record

/// The `TextTagClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextTagClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextTagClass`.
/// Alternatively, use `TextTagClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextTagClassProtocol {
        /// Untyped pointer to the underlying `GtkTextTagClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextTagClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextTagClass>! { get }

}

/// The `TextTagClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextTagClass` instance.
/// It exposes methods that can operate on this data type through `TextTagClassProtocol` conformance.
/// Use `TextTagClassRef` only as an `unowned` reference to an existing `GtkTextTagClass` instance.
///

public struct TextTagClassRef: TextTagClassProtocol {
        /// Untyped pointer to the underlying `GtkTextTagClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextTagClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextTagClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextTagClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextTagClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextTagClass>?) {
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

    /// Reference intialiser for a related type that implements `TextTagClassProtocol`
    @inlinable init<T: TextTagClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextTagClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TextTagClass Record: TextTagClassProtocol extension (methods and fields)
public extension TextTagClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextTagClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextTagClass>! { return ptr?.assumingMemoryBound(to: GtkTextTagClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for TextView
public extension TextViewClassRef {
    
    /// This getter returns the GLib type identifier registered for `TextView`
    static var metatypeReference: GType { gtk_text_view_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTextViewClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTextViewClass.self) }
    
    static var metatype: GtkTextViewClass? { metatypePointer?.pointee } 
    
    static var wrapper: TextViewClassRef? { TextViewClassRef(metatypePointer) }
    
    
}

// MARK: - TextViewClass Record

/// The `TextViewClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextViewClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextViewClass`.
/// Alternatively, use `TextViewClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextViewClassProtocol {
        /// Untyped pointer to the underlying `GtkTextViewClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextViewClass>! { get }

}

/// The `TextViewClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextViewClass` instance.
/// It exposes methods that can operate on this data type through `TextViewClassProtocol` conformance.
/// Use `TextViewClassRef` only as an `unowned` reference to an existing `GtkTextViewClass` instance.
///

public struct TextViewClassRef: TextViewClassProtocol {
        /// Untyped pointer to the underlying `GtkTextViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextViewClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextViewClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextViewClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextViewClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextViewClass>?) {
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

    /// Reference intialiser for a related type that implements `TextViewClassProtocol`
    @inlinable init<T: TextViewClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextViewClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TextViewClass Record: TextViewClassProtocol extension (methods and fields)
public extension TextViewClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextViewClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextViewClass>! { return ptr?.assumingMemoryBound(to: GtkTextViewClass.self) }


    /// The object class structure needs to be the first
    @inlinable var parentClass: GtkWidgetClass {
        /// The object class structure needs to be the first
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var moveCursor is unavailable because move_cursor is void

    // var setAnchor is unavailable because set_anchor is void

    // var insertAtCursor is unavailable because insert_at_cursor is void

    // var deleteFromCursor is unavailable because delete_from_cursor is void

    // var backspace is unavailable because backspace is void

    // var cutClipboard is unavailable because cut_clipboard is void

    // var copyClipboard is unavailable because copy_clipboard is void

    // var pasteClipboard is unavailable because paste_clipboard is void

    // var toggleOverwrite is unavailable because toggle_overwrite is void

    // var createBuffer is unavailable because create_buffer is void

    // var snapshotLayer is unavailable because snapshot_layer is void

    // var extendSelection is unavailable because extend_selection is void

    // var insertEmoji is unavailable because insert_emoji is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for ToggleButton
public extension ToggleButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `ToggleButton`
    static var metatypeReference: GType { gtk_toggle_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkToggleButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkToggleButtonClass.self) }
    
    static var metatype: GtkToggleButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: ToggleButtonClassRef? { ToggleButtonClassRef(metatypePointer) }
    
    
}

// MARK: - ToggleButtonClass Record

/// The `ToggleButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkToggleButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToggleButtonClass`.
/// Alternatively, use `ToggleButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToggleButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkToggleButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkToggleButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkToggleButtonClass>! { get }

}

/// The `ToggleButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkToggleButtonClass` instance.
/// It exposes methods that can operate on this data type through `ToggleButtonClassProtocol` conformance.
/// Use `ToggleButtonClassRef` only as an `unowned` reference to an existing `GtkToggleButtonClass` instance.
///

public struct ToggleButtonClassRef: ToggleButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkToggleButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToggleButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkToggleButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkToggleButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkToggleButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkToggleButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `ToggleButtonClassProtocol`
    @inlinable init<T: ToggleButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToggleButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ToggleButtonClass Record: ToggleButtonClassProtocol extension (methods and fields)
public extension ToggleButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToggleButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkToggleButtonClass>! { return ptr?.assumingMemoryBound(to: GtkToggleButtonClass.self) }


    @inlinable var parentClass: GtkButtonClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var toggled is unavailable because toggled is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for TreeDragDest
public extension TreeDragDestIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `TreeDragDest`
    static var metatypeReference: GType { gtk_tree_drag_dest_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeDragDestIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeDragDestIface.self) }
    
    static var metatype: GtkTreeDragDestIface? { metatypePointer?.pointee } 
    
    static var wrapper: TreeDragDestIfaceRef? { TreeDragDestIfaceRef(metatypePointer) }
    
    
}

// MARK: - TreeDragDestIface Record

/// The `TreeDragDestIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkTreeDragDestIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeDragDestIface`.
/// Alternatively, use `TreeDragDestIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeDragDestIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeDragDestIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeDragDestIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeDragDestIface>! { get }

}

/// The `TreeDragDestIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeDragDestIface` instance.
/// It exposes methods that can operate on this data type through `TreeDragDestIfaceProtocol` conformance.
/// Use `TreeDragDestIfaceRef` only as an `unowned` reference to an existing `GtkTreeDragDestIface` instance.
///

public struct TreeDragDestIfaceRef: TreeDragDestIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeDragDestIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeDragDestIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeDragDestIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeDragDestIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeDragDestIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeDragDestIface>?) {
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

    /// Reference intialiser for a related type that implements `TreeDragDestIfaceProtocol`
    @inlinable init<T: TreeDragDestIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeDragDestIface Record: TreeDragDestIfaceProtocol extension (methods and fields)
public extension TreeDragDestIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeDragDestIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeDragDestIface>! { return ptr?.assumingMemoryBound(to: GtkTreeDragDestIface.self) }


    // var gIface is unavailable because g_iface is private

    // var dragDataReceived is unavailable because drag_data_received is void

    // var rowDropPossible is unavailable because row_drop_possible is void

}



/// Metatype/GType declaration for TreeDragSource
public extension TreeDragSourceIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `TreeDragSource`
    static var metatypeReference: GType { gtk_tree_drag_source_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeDragSourceIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeDragSourceIface.self) }
    
    static var metatype: GtkTreeDragSourceIface? { metatypePointer?.pointee } 
    
    static var wrapper: TreeDragSourceIfaceRef? { TreeDragSourceIfaceRef(metatypePointer) }
    
    
}

// MARK: - TreeDragSourceIface Record

/// The `TreeDragSourceIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkTreeDragSourceIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeDragSourceIface`.
/// Alternatively, use `TreeDragSourceIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeDragSourceIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeDragSourceIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeDragSourceIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeDragSourceIface>! { get }

}

/// The `TreeDragSourceIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeDragSourceIface` instance.
/// It exposes methods that can operate on this data type through `TreeDragSourceIfaceProtocol` conformance.
/// Use `TreeDragSourceIfaceRef` only as an `unowned` reference to an existing `GtkTreeDragSourceIface` instance.
///

public struct TreeDragSourceIfaceRef: TreeDragSourceIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeDragSourceIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeDragSourceIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeDragSourceIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeDragSourceIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeDragSourceIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeDragSourceIface>?) {
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

    /// Reference intialiser for a related type that implements `TreeDragSourceIfaceProtocol`
    @inlinable init<T: TreeDragSourceIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeDragSourceIface Record: TreeDragSourceIfaceProtocol extension (methods and fields)
public extension TreeDragSourceIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeDragSourceIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeDragSourceIface>! { return ptr?.assumingMemoryBound(to: GtkTreeDragSourceIface.self) }


    // var gIface is unavailable because g_iface is private

    // var rowDraggable is unavailable because row_draggable is void

    // var dragDataGet is unavailable because drag_data_get is void

    // var dragDataDelete is unavailable because drag_data_delete is void

}



/// Metatype/GType declaration for TreeExpander
public extension TreeExpanderClassRef {
    
    /// This getter returns the GLib type identifier registered for `TreeExpander`
    static var metatypeReference: GType { gtk_tree_expander_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeExpanderClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeExpanderClass.self) }
    
    static var metatype: GtkTreeExpanderClass? { metatypePointer?.pointee } 
    
    static var wrapper: TreeExpanderClassRef? { TreeExpanderClassRef(metatypePointer) }
    
    
}

// MARK: - TreeExpanderClass Record

/// The `TreeExpanderClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeExpanderClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeExpanderClass`.
/// Alternatively, use `TreeExpanderClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeExpanderClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeExpanderClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeExpanderClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeExpanderClass>! { get }

}

/// The `TreeExpanderClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeExpanderClass` instance.
/// It exposes methods that can operate on this data type through `TreeExpanderClassProtocol` conformance.
/// Use `TreeExpanderClassRef` only as an `unowned` reference to an existing `GtkTreeExpanderClass` instance.
///

public struct TreeExpanderClassRef: TreeExpanderClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeExpanderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeExpanderClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeExpanderClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeExpanderClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeExpanderClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeExpanderClass>?) {
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

    /// Reference intialiser for a related type that implements `TreeExpanderClassProtocol`
    @inlinable init<T: TreeExpanderClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeExpanderClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeExpanderClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeExpanderClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeExpanderClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeExpanderClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeExpanderClass Record: TreeExpanderClassProtocol extension (methods and fields)
public extension TreeExpanderClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeExpanderClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeExpanderClass>! { return ptr?.assumingMemoryBound(to: GtkTreeExpanderClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeIter` instance.
    var tree_iter_ptr: UnsafeMutablePointer<GtkTreeIter>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeIter>?) {
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

    /// Reference intialiser for a related type that implements `TreeIterProtocol`
    @inlinable init<T: TreeIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTreeIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTreeIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTreeIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTreeIter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkTreeIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TreeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTreeIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkTreeIter, cannot ref(tree_iter_ptr)
    }

    /// Reference intialiser for a related type that implements `TreeIterProtocol`
    /// `GtkTreeIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TreeIterProtocol`
    @inlinable public init<T: TreeIterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkTreeIter, cannot ref(tree_iter_ptr)
    }

    /// Do-nothing destructor for `GtkTreeIter`.
    deinit {
        // no reference counting for GtkTreeIter, cannot unref(tree_iter_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkTreeIter, cannot ref(tree_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkTreeIter, cannot ref(tree_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkTreeIter, cannot ref(tree_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkTreeIter, cannot ref(tree_iter_ptr)
    }



}

// MARK: no TreeIter properties

// MARK: no TreeIter signals

// MARK: TreeIter has no signals
// MARK: TreeIter Record: TreeIterProtocol extension (methods and fields)
public extension TreeIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeIter` instance.
    @inlinable var tree_iter_ptr: UnsafeMutablePointer<GtkTreeIter>! { return ptr?.assumingMemoryBound(to: GtkTreeIter.self) }

    /// Creates a dynamically allocated tree iterator as a copy of `iter`.
    /// 
    /// This function is not intended for use in applications,
    /// because you can just copy the structs by value
    /// (`GtkTreeIter new_iter = iter;`).
    /// You must free this iter with `gtk_tree_iter_free()`.
    @inlinable func copy() -> TreeIterRef! {
        guard let rv = TreeIterRef(gconstpointer: gconstpointer(gtk_tree_iter_copy(tree_iter_ptr))) else { return nil }
        return rv
    }

    /// Frees an iterator that has been allocated by `gtk_tree_iter_copy()`.
    /// 
    /// This function is mainly used for language bindings.
    @inlinable func free() {
        gtk_tree_iter_free(tree_iter_ptr)
    
    }

    /// Lets a set of row reference created by
    /// `gtk_tree_row_reference_new_proxy()` know that the
    /// model emitted the `GtkTreeModel::rows`-reordered signal.
    @inlinable func treeRowReferenceReordered<ObjectT: GLibObject.ObjectProtocol, TreePathT: TreePathProtocol>(proxy: ObjectT, path: TreePathT, newOrder: UnsafeMutablePointer<CInt>!) {
        gtk_tree_row_reference_reordered(proxy.object_ptr, path.tree_path_ptr, tree_iter_ptr, newOrder)
    
    }

    /// a unique stamp to catch invalid iterators
    @inlinable var stamp: gint {
        /// a unique stamp to catch invalid iterators
        get {
            let rv = tree_iter_ptr.pointee.stamp
            return rv
        }
        /// a unique stamp to catch invalid iterators
         set {
            tree_iter_ptr.pointee.stamp = newValue
        }
    }

    /// model-specific data
    @inlinable var userData: gpointer! {
        /// model-specific data
        get {
            let rv = tree_iter_ptr.pointee.user_data
            return rv
        }
        /// model-specific data
         set {
            tree_iter_ptr.pointee.user_data = newValue
        }
    }

    /// model-specific data
    @inlinable var userData2: gpointer! {
        /// model-specific data
        get {
            let rv = tree_iter_ptr.pointee.user_data2
            return rv
        }
        /// model-specific data
         set {
            tree_iter_ptr.pointee.user_data2 = newValue
        }
    }

    /// model-specific data
    @inlinable var userData3: gpointer! {
        /// model-specific data
        get {
            let rv = tree_iter_ptr.pointee.user_data3
            return rv
        }
        /// model-specific data
         set {
            tree_iter_ptr.pointee.user_data3 = newValue
        }
    }

}



/// Metatype/GType declaration for TreeListModel
public extension TreeListModelClassRef {
    
    /// This getter returns the GLib type identifier registered for `TreeListModel`
    static var metatypeReference: GType { gtk_tree_list_model_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeListModelClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeListModelClass.self) }
    
    static var metatype: GtkTreeListModelClass? { metatypePointer?.pointee } 
    
    static var wrapper: TreeListModelClassRef? { TreeListModelClassRef(metatypePointer) }
    
    
}

// MARK: - TreeListModelClass Record

/// The `TreeListModelClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeListModelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeListModelClass`.
/// Alternatively, use `TreeListModelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeListModelClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeListModelClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeListModelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeListModelClass>! { get }

}

/// The `TreeListModelClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeListModelClass` instance.
/// It exposes methods that can operate on this data type through `TreeListModelClassProtocol` conformance.
/// Use `TreeListModelClassRef` only as an `unowned` reference to an existing `GtkTreeListModelClass` instance.
///

public struct TreeListModelClassRef: TreeListModelClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeListModelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeListModelClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeListModelClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeListModelClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeListModelClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeListModelClass>?) {
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

    /// Reference intialiser for a related type that implements `TreeListModelClassProtocol`
    @inlinable init<T: TreeListModelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeListModelClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeListModelClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeListModelClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeListModelClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeListModelClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeListModelClass Record: TreeListModelClassProtocol extension (methods and fields)
public extension TreeListModelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeListModelClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeListModelClass>! { return ptr?.assumingMemoryBound(to: GtkTreeListModelClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for TreeListRow
public extension TreeListRowClassRef {
    
    /// This getter returns the GLib type identifier registered for `TreeListRow`
    static var metatypeReference: GType { gtk_tree_list_row_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeListRowClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeListRowClass.self) }
    
    static var metatype: GtkTreeListRowClass? { metatypePointer?.pointee } 
    
    static var wrapper: TreeListRowClassRef? { TreeListRowClassRef(metatypePointer) }
    
    
}

// MARK: - TreeListRowClass Record

/// The `TreeListRowClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeListRowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeListRowClass`.
/// Alternatively, use `TreeListRowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeListRowClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeListRowClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeListRowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeListRowClass>! { get }

}

/// The `TreeListRowClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeListRowClass` instance.
/// It exposes methods that can operate on this data type through `TreeListRowClassProtocol` conformance.
/// Use `TreeListRowClassRef` only as an `unowned` reference to an existing `GtkTreeListRowClass` instance.
///

public struct TreeListRowClassRef: TreeListRowClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeListRowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeListRowClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeListRowClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeListRowClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeListRowClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeListRowClass>?) {
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

    /// Reference intialiser for a related type that implements `TreeListRowClassProtocol`
    @inlinable init<T: TreeListRowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeListRowClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeListRowClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeListRowClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeListRowClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeListRowClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeListRowClass Record: TreeListRowClassProtocol extension (methods and fields)
public extension TreeListRowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeListRowClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeListRowClass>! { return ptr?.assumingMemoryBound(to: GtkTreeListRowClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for TreeListRowSorter
public extension TreeListRowSorterClassRef {
    
    /// This getter returns the GLib type identifier registered for `TreeListRowSorter`
    static var metatypeReference: GType { gtk_tree_list_row_sorter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeListRowSorterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeListRowSorterClass.self) }
    
    static var metatype: GtkTreeListRowSorterClass? { metatypePointer?.pointee } 
    
    static var wrapper: TreeListRowSorterClassRef? { TreeListRowSorterClassRef(metatypePointer) }
    
    
}

// MARK: - TreeListRowSorterClass Record

/// The `TreeListRowSorterClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeListRowSorterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeListRowSorterClass`.
/// Alternatively, use `TreeListRowSorterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeListRowSorterClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeListRowSorterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeListRowSorterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeListRowSorterClass>! { get }

}

/// The `TreeListRowSorterClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeListRowSorterClass` instance.
/// It exposes methods that can operate on this data type through `TreeListRowSorterClassProtocol` conformance.
/// Use `TreeListRowSorterClassRef` only as an `unowned` reference to an existing `GtkTreeListRowSorterClass` instance.
///

public struct TreeListRowSorterClassRef: TreeListRowSorterClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeListRowSorterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeListRowSorterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeListRowSorterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeListRowSorterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeListRowSorterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeListRowSorterClass>?) {
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

    /// Reference intialiser for a related type that implements `TreeListRowSorterClassProtocol`
    @inlinable init<T: TreeListRowSorterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeListRowSorterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeListRowSorterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeListRowSorterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeListRowSorterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeListRowSorterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeListRowSorterClass Record: TreeListRowSorterClassProtocol extension (methods and fields)
public extension TreeListRowSorterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeListRowSorterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeListRowSorterClass>! { return ptr?.assumingMemoryBound(to: GtkTreeListRowSorterClass.self) }


    @inlinable var parentClass: GtkSorterClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for TreeModelFilter
public extension TreeModelFilterClassRef {
    
    /// This getter returns the GLib type identifier registered for `TreeModelFilter`
    static var metatypeReference: GType { gtk_tree_model_filter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeModelFilterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeModelFilterClass.self) }
    
    static var metatype: GtkTreeModelFilterClass? { metatypePointer?.pointee } 
    
    static var wrapper: TreeModelFilterClassRef? { TreeModelFilterClassRef(metatypePointer) }
    
    
}

// MARK: - TreeModelFilterClass Record

/// The `TreeModelFilterClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeModelFilterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeModelFilterClass`.
/// Alternatively, use `TreeModelFilterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeModelFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeModelFilterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeModelFilterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelFilterClass>! { get }

}

/// The `TreeModelFilterClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeModelFilterClass` instance.
/// It exposes methods that can operate on this data type through `TreeModelFilterClassProtocol` conformance.
/// Use `TreeModelFilterClassRef` only as an `unowned` reference to an existing `GtkTreeModelFilterClass` instance.
///

public struct TreeModelFilterClassRef: TreeModelFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeModelFilterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeModelFilterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeModelFilterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeModelFilterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeModelFilterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeModelFilterClass>?) {
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

    /// Reference intialiser for a related type that implements `TreeModelFilterClassProtocol`
    @inlinable init<T: TreeModelFilterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelFilterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeModelFilterClass Record: TreeModelFilterClassProtocol extension (methods and fields)
public extension TreeModelFilterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeModelFilterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeModelFilterClass>! { return ptr?.assumingMemoryBound(to: GtkTreeModelFilterClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var visible is unavailable because visible is void

    // var modify is unavailable because modify is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for TreeModel
public extension TreeModelIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `TreeModel`
    static var metatypeReference: GType { gtk_tree_model_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeModelIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeModelIface.self) }
    
    static var metatype: GtkTreeModelIface? { metatypePointer?.pointee } 
    
    static var wrapper: TreeModelIfaceRef? { TreeModelIfaceRef(metatypePointer) }
    
    
}

// MARK: - TreeModelIface Record

/// The `TreeModelIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkTreeModelIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeModelIface`.
/// Alternatively, use `TreeModelIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeModelIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeModelIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeModelIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelIface>! { get }

}

/// The `TreeModelIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeModelIface` instance.
/// It exposes methods that can operate on this data type through `TreeModelIfaceProtocol` conformance.
/// Use `TreeModelIfaceRef` only as an `unowned` reference to an existing `GtkTreeModelIface` instance.
///

public struct TreeModelIfaceRef: TreeModelIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeModelIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeModelIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeModelIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeModelIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeModelIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeModelIface>?) {
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

    /// Reference intialiser for a related type that implements `TreeModelIfaceProtocol`
    @inlinable init<T: TreeModelIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeModelIface Record: TreeModelIfaceProtocol extension (methods and fields)
public extension TreeModelIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeModelIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeModelIface>! { return ptr?.assumingMemoryBound(to: GtkTreeModelIface.self) }


    // var gIface is unavailable because g_iface is private

    // var rowChanged is unavailable because row_changed is void

    // var rowInserted is unavailable because row_inserted is void

    // var rowHasChildToggled is unavailable because row_has_child_toggled is void

    // var rowDeleted is unavailable because row_deleted is void

    // var rowsReordered is unavailable because rows_reordered is void

    // var getFlags is unavailable because get_flags is void

    // var getNColumns is unavailable because get_n_columns is void

    // var getColumnType is unavailable because get_column_type is void

    // var getIter is unavailable because get_iter is void

    // var getPath is unavailable because get_path is void

    // var getValue is unavailable because get_value is void

    // var iterNext is unavailable because iter_next is void

    // var iterPrevious is unavailable because iter_previous is void

    // var iterChildren is unavailable because iter_children is void

    // var iterHasChild is unavailable because iter_has_child is void

    // var iterNChildren is unavailable because iter_n_children is void

    // var iterNthChild is unavailable because iter_nth_child is void

    // var iterParent is unavailable because iter_parent is void

    // var refNode is unavailable because ref_node is void

    // var unrefNode is unavailable because unref_node is void

}



/// Metatype/GType declaration for TreeModelSort
public extension TreeModelSortClassRef {
    
    /// This getter returns the GLib type identifier registered for `TreeModelSort`
    static var metatypeReference: GType { gtk_tree_model_sort_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeModelSortClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeModelSortClass.self) }
    
    static var metatype: GtkTreeModelSortClass? { metatypePointer?.pointee } 
    
    static var wrapper: TreeModelSortClassRef? { TreeModelSortClassRef(metatypePointer) }
    
    
}

// MARK: - TreeModelSortClass Record

/// The `TreeModelSortClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeModelSortClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeModelSortClass`.
/// Alternatively, use `TreeModelSortClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeModelSortClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeModelSortClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeModelSortClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeModelSortClass>! { get }

}

/// The `TreeModelSortClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeModelSortClass` instance.
/// It exposes methods that can operate on this data type through `TreeModelSortClassProtocol` conformance.
/// Use `TreeModelSortClassRef` only as an `unowned` reference to an existing `GtkTreeModelSortClass` instance.
///

public struct TreeModelSortClassRef: TreeModelSortClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeModelSortClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeModelSortClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeModelSortClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeModelSortClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeModelSortClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeModelSortClass>?) {
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

    /// Reference intialiser for a related type that implements `TreeModelSortClassProtocol`
    @inlinable init<T: TreeModelSortClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelSortClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeModelSortClass Record: TreeModelSortClassProtocol extension (methods and fields)
public extension TreeModelSortClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeModelSortClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeModelSortClass>! { return ptr?.assumingMemoryBound(to: GtkTreeModelSortClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



// MARK: - TreePath Record

/// The `TreePathProtocol` protocol exposes the methods and properties of an underlying `GtkTreePath` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreePath`.
/// Alternatively, use `TreePathRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreePathProtocol {
        /// Untyped pointer to the underlying `GtkTreePath` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreePath` instance.
    var tree_path_ptr: UnsafeMutablePointer<GtkTreePath>! { get }

}

/// The `TreePathRef` type acts as a lightweight Swift reference to an underlying `GtkTreePath` instance.
/// It exposes methods that can operate on this data type through `TreePathProtocol` conformance.
/// Use `TreePathRef` only as an `unowned` reference to an existing `GtkTreePath` instance.
///

public struct TreePathRef: TreePathProtocol {
        /// Untyped pointer to the underlying `GtkTreePath` instance.
    /// For type-safe access, use the generated, typed pointer `tree_path_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreePathRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreePath>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreePath>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreePath>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreePath>?) {
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

    /// Reference intialiser for a related type that implements `TreePathProtocol`
    @inlinable init<T: TreePathProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkTreePath`-struct.
    /// This refers to a row.
    @inlinable init() {
        let rv = gtk_tree_path_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newFromIndices() is not available because it has a varargs (...) parameter!


    /// Creates a new path with the given `indices` array of `length`.
    @inlinable init(indicesv indices: UnsafeMutablePointer<CInt>!, length: Int) {
        let rv = gtk_tree_path_new_from_indicesv(indices, gsize(length))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkTreePath`-struct initialized to `path`.
    /// 
    /// `path` is expected to be a colon separated list of numbers.
    /// For example, the string “10:4:0” would create a path of depth
    /// 3 pointing to the 11th child of the root node, the 5th
    /// child of that 11th child, and the 1st child of that 5th child.
    /// If an invalid path string is passed in, `nil` is returned.
    @inlinable init(string path: UnsafePointer<CChar>!) {
        let rv = gtk_tree_path_new_from_string(path)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkTreePath`-struct.
    /// 
    /// The string representation of this path is “0”.
    @inlinable static func newFirst() -> TreePathRef! {
        guard let rv = TreePathRef(gconstpointer: gconstpointer(gtk_tree_path_new_first())) else { return nil }
        return rv
    }


    // *** newFromIndices() is not available because it has a varargs (...) parameter!


    /// Creates a new path with the given `indices` array of `length`.
    @inlinable static func newFrom(indicesv indices: UnsafeMutablePointer<CInt>!, length: Int) -> TreePathRef! {
        guard let rv = TreePathRef(gconstpointer: gconstpointer(gtk_tree_path_new_from_indicesv(indices, gsize(length)))) else { return nil }
        return rv
    }

    /// Creates a new `GtkTreePath`-struct initialized to `path`.
    /// 
    /// `path` is expected to be a colon separated list of numbers.
    /// For example, the string “10:4:0” would create a path of depth
    /// 3 pointing to the 11th child of the root node, the 5th
    /// child of that 11th child, and the 1st child of that 5th child.
    /// If an invalid path string is passed in, `nil` is returned.
    @inlinable static func newFrom(string path: UnsafePointer<CChar>!) -> TreePathRef! {
        guard let rv = TreePathRef(gconstpointer: gconstpointer(gtk_tree_path_new_from_string(path))) else { return nil }
        return rv
    }
}

/// The `TreePath` type acts as an owner of an underlying `GtkTreePath` instance.
/// It provides the methods that can operate on this data type through `TreePathProtocol` conformance.
/// Use `TreePath` as a strong reference or owner of a `GtkTreePath` instance.
///

open class TreePath: TreePathProtocol {
        /// Untyped pointer to the underlying `GtkTreePath` instance.
    /// For type-safe access, use the generated, typed pointer `tree_path_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreePath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTreePath>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreePath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTreePath>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreePath` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreePath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreePath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTreePath>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreePath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTreePath>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkTreePath` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TreePath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTreePath>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkTreePath, cannot ref(tree_path_ptr)
    }

    /// Reference intialiser for a related type that implements `TreePathProtocol`
    /// `GtkTreePath` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TreePathProtocol`
    @inlinable public init<T: TreePathProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkTreePath, cannot ref(tree_path_ptr)
    }

    /// Do-nothing destructor for `GtkTreePath`.
    deinit {
        // no reference counting for GtkTreePath, cannot unref(tree_path_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkTreePath, cannot ref(tree_path_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkTreePath, cannot ref(tree_path_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkTreePath, cannot ref(tree_path_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreePathProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkTreePath, cannot ref(tree_path_ptr)
    }

    /// Creates a new `GtkTreePath`-struct.
    /// This refers to a row.
    @inlinable public init() {
        let rv = gtk_tree_path_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newFromIndices() is not available because it has a varargs (...) parameter!


    /// Creates a new path with the given `indices` array of `length`.
    @inlinable public init(indicesv indices: UnsafeMutablePointer<CInt>!, length: Int) {
        let rv = gtk_tree_path_new_from_indicesv(indices, gsize(length))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkTreePath`-struct initialized to `path`.
    /// 
    /// `path` is expected to be a colon separated list of numbers.
    /// For example, the string “10:4:0” would create a path of depth
    /// 3 pointing to the 11th child of the root node, the 5th
    /// child of that 11th child, and the 1st child of that 5th child.
    /// If an invalid path string is passed in, `nil` is returned.
    @inlinable public init(string path: UnsafePointer<CChar>!) {
        let rv = gtk_tree_path_new_from_string(path)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkTreePath`-struct.
    /// 
    /// The string representation of this path is “0”.
    @inlinable public static func newFirst() -> TreePath! {
        guard let rv = TreePath(gconstpointer: gconstpointer(gtk_tree_path_new_first())) else { return nil }
        return rv
    }


    // *** newFromIndices() is not available because it has a varargs (...) parameter!


    /// Creates a new path with the given `indices` array of `length`.
    @inlinable public static func newFrom(indicesv indices: UnsafeMutablePointer<CInt>!, length: Int) -> TreePath! {
        guard let rv = TreePath(gconstpointer: gconstpointer(gtk_tree_path_new_from_indicesv(indices, gsize(length)))) else { return nil }
        return rv
    }

    /// Creates a new `GtkTreePath`-struct initialized to `path`.
    /// 
    /// `path` is expected to be a colon separated list of numbers.
    /// For example, the string “10:4:0” would create a path of depth
    /// 3 pointing to the 11th child of the root node, the 5th
    /// child of that 11th child, and the 1st child of that 5th child.
    /// If an invalid path string is passed in, `nil` is returned.
    @inlinable public static func newFrom(string path: UnsafePointer<CChar>!) -> TreePath! {
        guard let rv = TreePath(gconstpointer: gconstpointer(gtk_tree_path_new_from_string(path))) else { return nil }
        return rv
    }

}

// MARK: no TreePath properties

// MARK: no TreePath signals

// MARK: TreePath has no signals
// MARK: TreePath Record: TreePathProtocol extension (methods and fields)
public extension TreePathProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreePath` instance.
    @inlinable var tree_path_ptr: UnsafeMutablePointer<GtkTreePath>! { return ptr?.assumingMemoryBound(to: GtkTreePath.self) }

    /// Appends a new index to a path.
    /// 
    /// As a result, the depth of the path is increased.
    @inlinable func appendIndex(index_: Int) {
        gtk_tree_path_append_index(tree_path_ptr, gint(index_))
    
    }

    /// Compares two paths.
    /// 
    /// If `a` appears before `b` in a tree, then -1 is returned.
    /// If `b` appears before `a`, then 1 is returned.
    /// If the two nodes are equal, then 0 is returned.
    @inlinable func compare<TreePathT: TreePathProtocol>(b: TreePathT) -> Int {
        let rv = Int(gtk_tree_path_compare(tree_path_ptr, b.tree_path_ptr))
        return rv
    }

    /// Creates a new `GtkTreePath`-struct as a copy of `path`.
    @inlinable func copy() -> TreePathRef! {
        guard let rv = TreePathRef(gconstpointer: gconstpointer(gtk_tree_path_copy(tree_path_ptr))) else { return nil }
        return rv
    }

    /// Moves `path` to point to the first child of the current path.
    @inlinable func down() {
        gtk_tree_path_down(tree_path_ptr)
    
    }

    /// Frees `path`. If `path` is `nil`, it simply returns.
    @inlinable func free() {
        gtk_tree_path_free(tree_path_ptr)
    
    }

    /// Returns the current depth of `path`.
    @inlinable func getDepth() -> Int {
        let rv = Int(gtk_tree_path_get_depth(tree_path_ptr))
        return rv
    }

    /// Returns the current indices of `path`.
    /// 
    /// This is an array of integers, each representing a node in a tree.
    /// This value should not be freed.
    /// 
    /// The length of the array can be obtained with `gtk_tree_path_get_depth()`.
    @inlinable func getIndices() -> UnsafeMutablePointer<gint>? {
        let rv = gtk_tree_path_get_indices(tree_path_ptr)
        return rv
    }

    /// Returns the current indices of `path`.
    /// 
    /// This is an array of integers, each representing a node in a tree.
    /// It also returns the number of elements in the array.
    /// The array should not be freed.
    @inlinable func getIndicesWith(depth: UnsafeMutablePointer<gint>! = nil) -> UnsafeMutablePointer<CInt>! {
        let rv = gtk_tree_path_get_indices_with_depth(tree_path_ptr, depth)
        return rv
    }

    /// Returns `true` if `descendant` is a descendant of `path`.
    @inlinable func isAncestor<TreePathT: TreePathProtocol>(descendant: TreePathT) -> Bool {
        let rv = ((gtk_tree_path_is_ancestor(tree_path_ptr, descendant.tree_path_ptr)) != 0)
        return rv
    }

    /// Returns `true` if `path` is a descendant of `ancestor`.
    @inlinable func isDescendant<TreePathT: TreePathProtocol>(ancestor: TreePathT) -> Bool {
        let rv = ((gtk_tree_path_is_descendant(tree_path_ptr, ancestor.tree_path_ptr)) != 0)
        return rv
    }

    /// Moves the `path` to point to the next node at the current depth.
    @inlinable func next() {
        gtk_tree_path_next(tree_path_ptr)
    
    }

    /// Prepends a new index to a path.
    /// 
    /// As a result, the depth of the path is increased.
    @inlinable func prependIndex(index_: Int) {
        gtk_tree_path_prepend_index(tree_path_ptr, gint(index_))
    
    }

    /// Moves the `path` to point to the previous node at the
    /// current depth, if it exists.
    @inlinable func prev() -> Bool {
        let rv = ((gtk_tree_path_prev(tree_path_ptr)) != 0)
        return rv
    }

    /// Generates a string representation of the path.
    /// 
    /// This string is a “:” separated list of numbers.
    /// For example, “4:10:0:3” would be an acceptable
    /// return value for this string. If the path has
    /// depth 0, `nil` is returned.
    @inlinable func toString() -> String! {
        let rv = gtk_tree_path_to_string(tree_path_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Moves the `path` to point to its parent node, if it has a parent.
    @inlinable func up() -> Bool {
        let rv = ((gtk_tree_path_up(tree_path_ptr)) != 0)
        return rv
    }

    /// Creates a content provider for dragging `path` from `tree_model`.
    @inlinable func treeCreateRowDragContent<TreeModelT: TreeModelProtocol>(treeModel: TreeModelT) -> Gdk.ContentProviderRef! {
        let rv = Gdk.ContentProviderRef(gtk_tree_create_row_drag_content(treeModel.tree_model_ptr, tree_path_ptr))
        return rv
    }

    /// Lets a set of row reference created by
    /// `gtk_tree_row_reference_new_proxy()` know that the
    /// model emitted the `GtkTreeModel::row`-deleted signal.
    @inlinable func treeRowReferenceDeleted<ObjectT: GLibObject.ObjectProtocol>(proxy: ObjectT) {
        gtk_tree_row_reference_deleted(proxy.object_ptr, tree_path_ptr)
    
    }

    /// Lets a set of row reference created by
    /// `gtk_tree_row_reference_new_proxy()` know that the
    /// model emitted the `GtkTreeModel::row`-inserted signal.
    @inlinable func treeRowReferenceInserted<ObjectT: GLibObject.ObjectProtocol>(proxy: ObjectT) {
        gtk_tree_row_reference_inserted(proxy.object_ptr, tree_path_ptr)
    
    }

    /// Lets a set of row reference created by
    /// `gtk_tree_row_reference_new_proxy()` know that the
    /// model emitted the `GtkTreeModel::rows`-reordered signal.
    @inlinable func treeRowReferenceReordered<ObjectT: GLibObject.ObjectProtocol, TreeIterT: TreeIterProtocol>(proxy: ObjectT, iter: TreeIterT, newOrder: UnsafeMutablePointer<CInt>!) {
        gtk_tree_row_reference_reordered(proxy.object_ptr, tree_path_ptr, iter.tree_iter_ptr, newOrder)
    
    }
    /// Returns the current depth of `path`.
    @inlinable var depth: Int {
        /// Returns the current depth of `path`.
        get {
            let rv = Int(gtk_tree_path_get_depth(tree_path_ptr))
            return rv
        }
    }

    /// Returns the current indices of `path`.
    /// 
    /// This is an array of integers, each representing a node in a tree.
    /// This value should not be freed.
    /// 
    /// The length of the array can be obtained with `gtk_tree_path_get_depth()`.
    @inlinable var indices: UnsafeMutablePointer<gint>? {
        /// Returns the current indices of `path`.
        /// 
        /// This is an array of integers, each representing a node in a tree.
        /// This value should not be freed.
        /// 
        /// The length of the array can be obtained with `gtk_tree_path_get_depth()`.
        get {
            let rv = gtk_tree_path_get_indices(tree_path_ptr)
            return rv
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
/// new GtkTreeRowReference with `gtk_tree_row_reference_new()`.
public protocol TreeRowReferenceProtocol {
        /// Untyped pointer to the underlying `GtkTreeRowReference` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeRowReference` instance.
    var tree_row_reference_ptr: UnsafeMutablePointer<GtkTreeRowReference>! { get }

}

/// The `TreeRowReferenceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeRowReference` instance.
/// It exposes methods that can operate on this data type through `TreeRowReferenceProtocol` conformance.
/// Use `TreeRowReferenceRef` only as an `unowned` reference to an existing `GtkTreeRowReference` instance.
///
/// A GtkTreeRowReference tracks model changes so that it always refers to the
/// same row (a `GtkTreePath` refers to a position, not a fixed row). Create a
/// new GtkTreeRowReference with `gtk_tree_row_reference_new()`.
public struct TreeRowReferenceRef: TreeRowReferenceProtocol {
        /// Untyped pointer to the underlying `GtkTreeRowReference` instance.
    /// For type-safe access, use the generated, typed pointer `tree_row_reference_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeRowReferenceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeRowReference>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeRowReference>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeRowReference>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeRowReference>?) {
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

    /// Reference intialiser for a related type that implements `TreeRowReferenceProtocol`
    @inlinable init<T: TreeRowReferenceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. Any changes that occur on `model` are
    /// propagated, and the path is updated appropriately. If
    /// `path` isn’t a valid path in `model`, then `nil` is returned.
    @inlinable init<TreeModelT: TreeModelProtocol, TreePathT: TreePathProtocol>( model: TreeModelT, path: TreePathT) {
        let rv = gtk_tree_row_reference_new(model.tree_model_ptr, path.tree_path_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// You do not need to use this function.
    /// 
    /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. If `path` isn’t a valid
    /// path in `model`, then `nil` is returned. However, unlike
    /// references created with `gtk_tree_row_reference_new()`, it
    /// does not listen to the model for changes. The creator of
    /// the row reference must do this explicitly using
    /// `gtk_tree_row_reference_inserted()`, `gtk_tree_row_reference_deleted()`,
    /// `gtk_tree_row_reference_reordered()`.
    /// 
    /// These functions must be called exactly once per proxy when the
    /// corresponding signal on the model is emitted. This single call
    /// updates all row references for that proxy. Since built-in GTK
    /// objects like `GtkTreeView` already use this mechanism internally,
    /// using them as the proxy object will produce unpredictable results.
    /// Further more, passing the same object as `model` and `proxy`
    /// doesn’t work for reasons of internal implementation.
    /// 
    /// This type of row reference is primarily meant by structures that
    /// need to carefully monitor exactly when a row reference updates
    /// itself, and is not generally needed by most applications.
    @inlinable init<ObjectT: GLibObject.ObjectProtocol, TreeModelT: TreeModelProtocol, TreePathT: TreePathProtocol>(proxy: ObjectT, model: TreeModelT, path: TreePathT) {
        let rv = gtk_tree_row_reference_new_proxy(proxy.object_ptr, model.tree_model_ptr, path.tree_path_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// You do not need to use this function.
    /// 
    /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. If `path` isn’t a valid
    /// path in `model`, then `nil` is returned. However, unlike
    /// references created with `gtk_tree_row_reference_new()`, it
    /// does not listen to the model for changes. The creator of
    /// the row reference must do this explicitly using
    /// `gtk_tree_row_reference_inserted()`, `gtk_tree_row_reference_deleted()`,
    /// `gtk_tree_row_reference_reordered()`.
    /// 
    /// These functions must be called exactly once per proxy when the
    /// corresponding signal on the model is emitted. This single call
    /// updates all row references for that proxy. Since built-in GTK
    /// objects like `GtkTreeView` already use this mechanism internally,
    /// using them as the proxy object will produce unpredictable results.
    /// Further more, passing the same object as `model` and `proxy`
    /// doesn’t work for reasons of internal implementation.
    /// 
    /// This type of row reference is primarily meant by structures that
    /// need to carefully monitor exactly when a row reference updates
    /// itself, and is not generally needed by most applications.
    @inlinable static func new<ObjectT: GLibObject.ObjectProtocol, TreeModelT: TreeModelProtocol, TreePathT: TreePathProtocol>(proxy: ObjectT, model: TreeModelT, path: TreePathT) -> TreeRowReferenceRef! {
        guard let rv = TreeRowReferenceRef(gconstpointer: gconstpointer(gtk_tree_row_reference_new_proxy(proxy.object_ptr, model.tree_model_ptr, path.tree_path_ptr))) else { return nil }
        return rv
    }
}

/// The `TreeRowReference` type acts as an owner of an underlying `GtkTreeRowReference` instance.
/// It provides the methods that can operate on this data type through `TreeRowReferenceProtocol` conformance.
/// Use `TreeRowReference` as a strong reference or owner of a `GtkTreeRowReference` instance.
///
/// A GtkTreeRowReference tracks model changes so that it always refers to the
/// same row (a `GtkTreePath` refers to a position, not a fixed row). Create a
/// new GtkTreeRowReference with `gtk_tree_row_reference_new()`.
open class TreeRowReference: TreeRowReferenceProtocol {
        /// Untyped pointer to the underlying `GtkTreeRowReference` instance.
    /// For type-safe access, use the generated, typed pointer `tree_row_reference_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeRowReference` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTreeRowReference>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeRowReference` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTreeRowReference>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeRowReference` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeRowReference` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeRowReference` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTreeRowReference>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeRowReference` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTreeRowReference>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkTreeRowReference` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TreeRowReference` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTreeRowReference>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkTreeRowReference, cannot ref(tree_row_reference_ptr)
    }

    /// Reference intialiser for a related type that implements `TreeRowReferenceProtocol`
    /// `GtkTreeRowReference` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TreeRowReferenceProtocol`
    @inlinable public init<T: TreeRowReferenceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkTreeRowReference, cannot ref(tree_row_reference_ptr)
    }

    /// Do-nothing destructor for `GtkTreeRowReference`.
    deinit {
        // no reference counting for GtkTreeRowReference, cannot unref(tree_row_reference_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkTreeRowReference, cannot ref(tree_row_reference_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkTreeRowReference, cannot ref(tree_row_reference_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkTreeRowReference, cannot ref(tree_row_reference_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeRowReferenceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkTreeRowReference, cannot ref(tree_row_reference_ptr)
    }

    /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. Any changes that occur on `model` are
    /// propagated, and the path is updated appropriately. If
    /// `path` isn’t a valid path in `model`, then `nil` is returned.
    @inlinable public init<TreeModelT: TreeModelProtocol, TreePathT: TreePathProtocol>( model: TreeModelT, path: TreePathT) {
        let rv = gtk_tree_row_reference_new(model.tree_model_ptr, path.tree_path_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// You do not need to use this function.
    /// 
    /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. If `path` isn’t a valid
    /// path in `model`, then `nil` is returned. However, unlike
    /// references created with `gtk_tree_row_reference_new()`, it
    /// does not listen to the model for changes. The creator of
    /// the row reference must do this explicitly using
    /// `gtk_tree_row_reference_inserted()`, `gtk_tree_row_reference_deleted()`,
    /// `gtk_tree_row_reference_reordered()`.
    /// 
    /// These functions must be called exactly once per proxy when the
    /// corresponding signal on the model is emitted. This single call
    /// updates all row references for that proxy. Since built-in GTK
    /// objects like `GtkTreeView` already use this mechanism internally,
    /// using them as the proxy object will produce unpredictable results.
    /// Further more, passing the same object as `model` and `proxy`
    /// doesn’t work for reasons of internal implementation.
    /// 
    /// This type of row reference is primarily meant by structures that
    /// need to carefully monitor exactly when a row reference updates
    /// itself, and is not generally needed by most applications.
    @inlinable public init<ObjectT: GLibObject.ObjectProtocol, TreeModelT: TreeModelProtocol, TreePathT: TreePathProtocol>(proxy: ObjectT, model: TreeModelT, path: TreePathT) {
        let rv = gtk_tree_row_reference_new_proxy(proxy.object_ptr, model.tree_model_ptr, path.tree_path_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// You do not need to use this function.
    /// 
    /// Creates a row reference based on `path`.
    /// 
    /// This reference will keep pointing to the node pointed to
    /// by `path`, so long as it exists. If `path` isn’t a valid
    /// path in `model`, then `nil` is returned. However, unlike
    /// references created with `gtk_tree_row_reference_new()`, it
    /// does not listen to the model for changes. The creator of
    /// the row reference must do this explicitly using
    /// `gtk_tree_row_reference_inserted()`, `gtk_tree_row_reference_deleted()`,
    /// `gtk_tree_row_reference_reordered()`.
    /// 
    /// These functions must be called exactly once per proxy when the
    /// corresponding signal on the model is emitted. This single call
    /// updates all row references for that proxy. Since built-in GTK
    /// objects like `GtkTreeView` already use this mechanism internally,
    /// using them as the proxy object will produce unpredictable results.
    /// Further more, passing the same object as `model` and `proxy`
    /// doesn’t work for reasons of internal implementation.
    /// 
    /// This type of row reference is primarily meant by structures that
    /// need to carefully monitor exactly when a row reference updates
    /// itself, and is not generally needed by most applications.
    @inlinable public static func new<ObjectT: GLibObject.ObjectProtocol, TreeModelT: TreeModelProtocol, TreePathT: TreePathProtocol>(proxy: ObjectT, model: TreeModelT, path: TreePathT) -> TreeRowReference! {
        guard let rv = TreeRowReference(gconstpointer: gconstpointer(gtk_tree_row_reference_new_proxy(proxy.object_ptr, model.tree_model_ptr, path.tree_path_ptr))) else { return nil }
        return rv
    }

}

// MARK: no TreeRowReference properties

// MARK: no TreeRowReference signals

// MARK: TreeRowReference has no signals
// MARK: TreeRowReference Record: TreeRowReferenceProtocol extension (methods and fields)
public extension TreeRowReferenceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeRowReference` instance.
    @inlinable var tree_row_reference_ptr: UnsafeMutablePointer<GtkTreeRowReference>! { return ptr?.assumingMemoryBound(to: GtkTreeRowReference.self) }

    /// Copies a `GtkTreeRowReference`.
    @inlinable func copy() -> TreeRowReferenceRef! {
        guard let rv = TreeRowReferenceRef(gconstpointer: gconstpointer(gtk_tree_row_reference_copy(tree_row_reference_ptr))) else { return nil }
        return rv
    }

    /// Free’s `reference`. `reference` may be `nil`
    @inlinable func free() {
        gtk_tree_row_reference_free(tree_row_reference_ptr)
    
    }

    /// Returns the model that the row reference is monitoring.
    @inlinable func getModel() -> TreeModelRef! {
        let rv = TreeModelRef(gconstpointer: gconstpointer(gtk_tree_row_reference_get_model(tree_row_reference_ptr)))
        return rv
    }

    /// Returns a path that the row reference currently points to,
    /// or `nil` if the path pointed to is no longer valid.
    @inlinable func getPath() -> TreePathRef! {
        let rv = TreePathRef(gconstpointer: gconstpointer(gtk_tree_row_reference_get_path(tree_row_reference_ptr)))
        return rv
    }

    /// Returns `true` if the `reference` is non-`nil` and refers to
    /// a current valid path.
    @inlinable func valid() -> Bool {
        let rv = ((gtk_tree_row_reference_valid(tree_row_reference_ptr)) != 0)
        return rv
    }
    /// Returns the model that the row reference is monitoring.
    @inlinable var model: TreeModelRef! {
        /// Returns the model that the row reference is monitoring.
        get {
            let rv = TreeModelRef(gconstpointer: gconstpointer(gtk_tree_row_reference_get_model(tree_row_reference_ptr)))
            return rv
        }
    }

    /// Returns a path that the row reference currently points to,
    /// or `nil` if the path pointed to is no longer valid.
    @inlinable var path: TreePathRef! {
        /// Returns a path that the row reference currently points to,
        /// or `nil` if the path pointed to is no longer valid.
        get {
            let rv = TreePathRef(gconstpointer: gconstpointer(gtk_tree_row_reference_get_path(tree_row_reference_ptr)))
            return rv
        }
    }


}



/// Metatype/GType declaration for TreeSortable
public extension TreeSortableIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `TreeSortable`
    static var metatypeReference: GType { gtk_tree_sortable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeSortableIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeSortableIface.self) }
    
    static var metatype: GtkTreeSortableIface? { metatypePointer?.pointee } 
    
    static var wrapper: TreeSortableIfaceRef? { TreeSortableIfaceRef(metatypePointer) }
    
    
}

// MARK: - TreeSortableIface Record

/// The `TreeSortableIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkTreeSortableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeSortableIface`.
/// Alternatively, use `TreeSortableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeSortableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeSortableIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeSortableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeSortableIface>! { get }

}

/// The `TreeSortableIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeSortableIface` instance.
/// It exposes methods that can operate on this data type through `TreeSortableIfaceProtocol` conformance.
/// Use `TreeSortableIfaceRef` only as an `unowned` reference to an existing `GtkTreeSortableIface` instance.
///

public struct TreeSortableIfaceRef: TreeSortableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkTreeSortableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeSortableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeSortableIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeSortableIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeSortableIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeSortableIface>?) {
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

    /// Reference intialiser for a related type that implements `TreeSortableIfaceProtocol`
    @inlinable init<T: TreeSortableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeSortableIface Record: TreeSortableIfaceProtocol extension (methods and fields)
public extension TreeSortableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeSortableIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeSortableIface>! { return ptr?.assumingMemoryBound(to: GtkTreeSortableIface.self) }


    // var gIface is unavailable because g_iface is private

    // var sortColumnChanged is unavailable because sort_column_changed is void

    // var getSortColumnId is unavailable because get_sort_column_id is void

    // var setSortColumnId is unavailable because set_sort_column_id is void

    // var setSortFunc is unavailable because set_sort_func is void

    // var setDefaultSortFunc is unavailable because set_default_sort_func is void

    // var hasDefaultSortFunc is unavailable because has_default_sort_func is void

}



/// Metatype/GType declaration for TreeStore
public extension TreeStoreClassRef {
    
    /// This getter returns the GLib type identifier registered for `TreeStore`
    static var metatypeReference: GType { gtk_tree_store_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeStoreClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeStoreClass.self) }
    
    static var metatype: GtkTreeStoreClass? { metatypePointer?.pointee } 
    
    static var wrapper: TreeStoreClassRef? { TreeStoreClassRef(metatypePointer) }
    
    
}

// MARK: - TreeStoreClass Record

/// The `TreeStoreClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeStoreClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeStoreClass`.
/// Alternatively, use `TreeStoreClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeStoreClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeStoreClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeStoreClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeStoreClass>! { get }

}

/// The `TreeStoreClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeStoreClass` instance.
/// It exposes methods that can operate on this data type through `TreeStoreClassProtocol` conformance.
/// Use `TreeStoreClassRef` only as an `unowned` reference to an existing `GtkTreeStoreClass` instance.
///

public struct TreeStoreClassRef: TreeStoreClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeStoreClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeStoreClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeStoreClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeStoreClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeStoreClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeStoreClass>?) {
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

    /// Reference intialiser for a related type that implements `TreeStoreClassProtocol`
    @inlinable init<T: TreeStoreClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeStoreClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeStoreClass Record: TreeStoreClassProtocol extension (methods and fields)
public extension TreeStoreClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeStoreClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeStoreClass>! { return ptr?.assumingMemoryBound(to: GtkTreeStoreClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for TreeView
public extension TreeViewClassRef {
    
    /// This getter returns the GLib type identifier registered for `TreeView`
    static var metatypeReference: GType { gtk_tree_view_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTreeViewClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTreeViewClass.self) }
    
    static var metatype: GtkTreeViewClass? { metatypePointer?.pointee } 
    
    static var wrapper: TreeViewClassRef? { TreeViewClassRef(metatypePointer) }
    
    
}

// MARK: - TreeViewClass Record

/// The `TreeViewClassProtocol` protocol exposes the methods and properties of an underlying `GtkTreeViewClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeViewClass`.
/// Alternatively, use `TreeViewClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeViewClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeViewClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTreeViewClass>! { get }

}

/// The `TreeViewClassRef` type acts as a lightweight Swift reference to an underlying `GtkTreeViewClass` instance.
/// It exposes methods that can operate on this data type through `TreeViewClassProtocol` conformance.
/// Use `TreeViewClassRef` only as an `unowned` reference to an existing `GtkTreeViewClass` instance.
///

public struct TreeViewClassRef: TreeViewClassProtocol {
        /// Untyped pointer to the underlying `GtkTreeViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeViewClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeViewClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeViewClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeViewClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeViewClass>?) {
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

    /// Reference intialiser for a related type that implements `TreeViewClassProtocol`
    @inlinable init<T: TreeViewClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeViewClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TreeViewClass Record: TreeViewClassProtocol extension (methods and fields)
public extension TreeViewClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeViewClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTreeViewClass>! { return ptr?.assumingMemoryBound(to: GtkTreeViewClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var rowActivated is unavailable because row_activated is void

    // var testExpandRow is unavailable because test_expand_row is void

    // var testCollapseRow is unavailable because test_collapse_row is void

    // var rowExpanded is unavailable because row_expanded is void

    // var rowCollapsed is unavailable because row_collapsed is void

    // var columnsChanged is unavailable because columns_changed is void

    // var cursorChanged is unavailable because cursor_changed is void

    // var moveCursor is unavailable because move_cursor is void

    // var selectAll is unavailable because select_all is void

    // var unselectAll is unavailable because unselect_all is void

    // var selectCursorRow is unavailable because select_cursor_row is void

    // var toggleCursorRow is unavailable because toggle_cursor_row is void

    // var expandCollapseCursorRow is unavailable because expand_collapse_cursor_row is void

    // var selectCursorParent is unavailable because select_cursor_parent is void

    // var startInteractiveSearch is unavailable because start_interactive_search is void

    // var Reserved is unavailable because _reserved is private

}



/// Metatype/GType declaration for Video
public extension VideoClassRef {
    
    /// This getter returns the GLib type identifier registered for `Video`
    static var metatypeReference: GType { gtk_video_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkVideoClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkVideoClass.self) }
    
    static var metatype: GtkVideoClass? { metatypePointer?.pointee } 
    
    static var wrapper: VideoClassRef? { VideoClassRef(metatypePointer) }
    
    
}

// MARK: - VideoClass Record

/// The `VideoClassProtocol` protocol exposes the methods and properties of an underlying `GtkVideoClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VideoClass`.
/// Alternatively, use `VideoClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol VideoClassProtocol {
        /// Untyped pointer to the underlying `GtkVideoClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkVideoClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVideoClass>! { get }

}

/// The `VideoClassRef` type acts as a lightweight Swift reference to an underlying `GtkVideoClass` instance.
/// It exposes methods that can operate on this data type through `VideoClassProtocol` conformance.
/// Use `VideoClassRef` only as an `unowned` reference to an existing `GtkVideoClass` instance.
///

public struct VideoClassRef: VideoClassProtocol {
        /// Untyped pointer to the underlying `GtkVideoClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VideoClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkVideoClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkVideoClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkVideoClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkVideoClass>?) {
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

    /// Reference intialiser for a related type that implements `VideoClassProtocol`
    @inlinable init<T: VideoClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VideoClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VideoClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VideoClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VideoClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VideoClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: VideoClass Record: VideoClassProtocol extension (methods and fields)
public extension VideoClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVideoClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkVideoClass>! { return ptr?.assumingMemoryBound(to: GtkVideoClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



