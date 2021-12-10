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

// MARK: - IMContextSimple Class

/// GtkIMContextSimple is a simple input method context supporting table-based
/// input methods. It has a built-in table of compose sequences that is derived
/// from the X11 Compose files.
/// 
/// GtkIMContextSimple reads additional compose sequences from the first of the
/// following files that is found: ~/.config/gtk-3.0/Compose, ~/.XCompose,
/// /usr/share/X11/locale/$locale/Compose (for locales that have a nontrivial
/// Compose file). The syntax of these files is described in the `Compose(5)`
/// manual page.
/// 
/// ## Unicode characters
/// 
/// GtkIMContextSimple also supports numeric entry of Unicode characters
/// by typing Ctrl-Shift-u, followed by a hexadecimal Unicode codepoint.
/// For example, Ctrl-Shift-u 1 2 3 Enter yields U+0123 LATIN SMALL LETTER
/// G WITH CEDILLA, i.e. ģ.
///
/// The `IMContextSimpleProtocol` protocol exposes the methods and properties of an underlying `GtkIMContextSimple` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMContextSimple`.
/// Alternatively, use `IMContextSimpleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IMContextSimpleProtocol: IMContextProtocol {
        /// Untyped pointer to the underlying `GtkIMContextSimple` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIMContextSimple` instance.
    var im_context_simple_ptr: UnsafeMutablePointer<GtkIMContextSimple>! { get }

    /// Required Initialiser for types conforming to `IMContextSimpleProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// GtkIMContextSimple is a simple input method context supporting table-based
/// input methods. It has a built-in table of compose sequences that is derived
/// from the X11 Compose files.
/// 
/// GtkIMContextSimple reads additional compose sequences from the first of the
/// following files that is found: ~/.config/gtk-3.0/Compose, ~/.XCompose,
/// /usr/share/X11/locale/$locale/Compose (for locales that have a nontrivial
/// Compose file). The syntax of these files is described in the `Compose(5)`
/// manual page.
/// 
/// ## Unicode characters
/// 
/// GtkIMContextSimple also supports numeric entry of Unicode characters
/// by typing Ctrl-Shift-u, followed by a hexadecimal Unicode codepoint.
/// For example, Ctrl-Shift-u 1 2 3 Enter yields U+0123 LATIN SMALL LETTER
/// G WITH CEDILLA, i.e. ģ.
///
/// The `IMContextSimpleRef` type acts as a lightweight Swift reference to an underlying `GtkIMContextSimple` instance.
/// It exposes methods that can operate on this data type through `IMContextSimpleProtocol` conformance.
/// Use `IMContextSimpleRef` only as an `unowned` reference to an existing `GtkIMContextSimple` instance.
///
public struct IMContextSimpleRef: IMContextSimpleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkIMContextSimple` instance.
    /// For type-safe access, use the generated, typed pointer `im_context_simple_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IMContextSimpleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIMContextSimple>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIMContextSimple>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIMContextSimple>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIMContextSimple>?) {
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

    /// Reference intialiser for a related type that implements `IMContextSimpleProtocol`
    @inlinable init<T: IMContextSimpleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IMContextSimpleProtocol>(_ other: T) -> IMContextSimpleRef { IMContextSimpleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkIMContextSimple`.
    @inlinable init() {
        let rv = gtk_im_context_simple_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// GtkIMContextSimple is a simple input method context supporting table-based
/// input methods. It has a built-in table of compose sequences that is derived
/// from the X11 Compose files.
/// 
/// GtkIMContextSimple reads additional compose sequences from the first of the
/// following files that is found: ~/.config/gtk-3.0/Compose, ~/.XCompose,
/// /usr/share/X11/locale/$locale/Compose (for locales that have a nontrivial
/// Compose file). The syntax of these files is described in the `Compose(5)`
/// manual page.
/// 
/// ## Unicode characters
/// 
/// GtkIMContextSimple also supports numeric entry of Unicode characters
/// by typing Ctrl-Shift-u, followed by a hexadecimal Unicode codepoint.
/// For example, Ctrl-Shift-u 1 2 3 Enter yields U+0123 LATIN SMALL LETTER
/// G WITH CEDILLA, i.e. ģ.
///
/// The `IMContextSimple` type acts as a reference-counted owner of an underlying `GtkIMContextSimple` instance.
/// It provides the methods that can operate on this data type through `IMContextSimpleProtocol` conformance.
/// Use `IMContextSimple` as a strong reference or owner of a `GtkIMContextSimple` instance.
///
open class IMContextSimple: IMContext, IMContextSimpleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIMContextSimple>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIMContextSimple>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextSimple` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIMContextSimple>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIMContextSimple>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkIMContextSimple`.
    /// i.e., ownership is transferred to the `IMContextSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIMContextSimple>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IMContextSimpleProtocol`
    /// Will retain `GtkIMContextSimple`.
    /// - Parameter other: an instance of a related type that implements `IMContextSimpleProtocol`
    @inlinable public init<T: IMContextSimpleProtocol>(iMContextSimple other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkIMContextSimple`.
    @inlinable public init() {
        let rv = gtk_im_context_simple_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum IMContextSimplePropertyName: String, PropertyNameProtocol {
    case inputHints = "input-hints"
    case inputPurpose = "input-purpose"
}

public extension IMContextSimpleProtocol {
    /// Bind a `IMContextSimplePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: IMContextSimplePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a IMContextSimple property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: IMContextSimplePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a IMContextSimple property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: IMContextSimplePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum IMContextSimpleSignalName: String, SignalNameProtocol {
    /// The `commit` signal is emitted when a complete input sequence
    /// has been entered by the user. This can be a single character
    /// immediately after a key press or the final result of preediting.
    case commit = "commit"
    /// The `delete-surrounding` signal is emitted when the input method
    /// needs to delete all or part of the context surrounding the cursor.
    case deleteSurrounding = "delete-surrounding"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `preedit-changed` signal is emitted whenever the preedit sequence
    /// currently being entered has changed.  It is also emitted at the end of
    /// a preedit sequence, in which case
    /// `gtk_im_context_get_preedit_string()` returns the empty string.
    case preeditChanged = "preedit-changed"
    /// The `preedit-end` signal is emitted when a preediting sequence
    /// has been completed or canceled.
    case preeditEnd = "preedit-end"
    /// The `preedit-start` signal is emitted when a new preediting sequence
    /// starts.
    case preeditStart = "preedit-start"
    /// The `retrieve-surrounding` signal is emitted when the input method
    /// requires the context surrounding the cursor.  The callback should set
    /// the input method surrounding context by calling the
    /// `gtk_im_context_set_surrounding()` method.
    case retrieveSurrounding = "retrieve-surrounding"
    case notifyInputHints = "notify::input-hints"
    case notifyInputPurpose = "notify::input-purpose"
}

// MARK: IMContextSimple has no signals
// MARK: IMContextSimple Class: IMContextSimpleProtocol extension (methods and fields)
public extension IMContextSimpleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMContextSimple` instance.
    @inlinable var im_context_simple_ptr: UnsafeMutablePointer<GtkIMContextSimple>! { return ptr?.assumingMemoryBound(to: GtkIMContextSimple.self) }

    /// Adds an additional table from the X11 compose file.
    @inlinable func add(composeFile: UnsafePointer<gchar>!) {
        gtk_im_context_simple_add_compose_file(im_context_simple_ptr, composeFile)
    
    }

    /// Adds an additional table to search to the input context.
    /// Each row of the table consists of `max_seq_len` key symbols
    /// followed by two `guint16` interpreted as the high and low
    /// words of a `gunicode` value. Tables are searched starting
    /// from the last added.
    /// 
    /// The table must be sorted in dictionary order on the
    /// numeric value of the key symbol fields. (Values beyond
    /// the length of the sequence should be zero.)
    @inlinable func addTable(data: UnsafeMutablePointer<guint16>!, maxSeqLen: Int, nSeqs: Int) {
        gtk_im_context_simple_add_table(im_context_simple_ptr, data, gint(maxSeqLen), gint(nSeqs))
    
    }

    @inlinable var object: GtkIMContext {
        get {
            let rv = im_context_simple_ptr.pointee.object
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - IMMulticontext Class


///
/// The `IMMulticontextProtocol` protocol exposes the methods and properties of an underlying `GtkIMMulticontext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMMulticontext`.
/// Alternatively, use `IMMulticontextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IMMulticontextProtocol: IMContextProtocol {
        /// Untyped pointer to the underlying `GtkIMMulticontext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIMMulticontext` instance.
    var im_multicontext_ptr: UnsafeMutablePointer<GtkIMMulticontext>! { get }

    /// Required Initialiser for types conforming to `IMMulticontextProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `IMMulticontextRef` type acts as a lightweight Swift reference to an underlying `GtkIMMulticontext` instance.
/// It exposes methods that can operate on this data type through `IMMulticontextProtocol` conformance.
/// Use `IMMulticontextRef` only as an `unowned` reference to an existing `GtkIMMulticontext` instance.
///
public struct IMMulticontextRef: IMMulticontextProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkIMMulticontext` instance.
    /// For type-safe access, use the generated, typed pointer `im_multicontext_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IMMulticontextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIMMulticontext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIMMulticontext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIMMulticontext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIMMulticontext>?) {
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

    /// Reference intialiser for a related type that implements `IMMulticontextProtocol`
    @inlinable init<T: IMMulticontextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IMMulticontextProtocol>(_ other: T) -> IMMulticontextRef { IMMulticontextRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkIMMulticontext`.
    @inlinable init() {
        let rv = gtk_im_multicontext_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}


///
/// The `IMMulticontext` type acts as a reference-counted owner of an underlying `GtkIMMulticontext` instance.
/// It provides the methods that can operate on this data type through `IMMulticontextProtocol` conformance.
/// Use `IMMulticontext` as a strong reference or owner of a `GtkIMMulticontext` instance.
///
open class IMMulticontext: IMContext, IMMulticontextProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMMulticontext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIMMulticontext>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMMulticontext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIMMulticontext>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMMulticontext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMMulticontext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMMulticontext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIMMulticontext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMMulticontext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIMMulticontext>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkIMMulticontext`.
    /// i.e., ownership is transferred to the `IMMulticontext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIMMulticontext>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IMMulticontextProtocol`
    /// Will retain `GtkIMMulticontext`.
    /// - Parameter other: an instance of a related type that implements `IMMulticontextProtocol`
    @inlinable public init<T: IMMulticontextProtocol>(iMMulticontext other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkIMMulticontext`.
    @inlinable public init() {
        let rv = gtk_im_multicontext_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum IMMulticontextPropertyName: String, PropertyNameProtocol {
    case inputHints = "input-hints"
    case inputPurpose = "input-purpose"
}

public extension IMMulticontextProtocol {
    /// Bind a `IMMulticontextPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: IMMulticontextPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a IMMulticontext property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: IMMulticontextPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a IMMulticontext property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: IMMulticontextPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum IMMulticontextSignalName: String, SignalNameProtocol {
    /// The `commit` signal is emitted when a complete input sequence
    /// has been entered by the user. This can be a single character
    /// immediately after a key press or the final result of preediting.
    case commit = "commit"
    /// The `delete-surrounding` signal is emitted when the input method
    /// needs to delete all or part of the context surrounding the cursor.
    case deleteSurrounding = "delete-surrounding"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `preedit-changed` signal is emitted whenever the preedit sequence
    /// currently being entered has changed.  It is also emitted at the end of
    /// a preedit sequence, in which case
    /// `gtk_im_context_get_preedit_string()` returns the empty string.
    case preeditChanged = "preedit-changed"
    /// The `preedit-end` signal is emitted when a preediting sequence
    /// has been completed or canceled.
    case preeditEnd = "preedit-end"
    /// The `preedit-start` signal is emitted when a new preediting sequence
    /// starts.
    case preeditStart = "preedit-start"
    /// The `retrieve-surrounding` signal is emitted when the input method
    /// requires the context surrounding the cursor.  The callback should set
    /// the input method surrounding context by calling the
    /// `gtk_im_context_set_surrounding()` method.
    case retrieveSurrounding = "retrieve-surrounding"
    case notifyInputHints = "notify::input-hints"
    case notifyInputPurpose = "notify::input-purpose"
}

// MARK: IMMulticontext has no signals
// MARK: IMMulticontext Class: IMMulticontextProtocol extension (methods and fields)
public extension IMMulticontextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMMulticontext` instance.
    @inlinable var im_multicontext_ptr: UnsafeMutablePointer<GtkIMMulticontext>! { return ptr?.assumingMemoryBound(to: GtkIMMulticontext.self) }

    /// Add menuitems for various available input methods to a menu;
    /// the menuitems, when selected, will switch the input method
    /// for the context and the global default input method.
    ///
    /// **append_menuitems is deprecated:**
    /// It is better to use the system-wide input
    ///     method framework for changing input methods. Modern
    ///     desktop shells offer on-screen displays for this that
    ///     can triggered with a keyboard shortcut, e.g. Super-Space.
    @available(*, deprecated)
    @inlinable func appendMenuitems<MenuShellT: MenuShellProtocol>(menushell: MenuShellT) {
        gtk_im_multicontext_append_menuitems(im_multicontext_ptr, menushell.menu_shell_ptr)
    
    }

    /// Gets the id of the currently active slave of the `context`.
    @inlinable func getContextID() -> String! {
        let rv = gtk_im_multicontext_get_context_id(im_multicontext_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Sets the context id for `context`.
    /// 
    /// This causes the currently active slave of `context` to be
    /// replaced by the slave corresponding to the new context id.
    @inlinable func set(contextID: UnsafePointer<CChar>!) {
        gtk_im_multicontext_set_context_id(im_multicontext_ptr, contextID)
    
    }
    /// Gets the id of the currently active slave of the `context`.
    @inlinable var contextID: String! {
        /// Gets the id of the currently active slave of the `context`.
        get {
            let rv = gtk_im_multicontext_get_context_id(im_multicontext_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the context id for `context`.
        /// 
        /// This causes the currently active slave of `context` to be
        /// replaced by the slave corresponding to the new context id.
        nonmutating set {
            gtk_im_multicontext_set_context_id(im_multicontext_ptr, newValue)
        }
    }

    @inlinable var object: GtkIMContext {
        get {
            let rv = im_multicontext_ptr.pointee.object
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - IconFactory Class

/// An icon factory manages a collection of `GtkIconSet`; a `GtkIconSet` manages a
/// set of variants of a particular icon (i.e. a `GtkIconSet` contains variants for
/// different sizes and widget states). Icons in an icon factory are named by a
/// stock ID, which is a simple string identifying the icon. Each `GtkStyle` has a
/// list of `GtkIconFactory` derived from the current theme; those icon factories
/// are consulted first when searching for an icon. If the theme doesn’t set a
/// particular icon, GTK+ looks for the icon in a list of default icon factories,
/// maintained by `gtk_icon_factory_add_default()` and
/// `gtk_icon_factory_remove_default()`. Applications with icons should add a default
/// icon factory with their icons, which will allow themes to override the icons
/// for the application.
/// 
/// To display an icon, always use `gtk_style_lookup_icon_set()` on the widget that
/// will display the icon, or the convenience function
/// `gtk_widget_render_icon()`. These functions take the theme into account when
/// looking up the icon to use for a given stock ID.
/// 
/// # GtkIconFactory as GtkBuildable # <a name="GtkIconFactory-BUILDER-UI"></a>
/// 
/// GtkIconFactory supports a custom &lt;sources&gt; element, which can contain
/// multiple &lt;source&gt; elements. The following attributes are allowed:
/// 
/// - stock-id
/// 
///     The stock id of the source, a string. This attribute is
///     mandatory
/// 
/// - filename
/// 
///     The filename of the source, a string.  This attribute is
///     optional
/// 
/// - icon-name
/// 
///     The icon name for the source, a string.  This attribute is
///     optional.
/// 
/// - size
/// 
///     Size of the icon, a `GtkIconSize` enum value.  This attribute is
///     optional.
/// 
/// - direction
/// 
///     Direction of the source, a `GtkTextDirection` enum value.  This
///     attribute is optional.
/// 
/// - state
/// 
///     State of the source, a `GtkStateType` enum value.  This
///     attribute is optional.
/// 
/// 
/// ## A `GtkIconFactory` UI definition fragment. ##
/// 
/// ```
/// <object class="GtkIconFactory" id="iconfactory1">
///   <sources>
///     <source stock-id="apple-red" filename="apple-red.png"/>
///   </sources>
/// </object>
/// <object class="GtkWindow" id="window1">
///   <child>
///     <object class="GtkButton" id="apple_button">
///       <property name="label">apple-red</property>
///       <property name="use-stock">True</property>
///     </object>
///   </child>
/// </object>
/// ```
/// 
///
/// The `IconFactoryProtocol` protocol exposes the methods and properties of an underlying `GtkIconFactory` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconFactory`.
/// Alternatively, use `IconFactoryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IconFactoryProtocol: GLibObject.ObjectProtocol, BuildableProtocol {
        /// Untyped pointer to the underlying `GtkIconFactory` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIconFactory` instance.
    var icon_factory_ptr: UnsafeMutablePointer<GtkIconFactory>! { get }

    /// Required Initialiser for types conforming to `IconFactoryProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An icon factory manages a collection of `GtkIconSet`; a `GtkIconSet` manages a
/// set of variants of a particular icon (i.e. a `GtkIconSet` contains variants for
/// different sizes and widget states). Icons in an icon factory are named by a
/// stock ID, which is a simple string identifying the icon. Each `GtkStyle` has a
/// list of `GtkIconFactory` derived from the current theme; those icon factories
/// are consulted first when searching for an icon. If the theme doesn’t set a
/// particular icon, GTK+ looks for the icon in a list of default icon factories,
/// maintained by `gtk_icon_factory_add_default()` and
/// `gtk_icon_factory_remove_default()`. Applications with icons should add a default
/// icon factory with their icons, which will allow themes to override the icons
/// for the application.
/// 
/// To display an icon, always use `gtk_style_lookup_icon_set()` on the widget that
/// will display the icon, or the convenience function
/// `gtk_widget_render_icon()`. These functions take the theme into account when
/// looking up the icon to use for a given stock ID.
/// 
/// # GtkIconFactory as GtkBuildable # <a name="GtkIconFactory-BUILDER-UI"></a>
/// 
/// GtkIconFactory supports a custom &lt;sources&gt; element, which can contain
/// multiple &lt;source&gt; elements. The following attributes are allowed:
/// 
/// - stock-id
/// 
///     The stock id of the source, a string. This attribute is
///     mandatory
/// 
/// - filename
/// 
///     The filename of the source, a string.  This attribute is
///     optional
/// 
/// - icon-name
/// 
///     The icon name for the source, a string.  This attribute is
///     optional.
/// 
/// - size
/// 
///     Size of the icon, a `GtkIconSize` enum value.  This attribute is
///     optional.
/// 
/// - direction
/// 
///     Direction of the source, a `GtkTextDirection` enum value.  This
///     attribute is optional.
/// 
/// - state
/// 
///     State of the source, a `GtkStateType` enum value.  This
///     attribute is optional.
/// 
/// 
/// ## A `GtkIconFactory` UI definition fragment. ##
/// 
/// ```
/// <object class="GtkIconFactory" id="iconfactory1">
///   <sources>
///     <source stock-id="apple-red" filename="apple-red.png"/>
///   </sources>
/// </object>
/// <object class="GtkWindow" id="window1">
///   <child>
///     <object class="GtkButton" id="apple_button">
///       <property name="label">apple-red</property>
///       <property name="use-stock">True</property>
///     </object>
///   </child>
/// </object>
/// ```
/// 
///
/// The `IconFactoryRef` type acts as a lightweight Swift reference to an underlying `GtkIconFactory` instance.
/// It exposes methods that can operate on this data type through `IconFactoryProtocol` conformance.
/// Use `IconFactoryRef` only as an `unowned` reference to an existing `GtkIconFactory` instance.
///
public struct IconFactoryRef: IconFactoryProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkIconFactory` instance.
    /// For type-safe access, use the generated, typed pointer `icon_factory_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconFactoryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIconFactory>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIconFactory>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIconFactory>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIconFactory>?) {
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

    /// Reference intialiser for a related type that implements `IconFactoryProtocol`
    @inlinable init<T: IconFactoryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IconFactoryProtocol>(_ other: T) -> IconFactoryRef { IconFactoryRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkIconFactory`. An icon factory manages a collection
    /// of `GtkIconSets`; a `GtkIconSet` manages a set of variants of a
    /// particular icon (i.e. a `GtkIconSet` contains variants for different
    /// sizes and widget states). Icons in an icon factory are named by a
    /// stock ID, which is a simple string identifying the icon. Each
    /// `GtkStyle` has a list of `GtkIconFactorys` derived from the current
    /// theme; those icon factories are consulted first when searching for
    /// an icon. If the theme doesn’t set a particular icon, GTK+ looks for
    /// the icon in a list of default icon factories, maintained by
    /// `gtk_icon_factory_add_default()` and
    /// `gtk_icon_factory_remove_default()`. Applications with icons should
    /// add a default icon factory with their icons, which will allow
    /// themes to override the icons for the application.
    ///
    /// **new is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable init() {
        let rv = gtk_icon_factory_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// An icon factory manages a collection of `GtkIconSet`; a `GtkIconSet` manages a
/// set of variants of a particular icon (i.e. a `GtkIconSet` contains variants for
/// different sizes and widget states). Icons in an icon factory are named by a
/// stock ID, which is a simple string identifying the icon. Each `GtkStyle` has a
/// list of `GtkIconFactory` derived from the current theme; those icon factories
/// are consulted first when searching for an icon. If the theme doesn’t set a
/// particular icon, GTK+ looks for the icon in a list of default icon factories,
/// maintained by `gtk_icon_factory_add_default()` and
/// `gtk_icon_factory_remove_default()`. Applications with icons should add a default
/// icon factory with their icons, which will allow themes to override the icons
/// for the application.
/// 
/// To display an icon, always use `gtk_style_lookup_icon_set()` on the widget that
/// will display the icon, or the convenience function
/// `gtk_widget_render_icon()`. These functions take the theme into account when
/// looking up the icon to use for a given stock ID.
/// 
/// # GtkIconFactory as GtkBuildable # <a name="GtkIconFactory-BUILDER-UI"></a>
/// 
/// GtkIconFactory supports a custom &lt;sources&gt; element, which can contain
/// multiple &lt;source&gt; elements. The following attributes are allowed:
/// 
/// - stock-id
/// 
///     The stock id of the source, a string. This attribute is
///     mandatory
/// 
/// - filename
/// 
///     The filename of the source, a string.  This attribute is
///     optional
/// 
/// - icon-name
/// 
///     The icon name for the source, a string.  This attribute is
///     optional.
/// 
/// - size
/// 
///     Size of the icon, a `GtkIconSize` enum value.  This attribute is
///     optional.
/// 
/// - direction
/// 
///     Direction of the source, a `GtkTextDirection` enum value.  This
///     attribute is optional.
/// 
/// - state
/// 
///     State of the source, a `GtkStateType` enum value.  This
///     attribute is optional.
/// 
/// 
/// ## A `GtkIconFactory` UI definition fragment. ##
/// 
/// ```
/// <object class="GtkIconFactory" id="iconfactory1">
///   <sources>
///     <source stock-id="apple-red" filename="apple-red.png"/>
///   </sources>
/// </object>
/// <object class="GtkWindow" id="window1">
///   <child>
///     <object class="GtkButton" id="apple_button">
///       <property name="label">apple-red</property>
///       <property name="use-stock">True</property>
///     </object>
///   </child>
/// </object>
/// ```
/// 
///
/// The `IconFactory` type acts as a reference-counted owner of an underlying `GtkIconFactory` instance.
/// It provides the methods that can operate on this data type through `IconFactoryProtocol` conformance.
/// Use `IconFactory` as a strong reference or owner of a `GtkIconFactory` instance.
///
open class IconFactory: GLibObject.Object, IconFactoryProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIconFactory>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIconFactory>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconFactory` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIconFactory>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIconFactory>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkIconFactory`.
    /// i.e., ownership is transferred to the `IconFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIconFactory>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IconFactoryProtocol`
    /// Will retain `GtkIconFactory`.
    /// - Parameter other: an instance of a related type that implements `IconFactoryProtocol`
    @inlinable public init<T: IconFactoryProtocol>(iconFactory other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkIconFactory`. An icon factory manages a collection
    /// of `GtkIconSets`; a `GtkIconSet` manages a set of variants of a
    /// particular icon (i.e. a `GtkIconSet` contains variants for different
    /// sizes and widget states). Icons in an icon factory are named by a
    /// stock ID, which is a simple string identifying the icon. Each
    /// `GtkStyle` has a list of `GtkIconFactorys` derived from the current
    /// theme; those icon factories are consulted first when searching for
    /// an icon. If the theme doesn’t set a particular icon, GTK+ looks for
    /// the icon in a list of default icon factories, maintained by
    /// `gtk_icon_factory_add_default()` and
    /// `gtk_icon_factory_remove_default()`. Applications with icons should
    /// add a default icon factory with their icons, which will allow
    /// themes to override the icons for the application.
    ///
    /// **new is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable public init() {
        let rv = gtk_icon_factory_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

// MARK: no IconFactory properties

public enum IconFactorySignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: IconFactory has no signals
// MARK: IconFactory Class: IconFactoryProtocol extension (methods and fields)
public extension IconFactoryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconFactory` instance.
    @inlinable var icon_factory_ptr: UnsafeMutablePointer<GtkIconFactory>! { return ptr?.assumingMemoryBound(to: GtkIconFactory.self) }

    /// Adds the given `icon_set` to the icon factory, under the name
    /// `stock_id`.  `stock_id` should be namespaced for your application,
    /// e.g. “myapp-whatever-icon”.  Normally applications create a
    /// `GtkIconFactory`, then add it to the list of default factories with
    /// `gtk_icon_factory_add_default()`. Then they pass the `stock_id` to
    /// widgets such as `GtkImage` to display the icon. Themes can provide
    /// an icon with the same name (such as "myapp-whatever-icon") to
    /// override your application’s default icons. If an icon already
    /// existed in `factory` for `stock_id`, it is unreferenced and replaced
    /// with the new `icon_set`.
    ///
    /// **add is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func add<IconSetT: IconSetProtocol>(stockID: UnsafePointer<gchar>!, iconSet: IconSetT) {
        gtk_icon_factory_add(icon_factory_ptr, stockID, iconSet.icon_set_ptr)
    
    }

    /// Adds an icon factory to the list of icon factories searched by
    /// `gtk_style_lookup_icon_set()`. This means that, for example,
    /// `gtk_image_new_from_stock()` will be able to find icons in `factory`.
    /// There will normally be an icon factory added for each library or
    /// application that comes with icons. The default icon factories
    /// can be overridden by themes.
    ///
    /// **add_default is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func addDefault() {
        gtk_icon_factory_add_default(icon_factory_ptr)
    
    }

    /// Looks up `stock_id` in the icon factory, returning an icon set
    /// if found, otherwise `nil`. For display to the user, you should
    /// use `gtk_style_lookup_icon_set()` on the `GtkStyle` for the
    /// widget that will display the icon, instead of using this
    /// function directly, so that themes are taken into account.
    ///
    /// **lookup is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func lookup(stockID: UnsafePointer<gchar>!) -> IconSetRef! {
        let rv = IconSetRef(gconstpointer: gconstpointer(gtk_icon_factory_lookup(icon_factory_ptr, stockID)))
        return rv
    }

    /// Removes an icon factory from the list of default icon
    /// factories. Not normally used; you might use it for a library that
    /// can be unloaded or shut down.
    ///
    /// **remove_default is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func removeDefault() {
        gtk_icon_factory_remove_default(icon_factory_ptr)
    
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = icon_factory_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - IconInfo Class

/// Contains information found when looking up an icon in
/// an icon theme.
///
/// The `IconInfoProtocol` protocol exposes the methods and properties of an underlying `GtkIconInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconInfo`.
/// Alternatively, use `IconInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IconInfoProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkIconInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIconInfo` instance.
    var icon_info_ptr: UnsafeMutablePointer<GtkIconInfo>! { get }

    /// Required Initialiser for types conforming to `IconInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Contains information found when looking up an icon in
/// an icon theme.
///
/// The `IconInfoRef` type acts as a lightweight Swift reference to an underlying `GtkIconInfo` instance.
/// It exposes methods that can operate on this data type through `IconInfoProtocol` conformance.
/// Use `IconInfoRef` only as an `unowned` reference to an existing `GtkIconInfo` instance.
///
public struct IconInfoRef: IconInfoProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkIconInfo` instance.
    /// For type-safe access, use the generated, typed pointer `icon_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIconInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIconInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIconInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIconInfo>?) {
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

    /// Reference intialiser for a related type that implements `IconInfoProtocol`
    @inlinable init<T: IconInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IconInfoProtocol>(_ other: T) -> IconInfoRef { IconInfoRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GtkIconInfo` for a `GdkPixbuf`.
    @inlinable init<IconThemeT: IconThemeProtocol, PixbufT: PixbufProtocol>(pixbuf iconTheme: IconThemeT, pixbuf: PixbufT) {
        let rv = gtk_icon_info_new_for_pixbuf(iconTheme.icon_theme_ptr, pixbuf.pixbuf_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a `GtkIconInfo` for a `GdkPixbuf`.
    @inlinable static func newFor<IconThemeT: IconThemeProtocol, PixbufT: PixbufProtocol>(pixbuf iconTheme: IconThemeT, pixbuf: PixbufT) -> IconInfoRef! {
        guard let rv = IconInfoRef(gconstpointer: gconstpointer(gtk_icon_info_new_for_pixbuf(iconTheme.icon_theme_ptr, pixbuf.pixbuf_ptr))) else { return nil }
        return rv
    }
}

/// Contains information found when looking up an icon in
/// an icon theme.
///
/// The `IconInfo` type acts as a reference-counted owner of an underlying `GtkIconInfo` instance.
/// It provides the methods that can operate on this data type through `IconInfoProtocol` conformance.
/// Use `IconInfo` as a strong reference or owner of a `GtkIconInfo` instance.
///
open class IconInfo: GLibObject.Object, IconInfoProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIconInfo>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIconInfo>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIconInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIconInfo>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkIconInfo`.
    /// i.e., ownership is transferred to the `IconInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIconInfo>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IconInfoProtocol`
    /// Will retain `GtkIconInfo`.
    /// - Parameter other: an instance of a related type that implements `IconInfoProtocol`
    @inlinable public init<T: IconInfoProtocol>(iconInfo other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a `GtkIconInfo` for a `GdkPixbuf`.
    @inlinable public init<IconThemeT: IconThemeProtocol, PixbufT: PixbufProtocol>(pixbuf iconTheme: IconThemeT, pixbuf: PixbufT) {
        let rv = gtk_icon_info_new_for_pixbuf(iconTheme.icon_theme_ptr, pixbuf.pixbuf_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkIconInfo` for a `GdkPixbuf`.
    @inlinable public static func newFor<IconThemeT: IconThemeProtocol, PixbufT: PixbufProtocol>(pixbuf iconTheme: IconThemeT, pixbuf: PixbufT) -> IconInfo! {
        guard let rv = IconInfo(gconstpointer: gconstpointer(gtk_icon_info_new_for_pixbuf(iconTheme.icon_theme_ptr, pixbuf.pixbuf_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

// MARK: no IconInfo properties

public enum IconInfoSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: IconInfo has no signals
// MARK: IconInfo Class: IconInfoProtocol extension (methods and fields)
public extension IconInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconInfo` instance.
    @inlinable var icon_info_ptr: UnsafeMutablePointer<GtkIconInfo>! { return ptr?.assumingMemoryBound(to: GtkIconInfo.self) }

    /// Make a copy of a `GtkIconInfo`.
    ///
    /// **copy is deprecated:**
    /// Use g_object_ref()
    @available(*, deprecated)
    @inlinable func copy() -> IconInfoRef! {
        guard let rv = IconInfoRef(gconstpointer: gconstpointer(gtk_icon_info_copy(icon_info_ptr))) else { return nil }
        return rv
    }

    /// Free a `GtkIconInfo` and associated information
    ///
    /// **free is deprecated:**
    /// Use g_object_unref()
    @available(*, deprecated)
    @inlinable func free() {
        gtk_icon_info_free(icon_info_ptr)
    
    }

    /// This function is deprecated and always returns `false`.
    ///
    /// **get_attach_points is deprecated:**
    /// Attachment points are deprecated
    @available(*, deprecated)
    @inlinable func getAttach(points: UnsafeMutablePointer<UnsafeMutablePointer<GdkPoint>?>! = nil, nPoints: UnsafeMutablePointer<gint>! = nil) -> Bool {
        let rv = ((gtk_icon_info_get_attach_points(icon_info_ptr, points, nPoints)) != 0)
        return rv
    }

    /// Gets the base scale for the icon. The base scale is a scale
    /// for the icon that was specified by the icon theme creator.
    /// For instance an icon drawn for a high-dpi screen with window
    /// scale 2 for a base size of 32 will be 64 pixels tall and have
    /// a base scale of 2.
    @inlinable func getBaseScale() -> Int {
        let rv = Int(gtk_icon_info_get_base_scale(icon_info_ptr))
        return rv
    }

    /// Gets the base size for the icon. The base size
    /// is a size for the icon that was specified by
    /// the icon theme creator. This may be different
    /// than the actual size of image; an example of
    /// this is small emblem icons that can be attached
    /// to a larger icon. These icons will be given
    /// the same base size as the larger icons to which
    /// they are attached.
    /// 
    /// Note that for scaled icons the base size does
    /// not include the base scale.
    @inlinable func getBaseSize() -> Int {
        let rv = Int(gtk_icon_info_get_base_size(icon_info_ptr))
        return rv
    }

    /// Gets the built-in image for this icon, if any. To allow GTK+ to use
    /// built in icon images, you must pass the `GTK_ICON_LOOKUP_USE_BUILTIN`
    /// to `gtk_icon_theme_lookup_icon()`.
    ///
    /// **get_builtin_pixbuf is deprecated:**
    /// This function is deprecated, use
    ///     gtk_icon_theme_add_resource_path() instead of builtin icons.
    @available(*, deprecated)
    @inlinable func getBuiltinPixbuf() -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_info_get_builtin_pixbuf(icon_info_ptr)))
        return rv
    }

    /// This function is deprecated and always returns `nil`.
    ///
    /// **get_display_name is deprecated:**
    /// Display names are deprecated
    @available(*, deprecated)
    @inlinable func getDisplayName() -> String! {
        let rv = gtk_icon_info_get_display_name(icon_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// This function is deprecated and always returns `false`.
    ///
    /// **get_embedded_rect is deprecated:**
    /// Embedded rectangles are deprecated
    @available(*, deprecated)
    @inlinable func getEmbeddedRect<RectangleT: Gdk.RectangleProtocol>(rectangle: RectangleT) -> Bool {
        let rv = ((gtk_icon_info_get_embedded_rect(icon_info_ptr, rectangle.rectangle_ptr)) != 0)
        return rv
    }

    /// Gets the filename for the icon. If the `GTK_ICON_LOOKUP_USE_BUILTIN`
    /// flag was passed to `gtk_icon_theme_lookup_icon()`, there may be no
    /// filename if a builtin icon is returned; in this case, you should
    /// use `gtk_icon_info_get_builtin_pixbuf()`.
    @inlinable func getFilename() -> String! {
        let rv = gtk_icon_info_get_filename(icon_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Renders an icon previously looked up in an icon theme using
    /// `gtk_icon_theme_lookup_icon()`; the size will be based on the size
    /// passed to `gtk_icon_theme_lookup_icon()`. Note that the resulting
    /// pixbuf may not be exactly this size; an icon theme may have icons
    /// that differ slightly from their nominal sizes, and in addition GTK+
    /// will avoid scaling icons that it considers sufficiently close to the
    /// requested size or for which the source image would have to be scaled
    /// up too far. (This maintains sharpness.). This behaviour can be changed
    /// by passing the `GTK_ICON_LOOKUP_FORCE_SIZE` flag when obtaining
    /// the `GtkIconInfo`. If this flag has been specified, the pixbuf
    /// returned by this function will be scaled to the exact size.
    @inlinable func loadIcon() throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_info_load_icon(icon_info_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously load, render and scale an icon previously looked up
    /// from the icon theme using `gtk_icon_theme_lookup_icon()`.
    /// 
    /// For more details, see `gtk_icon_info_load_icon()` which is the synchronous
    /// version of this call.
    @inlinable func loadIconAsync(cancellable: GIO.CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gtk_icon_info_load_icon_async(icon_info_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously load, render and scale an icon previously looked up
    /// from the icon theme using `gtk_icon_theme_lookup_icon()`.
    /// 
    /// For more details, see `gtk_icon_info_load_icon()` which is the synchronous
    /// version of this call.
    @inlinable func loadIconAsync<CancellableT: GIO.CancellableProtocol>(cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gtk_icon_info_load_icon_async(icon_info_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an async icon load, see `gtk_icon_info_load_icon_async()`.
    @inlinable func loadIconFinish<AsyncResultT: GIO.AsyncResultProtocol>(res: AsyncResultT) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_info_load_icon_finish(icon_info_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Renders an icon previously looked up in an icon theme using
    /// `gtk_icon_theme_lookup_icon()`; the size will be based on the size
    /// passed to `gtk_icon_theme_lookup_icon()`. Note that the resulting
    /// surface may not be exactly this size; an icon theme may have icons
    /// that differ slightly from their nominal sizes, and in addition GTK+
    /// will avoid scaling icons that it considers sufficiently close to the
    /// requested size or for which the source image would have to be scaled
    /// up too far. (This maintains sharpness.). This behaviour can be changed
    /// by passing the `GTK_ICON_LOOKUP_FORCE_SIZE` flag when obtaining
    /// the `GtkIconInfo`. If this flag has been specified, the pixbuf
    /// returned by this function will be scaled to the exact size.
    @inlinable func loadSurface(`for` window: Gdk.WindowRef? = nil) throws -> Cairo.SurfaceRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = Cairo.SurfaceRef(gtk_icon_info_load_surface(icon_info_ptr, window?.window_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Renders an icon previously looked up in an icon theme using
    /// `gtk_icon_theme_lookup_icon()`; the size will be based on the size
    /// passed to `gtk_icon_theme_lookup_icon()`. Note that the resulting
    /// surface may not be exactly this size; an icon theme may have icons
    /// that differ slightly from their nominal sizes, and in addition GTK+
    /// will avoid scaling icons that it considers sufficiently close to the
    /// requested size or for which the source image would have to be scaled
    /// up too far. (This maintains sharpness.). This behaviour can be changed
    /// by passing the `GTK_ICON_LOOKUP_FORCE_SIZE` flag when obtaining
    /// the `GtkIconInfo`. If this flag has been specified, the pixbuf
    /// returned by this function will be scaled to the exact size.
    @inlinable func loadSurface<WindowT: Gdk.WindowProtocol>(`for` window: WindowT?) throws -> Cairo.SurfaceRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = Cairo.SurfaceRef(gtk_icon_info_load_surface(icon_info_ptr, window?.window_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Loads an icon, modifying it to match the system colours for the foreground,
    /// success, warning and error colors provided. If the icon is not a symbolic
    /// one, the function will return the result from `gtk_icon_info_load_icon()`.
    /// 
    /// This allows loading symbolic icons that will match the system theme.
    /// 
    /// Unless you are implementing a widget, you will want to use
    /// `g_themed_icon_new_with_default_fallbacks()` to load the icon.
    /// 
    /// As implementation details, the icon loaded needs to be of SVG type,
    /// contain the “symbolic” term as the last component of the icon name,
    /// and use the “fg”, “success”, “warning” and “error” CSS styles in the
    /// SVG file itself.
    /// 
    /// See the [Symbolic Icons Specification](http://www.freedesktop.org/wiki/SymbolicIcons)
    /// for more information about symbolic icons.
    @inlinable func loadSymbolic<RGBAT: Gdk.RGBAProtocol>(fg: RGBAT, successColor: RGBAT?, warningColor: RGBAT?, errorColor: RGBAT?, wasSymbolic: UnsafeMutablePointer<gboolean>! = nil) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_info_load_symbolic(icon_info_ptr, fg.rgba_ptr, successColor?.rgba_ptr, warningColor?.rgba_ptr, errorColor?.rgba_ptr, wasSymbolic, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously load, render and scale a symbolic icon previously looked up
    /// from the icon theme using `gtk_icon_theme_lookup_icon()`.
    /// 
    /// For more details, see `gtk_icon_info_load_symbolic()` which is the synchronous
    /// version of this call.
    @inlinable func loadSymbolicAsync<RGBAT: Gdk.RGBAProtocol>(fg: RGBAT, successColor: Gdk.RGBARef? = nil, warningColor: Gdk.RGBARef? = nil, errorColor: Gdk.RGBARef? = nil, cancellable: GIO.CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gtk_icon_info_load_symbolic_async(icon_info_ptr, fg.rgba_ptr, successColor?.rgba_ptr, warningColor?.rgba_ptr, errorColor?.rgba_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously load, render and scale a symbolic icon previously looked up
    /// from the icon theme using `gtk_icon_theme_lookup_icon()`.
    /// 
    /// For more details, see `gtk_icon_info_load_symbolic()` which is the synchronous
    /// version of this call.
    @inlinable func loadSymbolicAsync<CancellableT: GIO.CancellableProtocol, RGBAT: Gdk.RGBAProtocol>(fg: RGBAT, successColor: RGBAT?, warningColor: RGBAT?, errorColor: RGBAT?, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gtk_icon_info_load_symbolic_async(icon_info_ptr, fg.rgba_ptr, successColor?.rgba_ptr, warningColor?.rgba_ptr, errorColor?.rgba_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an async icon load, see `gtk_icon_info_load_symbolic_async()`.
    @inlinable func loadSymbolicFinish<AsyncResultT: GIO.AsyncResultProtocol>(res: AsyncResultT, wasSymbolic: UnsafeMutablePointer<gboolean>! = nil) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_info_load_symbolic_finish(icon_info_ptr, res.async_result_ptr, wasSymbolic, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Loads an icon, modifying it to match the system colors for the foreground,
    /// success, warning and error colors provided. If the icon is not a symbolic
    /// one, the function will return the result from `gtk_icon_info_load_icon()`.
    /// This function uses the regular foreground color and the symbolic colors
    /// with the names “success_color”, “warning_color” and “error_color” from
    /// the context.
    /// 
    /// This allows loading symbolic icons that will match the system theme.
    /// 
    /// See `gtk_icon_info_load_symbolic()` for more details.
    @inlinable func loadSymbolicFor<StyleContextT: StyleContextProtocol>(context: StyleContextT, wasSymbolic: UnsafeMutablePointer<gboolean>! = nil) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_info_load_symbolic_for_context(icon_info_ptr, context.style_context_ptr, wasSymbolic, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously load, render and scale a symbolic icon previously
    /// looked up from the icon theme using `gtk_icon_theme_lookup_icon()`.
    /// 
    /// For more details, see `gtk_icon_info_load_symbolic_for_context()`
    /// which is the synchronous version of this call.
    @inlinable func loadSymbolicForContextAsync<StyleContextT: StyleContextProtocol>(context: StyleContextT, cancellable: GIO.CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gtk_icon_info_load_symbolic_for_context_async(icon_info_ptr, context.style_context_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously load, render and scale a symbolic icon previously
    /// looked up from the icon theme using `gtk_icon_theme_lookup_icon()`.
    /// 
    /// For more details, see `gtk_icon_info_load_symbolic_for_context()`
    /// which is the synchronous version of this call.
    @inlinable func loadSymbolicForContextAsync<CancellableT: GIO.CancellableProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gtk_icon_info_load_symbolic_for_context_async(icon_info_ptr, context.style_context_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an async icon load, see `gtk_icon_info_load_symbolic_for_context_async()`.
    @inlinable func loadSymbolicForContextFinish<AsyncResultT: GIO.AsyncResultProtocol>(res: AsyncResultT, wasSymbolic: UnsafeMutablePointer<gboolean>! = nil) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_info_load_symbolic_for_context_finish(icon_info_ptr, res.async_result_ptr, wasSymbolic, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Loads an icon, modifying it to match the system colours for the foreground,
    /// success, warning and error colors provided. If the icon is not a symbolic
    /// one, the function will return the result from `gtk_icon_info_load_icon()`.
    /// 
    /// This allows loading symbolic icons that will match the system theme.
    /// 
    /// See `gtk_icon_info_load_symbolic()` for more details.
    ///
    /// **load_symbolic_for_style is deprecated:**
    /// Use gtk_icon_info_load_symbolic_for_context() instead
    @available(*, deprecated)
    @inlinable func loadSymbolicFor<StyleT: StyleProtocol>(style: StyleT, state: GtkStateType, wasSymbolic: UnsafeMutablePointer<gboolean>! = nil) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_info_load_symbolic_for_style(icon_info_ptr, style.style_ptr, state, wasSymbolic, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets whether the coordinates returned by `gtk_icon_info_get_embedded_rect()`
    /// and `gtk_icon_info_get_attach_points()` should be returned in their
    /// original form as specified in the icon theme, instead of scaled
    /// appropriately for the pixbuf returned by `gtk_icon_info_load_icon()`.
    /// 
    /// Raw coordinates are somewhat strange; they are specified to be with
    /// respect to the unscaled pixmap for PNG and XPM icons, but for SVG
    /// icons, they are in a 1000x1000 coordinate space that is scaled
    /// to the final size of the icon.  You can determine if the icon is an SVG
    /// icon by using `gtk_icon_info_get_filename()`, and seeing if it is non-`nil`
    /// and ends in “.svg”.
    /// 
    /// This function is provided primarily to allow compatibility wrappers
    /// for older API's, and is not expected to be useful for applications.
    ///
    /// **set_raw_coordinates is deprecated:**
    /// Embedded rectangles and attachment points are deprecated
    @available(*, deprecated)
    @inlinable func set(rawCoordinates: Bool) {
        gtk_icon_info_set_raw_coordinates(icon_info_ptr, gboolean((rawCoordinates) ? 1 : 0))
    
    }
    /// Gets the base scale for the icon. The base scale is a scale
    /// for the icon that was specified by the icon theme creator.
    /// For instance an icon drawn for a high-dpi screen with window
    /// scale 2 for a base size of 32 will be 64 pixels tall and have
    /// a base scale of 2.
    @inlinable var baseScale: Int {
        /// Gets the base scale for the icon. The base scale is a scale
        /// for the icon that was specified by the icon theme creator.
        /// For instance an icon drawn for a high-dpi screen with window
        /// scale 2 for a base size of 32 will be 64 pixels tall and have
        /// a base scale of 2.
        get {
            let rv = Int(gtk_icon_info_get_base_scale(icon_info_ptr))
            return rv
        }
    }

    /// Gets the base size for the icon. The base size
    /// is a size for the icon that was specified by
    /// the icon theme creator. This may be different
    /// than the actual size of image; an example of
    /// this is small emblem icons that can be attached
    /// to a larger icon. These icons will be given
    /// the same base size as the larger icons to which
    /// they are attached.
    /// 
    /// Note that for scaled icons the base size does
    /// not include the base scale.
    @inlinable var baseSize: Int {
        /// Gets the base size for the icon. The base size
        /// is a size for the icon that was specified by
        /// the icon theme creator. This may be different
        /// than the actual size of image; an example of
        /// this is small emblem icons that can be attached
        /// to a larger icon. These icons will be given
        /// the same base size as the larger icons to which
        /// they are attached.
        /// 
        /// Note that for scaled icons the base size does
        /// not include the base scale.
        get {
            let rv = Int(gtk_icon_info_get_base_size(icon_info_ptr))
            return rv
        }
    }

    /// Gets the built-in image for this icon, if any. To allow GTK+ to use
    /// built in icon images, you must pass the `GTK_ICON_LOOKUP_USE_BUILTIN`
    /// to `gtk_icon_theme_lookup_icon()`.
    ///
    /// **get_builtin_pixbuf is deprecated:**
    /// This function is deprecated, use
    ///     gtk_icon_theme_add_resource_path() instead of builtin icons.
    @inlinable var builtinPixbuf: PixbufRef! {
        /// Gets the built-in image for this icon, if any. To allow GTK+ to use
        /// built in icon images, you must pass the `GTK_ICON_LOOKUP_USE_BUILTIN`
        /// to `gtk_icon_theme_lookup_icon()`.
        ///
        /// **get_builtin_pixbuf is deprecated:**
        /// This function is deprecated, use
        ///     gtk_icon_theme_add_resource_path() instead of builtin icons.
        @available(*, deprecated)
    get {
            let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_info_get_builtin_pixbuf(icon_info_ptr)))
            return rv
        }
    }

    /// This function is deprecated and always returns `nil`.
    ///
    /// **get_display_name is deprecated:**
    /// Display names are deprecated
    @inlinable var displayName: String! {
        /// This function is deprecated and always returns `nil`.
        ///
        /// **get_display_name is deprecated:**
        /// Display names are deprecated
        @available(*, deprecated)
    get {
            let rv = gtk_icon_info_get_display_name(icon_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the filename for the icon. If the `GTK_ICON_LOOKUP_USE_BUILTIN`
    /// flag was passed to `gtk_icon_theme_lookup_icon()`, there may be no
    /// filename if a builtin icon is returned; in this case, you should
    /// use `gtk_icon_info_get_builtin_pixbuf()`.
    @inlinable var filename: String! {
        /// Gets the filename for the icon. If the `GTK_ICON_LOOKUP_USE_BUILTIN`
        /// flag was passed to `gtk_icon_theme_lookup_icon()`, there may be no
        /// filename if a builtin icon is returned; in this case, you should
        /// use `gtk_icon_info_get_builtin_pixbuf()`.
        get {
            let rv = gtk_icon_info_get_filename(icon_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Checks if the icon is symbolic or not. This currently uses only
    /// the file name and not the file contents for determining this.
    /// This behaviour may change in the future.
    @inlinable var isSymbolic: Bool {
        /// Checks if the icon is symbolic or not. This currently uses only
        /// the file name and not the file contents for determining this.
        /// This behaviour may change in the future.
        get {
            let rv = ((gtk_icon_info_is_symbolic(icon_info_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - IconTheme Class

/// `GtkIconTheme` provides a facility for looking up icons by name
/// and size. The main reason for using a name rather than simply
/// providing a filename is to allow different icons to be used
/// depending on what “icon theme” is selected
/// by the user. The operation of icon themes on Linux and Unix
/// follows the [Icon Theme Specification](http://www.freedesktop.org/Standards/icon-theme-spec)
/// There is a fallback icon theme, named `hicolor`, where applications
/// should install their icons, but additional icon themes can be installed
/// as operating system vendors and users choose.
/// 
/// Named icons are similar to the deprecated [Stock Items](#gtkstock),
/// and the distinction between the two may be a bit confusing.
/// A few things to keep in mind:
/// 
/// - Stock images usually are used in conjunction with
///   [Stock Items](#gtkstock), such as `GTK_STOCK_OK` or
///   `GTK_STOCK_OPEN`. Named icons are easier to set up and therefore
///   are more useful for new icons that an application wants to
///   add, such as application icons or window icons.
/// 
/// - Stock images can only be loaded at the symbolic sizes defined
///   by the `GtkIconSize` enumeration, or by custom sizes defined
///   by `gtk_icon_size_register()`, while named icons are more flexible
///   and any pixel size can be specified.
/// 
/// - Because stock images are closely tied to stock items, and thus
///   to actions in the user interface, stock images may come in
///   multiple variants for different widget states or writing
///   directions.
/// 
/// A good rule of thumb is that if there is a stock image for what
/// you want to use, use it, otherwise use a named icon. It turns
/// out that internally stock images are generally defined in
/// terms of one or more named icons. (An example of the
/// more than one case is icons that depend on writing direction;
/// `GTK_STOCK_GO_FORWARD` uses the two themed icons
/// “gtk-stock-go-forward-ltr” and “gtk-stock-go-forward-rtl”.)
/// 
/// In many cases, named themes are used indirectly, via `GtkImage`
/// or stock items, rather than directly, but looking up icons
/// directly is also simple. The `GtkIconTheme` object acts
/// as a database of all the icons in the current theme. You
/// can create new `GtkIconTheme` objects, but it’s much more
/// efficient to use the standard icon theme for the `GdkScreen`
/// so that the icon information is shared with other people
/// looking up icons.
/// (C Language Example):
/// ```C
/// GError *error = NULL;
/// GtkIconTheme *icon_theme;
/// GdkPixbuf *pixbuf;
/// 
/// icon_theme = gtk_icon_theme_get_default ();
/// pixbuf = gtk_icon_theme_load_icon (icon_theme,
///                                    "my-icon-name", // icon name
///                                    48, // icon size
///                                    0,  // flags
///                                    &error);
/// if (!pixbuf)
///   {
///     g_warning ("Couldn’t load icon: %s", error->message);
///     g_error_free (error);
///   }
/// else
///   {
///     // Use the pixbuf
///     g_object_unref (pixbuf);
///   }
/// ```
/// 
///
/// The `IconThemeProtocol` protocol exposes the methods and properties of an underlying `GtkIconTheme` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconTheme`.
/// Alternatively, use `IconThemeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IconThemeProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkIconTheme` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIconTheme` instance.
    var icon_theme_ptr: UnsafeMutablePointer<GtkIconTheme>! { get }

    /// Required Initialiser for types conforming to `IconThemeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkIconTheme` provides a facility for looking up icons by name
/// and size. The main reason for using a name rather than simply
/// providing a filename is to allow different icons to be used
/// depending on what “icon theme” is selected
/// by the user. The operation of icon themes on Linux and Unix
/// follows the [Icon Theme Specification](http://www.freedesktop.org/Standards/icon-theme-spec)
/// There is a fallback icon theme, named `hicolor`, where applications
/// should install their icons, but additional icon themes can be installed
/// as operating system vendors and users choose.
/// 
/// Named icons are similar to the deprecated [Stock Items](#gtkstock),
/// and the distinction between the two may be a bit confusing.
/// A few things to keep in mind:
/// 
/// - Stock images usually are used in conjunction with
///   [Stock Items](#gtkstock), such as `GTK_STOCK_OK` or
///   `GTK_STOCK_OPEN`. Named icons are easier to set up and therefore
///   are more useful for new icons that an application wants to
///   add, such as application icons or window icons.
/// 
/// - Stock images can only be loaded at the symbolic sizes defined
///   by the `GtkIconSize` enumeration, or by custom sizes defined
///   by `gtk_icon_size_register()`, while named icons are more flexible
///   and any pixel size can be specified.
/// 
/// - Because stock images are closely tied to stock items, and thus
///   to actions in the user interface, stock images may come in
///   multiple variants for different widget states or writing
///   directions.
/// 
/// A good rule of thumb is that if there is a stock image for what
/// you want to use, use it, otherwise use a named icon. It turns
/// out that internally stock images are generally defined in
/// terms of one or more named icons. (An example of the
/// more than one case is icons that depend on writing direction;
/// `GTK_STOCK_GO_FORWARD` uses the two themed icons
/// “gtk-stock-go-forward-ltr” and “gtk-stock-go-forward-rtl”.)
/// 
/// In many cases, named themes are used indirectly, via `GtkImage`
/// or stock items, rather than directly, but looking up icons
/// directly is also simple. The `GtkIconTheme` object acts
/// as a database of all the icons in the current theme. You
/// can create new `GtkIconTheme` objects, but it’s much more
/// efficient to use the standard icon theme for the `GdkScreen`
/// so that the icon information is shared with other people
/// looking up icons.
/// (C Language Example):
/// ```C
/// GError *error = NULL;
/// GtkIconTheme *icon_theme;
/// GdkPixbuf *pixbuf;
/// 
/// icon_theme = gtk_icon_theme_get_default ();
/// pixbuf = gtk_icon_theme_load_icon (icon_theme,
///                                    "my-icon-name", // icon name
///                                    48, // icon size
///                                    0,  // flags
///                                    &error);
/// if (!pixbuf)
///   {
///     g_warning ("Couldn’t load icon: %s", error->message);
///     g_error_free (error);
///   }
/// else
///   {
///     // Use the pixbuf
///     g_object_unref (pixbuf);
///   }
/// ```
/// 
///
/// The `IconThemeRef` type acts as a lightweight Swift reference to an underlying `GtkIconTheme` instance.
/// It exposes methods that can operate on this data type through `IconThemeProtocol` conformance.
/// Use `IconThemeRef` only as an `unowned` reference to an existing `GtkIconTheme` instance.
///
public struct IconThemeRef: IconThemeProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkIconTheme` instance.
    /// For type-safe access, use the generated, typed pointer `icon_theme_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconThemeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIconTheme>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIconTheme>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIconTheme>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIconTheme>?) {
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

    /// Reference intialiser for a related type that implements `IconThemeProtocol`
    @inlinable init<T: IconThemeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IconThemeProtocol>(_ other: T) -> IconThemeRef { IconThemeRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new icon theme object. Icon theme objects are used
    /// to lookup up an icon by name in a particular icon theme.
    /// Usually, you’ll want to use `gtk_icon_theme_get_default()`
    /// or `gtk_icon_theme_get_for_screen()` rather than creating
    /// a new icon theme object for scratch.
    @inlinable init() {
        let rv = gtk_icon_theme_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Gets the icon theme for the default screen. See
    /// `gtk_icon_theme_get_for_screen()`.
    @inlinable static func getDefault() -> IconThemeRef! {
        guard let rv = IconThemeRef(gconstpointer: gconstpointer(gtk_icon_theme_get_default())) else { return nil }
        return rv
    }

    /// Gets the icon theme object associated with `screen`; if this
    /// function has not previously been called for the given
    /// screen, a new icon theme object will be created and
    /// associated with the screen. Icon theme objects are
    /// fairly expensive to create, so using this function
    /// is usually a better choice than calling than `gtk_icon_theme_new()`
    /// and setting the screen yourself; by using this function
    /// a single icon theme object will be shared between users.
    @inlinable static func getFor<ScreenT: Gdk.ScreenProtocol>(screen: ScreenT) -> IconThemeRef! {
        guard let rv = IconThemeRef(gconstpointer: gconstpointer(gtk_icon_theme_get_for_screen(screen.screen_ptr))) else { return nil }
        return rv
    }
}

/// `GtkIconTheme` provides a facility for looking up icons by name
/// and size. The main reason for using a name rather than simply
/// providing a filename is to allow different icons to be used
/// depending on what “icon theme” is selected
/// by the user. The operation of icon themes on Linux and Unix
/// follows the [Icon Theme Specification](http://www.freedesktop.org/Standards/icon-theme-spec)
/// There is a fallback icon theme, named `hicolor`, where applications
/// should install their icons, but additional icon themes can be installed
/// as operating system vendors and users choose.
/// 
/// Named icons are similar to the deprecated [Stock Items](#gtkstock),
/// and the distinction between the two may be a bit confusing.
/// A few things to keep in mind:
/// 
/// - Stock images usually are used in conjunction with
///   [Stock Items](#gtkstock), such as `GTK_STOCK_OK` or
///   `GTK_STOCK_OPEN`. Named icons are easier to set up and therefore
///   are more useful for new icons that an application wants to
///   add, such as application icons or window icons.
/// 
/// - Stock images can only be loaded at the symbolic sizes defined
///   by the `GtkIconSize` enumeration, or by custom sizes defined
///   by `gtk_icon_size_register()`, while named icons are more flexible
///   and any pixel size can be specified.
/// 
/// - Because stock images are closely tied to stock items, and thus
///   to actions in the user interface, stock images may come in
///   multiple variants for different widget states or writing
///   directions.
/// 
/// A good rule of thumb is that if there is a stock image for what
/// you want to use, use it, otherwise use a named icon. It turns
/// out that internally stock images are generally defined in
/// terms of one or more named icons. (An example of the
/// more than one case is icons that depend on writing direction;
/// `GTK_STOCK_GO_FORWARD` uses the two themed icons
/// “gtk-stock-go-forward-ltr” and “gtk-stock-go-forward-rtl”.)
/// 
/// In many cases, named themes are used indirectly, via `GtkImage`
/// or stock items, rather than directly, but looking up icons
/// directly is also simple. The `GtkIconTheme` object acts
/// as a database of all the icons in the current theme. You
/// can create new `GtkIconTheme` objects, but it’s much more
/// efficient to use the standard icon theme for the `GdkScreen`
/// so that the icon information is shared with other people
/// looking up icons.
/// (C Language Example):
/// ```C
/// GError *error = NULL;
/// GtkIconTheme *icon_theme;
/// GdkPixbuf *pixbuf;
/// 
/// icon_theme = gtk_icon_theme_get_default ();
/// pixbuf = gtk_icon_theme_load_icon (icon_theme,
///                                    "my-icon-name", // icon name
///                                    48, // icon size
///                                    0,  // flags
///                                    &error);
/// if (!pixbuf)
///   {
///     g_warning ("Couldn’t load icon: %s", error->message);
///     g_error_free (error);
///   }
/// else
///   {
///     // Use the pixbuf
///     g_object_unref (pixbuf);
///   }
/// ```
/// 
///
/// The `IconTheme` type acts as a reference-counted owner of an underlying `GtkIconTheme` instance.
/// It provides the methods that can operate on this data type through `IconThemeProtocol` conformance.
/// Use `IconTheme` as a strong reference or owner of a `GtkIconTheme` instance.
///
open class IconTheme: GLibObject.Object, IconThemeProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconTheme` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIconTheme>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconTheme` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIconTheme>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconTheme` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconTheme` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconTheme` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIconTheme>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconTheme` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIconTheme>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkIconTheme`.
    /// i.e., ownership is transferred to the `IconTheme` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIconTheme>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IconThemeProtocol`
    /// Will retain `GtkIconTheme`.
    /// - Parameter other: an instance of a related type that implements `IconThemeProtocol`
    @inlinable public init<T: IconThemeProtocol>(iconTheme other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new icon theme object. Icon theme objects are used
    /// to lookup up an icon by name in a particular icon theme.
    /// Usually, you’ll want to use `gtk_icon_theme_get_default()`
    /// or `gtk_icon_theme_get_for_screen()` rather than creating
    /// a new icon theme object for scratch.
    @inlinable public init() {
        let rv = gtk_icon_theme_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Gets the icon theme for the default screen. See
    /// `gtk_icon_theme_get_for_screen()`.
    @inlinable public static func getDefault() -> IconTheme! {
        guard let rv = IconTheme(gconstpointer: gconstpointer(gtk_icon_theme_get_default())) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Gets the icon theme object associated with `screen`; if this
    /// function has not previously been called for the given
    /// screen, a new icon theme object will be created and
    /// associated with the screen. Icon theme objects are
    /// fairly expensive to create, so using this function
    /// is usually a better choice than calling than `gtk_icon_theme_new()`
    /// and setting the screen yourself; by using this function
    /// a single icon theme object will be shared between users.
    @inlinable public static func getFor<ScreenT: Gdk.ScreenProtocol>(screen: ScreenT) -> IconTheme! {
        guard let rv = IconTheme(gconstpointer: gconstpointer(gtk_icon_theme_get_for_screen(screen.screen_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

// MARK: no IconTheme properties

public enum IconThemeSignalName: String, SignalNameProtocol {
    /// Emitted when the current icon theme is switched or GTK+ detects
    /// that a change has occurred in the contents of the current
    /// icon theme.
    case changed = "changed"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: IconTheme signals
public extension IconThemeProtocol {
    /// Connect a Swift signal handler to the given, typed `IconThemeSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: IconThemeSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `IconThemeSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: IconThemeSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the current icon theme is switched or GTK+ detects
    /// that a change has occurred in the contents of the current
    /// icon theme.
    /// - Note: This represents the underlying `changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `changed` signal is emitted
    @discardableResult @inlinable func onChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconThemeRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IconThemeRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconThemeRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .changed,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `changed` signal for using the `connect(signal:)` methods
    static var changedSignal: IconThemeSignalName { .changed }
    
    
}

// MARK: IconTheme Class: IconThemeProtocol extension (methods and fields)
public extension IconThemeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconTheme` instance.
    @inlinable var icon_theme_ptr: UnsafeMutablePointer<GtkIconTheme>! { return ptr?.assumingMemoryBound(to: GtkIconTheme.self) }

    /// Adds a resource path that will be looked at when looking
    /// for icons, similar to search paths.
    /// 
    /// This function should be used to make application-specific icons
    /// available as part of the icon theme.
    /// 
    /// The resources are considered as part of the hicolor icon theme
    /// and must be located in subdirectories that are defined in the
    /// hicolor icon theme, such as ``path`/16x16/actions/run.png`.
    /// Icons that are directly placed in the resource path instead
    /// of a subdirectory are also considered as ultimate fallback.
    @inlinable func addResource(path: UnsafePointer<gchar>!) {
        gtk_icon_theme_add_resource_path(icon_theme_ptr, path)
    
    }

    /// Appends a directory to the search path.
    /// See `gtk_icon_theme_set_search_path()`.
    @inlinable func appendSearch(path: UnsafePointer<gchar>!) {
        gtk_icon_theme_append_search_path(icon_theme_ptr, path)
    
    }

    /// Looks up a named icon and returns a `GtkIconInfo` containing
    /// information such as the filename of the icon. The icon
    /// can then be rendered into a pixbuf using
    /// `gtk_icon_info_load_icon()`. (`gtk_icon_theme_load_icon()`
    /// combines these two steps if all you need is the pixbuf.)
    /// 
    /// If `icon_names` contains more than one name, this function
    /// tries them all in the given order before falling back to
    /// inherited icon themes.
    @inlinable func chooseIcon(iconNames: UnsafeMutablePointer<UnsafePointer<gchar>?>!, size: Int, flags: IconLookupFlags) -> IconInfoRef! {
        let rv = IconInfoRef(gconstpointer: gconstpointer(gtk_icon_theme_choose_icon(icon_theme_ptr, iconNames, gint(size), flags.value)))
        return rv
    }

    /// Looks up a named icon for a particular window scale and returns
    /// a `GtkIconInfo` containing information such as the filename of the
    /// icon. The icon can then be rendered into a pixbuf using
    /// `gtk_icon_info_load_icon()`. (`gtk_icon_theme_load_icon()`
    /// combines these two steps if all you need is the pixbuf.)
    /// 
    /// If `icon_names` contains more than one name, this function
    /// tries them all in the given order before falling back to
    /// inherited icon themes.
    @inlinable func chooseIconForScale(iconNames: UnsafeMutablePointer<UnsafePointer<gchar>?>!, size: Int, scale: Int, flags: IconLookupFlags) -> IconInfoRef! {
        let rv = IconInfoRef(gconstpointer: gconstpointer(gtk_icon_theme_choose_icon_for_scale(icon_theme_ptr, iconNames, gint(size), gint(scale), flags.value)))
        return rv
    }

    /// Gets the name of an icon that is representative of the
    /// current theme (for instance, to use when presenting
    /// a list of themes to the user.)
    @inlinable func getExampleIconName() -> String! {
        let rv = gtk_icon_theme_get_example_icon_name(icon_theme_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns an array of integers describing the sizes at which
    /// the icon is available without scaling. A size of -1 means
    /// that the icon is available in a scalable format. The array
    /// is zero-terminated.
    @inlinable func getIconSizes(iconName: UnsafePointer<gchar>!) -> UnsafeMutablePointer<gint>! {
        let rv = gtk_icon_theme_get_icon_sizes(icon_theme_ptr, iconName)
        return rv
    }

    /// Gets the current search path. See `gtk_icon_theme_set_search_path()`.
    @inlinable func getSearch(path: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>?>! = nil, nElements: UnsafeMutablePointer<gint>!) {
        gtk_icon_theme_get_search_path(icon_theme_ptr, path, nElements)
    
    }

    /// Checks whether an icon theme includes an icon
    /// for a particular name.
    @inlinable func hasIcon(iconName: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gtk_icon_theme_has_icon(icon_theme_ptr, iconName)) != 0)
        return rv
    }

    /// Gets the list of contexts available within the current
    /// hierarchy of icon themes.
    /// See `gtk_icon_theme_list_icons()` for details about contexts.
    @inlinable func listContexts() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_icon_theme_list_contexts(icon_theme_ptr))
        return rv
    }

    /// Lists the icons in the current icon theme. Only a subset
    /// of the icons can be listed by providing a context string.
    /// The set of values for the context string is system dependent,
    /// but will typically include such values as “Applications” and
    /// “MimeTypes”. Contexts are explained in the
    /// [Icon Theme Specification](http://www.freedesktop.org/wiki/Specifications/icon-theme-spec).
    /// The standard contexts are listed in the
    /// [Icon Naming Specification](http://www.freedesktop.org/wiki/Specifications/icon-naming-spec).
    /// Also see `gtk_icon_theme_list_contexts()`.
    @inlinable func listIcons(context: UnsafePointer<gchar>? = nil) -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_icon_theme_list_icons(icon_theme_ptr, context))
        return rv
    }

    /// Looks up an icon in an icon theme, scales it to the given size
    /// and renders it into a pixbuf. This is a convenience function;
    /// if more details about the icon are needed, use
    /// `gtk_icon_theme_lookup_icon()` followed by `gtk_icon_info_load_icon()`.
    /// 
    /// Note that you probably want to listen for icon theme changes and
    /// update the icon. This is usually done by connecting to the
    /// GtkWidget`style-set` signal. If for some reason you do not want to
    /// update the icon when the icon theme changes, you should consider
    /// using `gdk_pixbuf_copy()` to make a private copy of the pixbuf
    /// returned by this function. Otherwise GTK+ may need to keep the old
    /// icon theme loaded, which would be a waste of memory.
    @inlinable func loadIcon(iconName: UnsafePointer<gchar>!, size: Int, flags: IconLookupFlags) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_theme_load_icon(icon_theme_ptr, iconName, gint(size), flags.value, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Looks up an icon in an icon theme for a particular window scale,
    /// scales it to the given size and renders it into a pixbuf. This is a
    /// convenience function; if more details about the icon are needed,
    /// use `gtk_icon_theme_lookup_icon()` followed by
    /// `gtk_icon_info_load_icon()`.
    /// 
    /// Note that you probably want to listen for icon theme changes and
    /// update the icon. This is usually done by connecting to the
    /// GtkWidget`style-set` signal. If for some reason you do not want to
    /// update the icon when the icon theme changes, you should consider
    /// using `gdk_pixbuf_copy()` to make a private copy of the pixbuf
    /// returned by this function. Otherwise GTK+ may need to keep the old
    /// icon theme loaded, which would be a waste of memory.
    @inlinable func loadIconForScale(iconName: UnsafePointer<gchar>!, size: Int, scale: Int, flags: IconLookupFlags) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_theme_load_icon_for_scale(icon_theme_ptr, iconName, gint(size), gint(scale), flags.value, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Looks up an icon in an icon theme for a particular window scale,
    /// scales it to the given size and renders it into a cairo surface. This is a
    /// convenience function; if more details about the icon are needed,
    /// use `gtk_icon_theme_lookup_icon()` followed by
    /// `gtk_icon_info_load_surface()`.
    /// 
    /// Note that you probably want to listen for icon theme changes and
    /// update the icon. This is usually done by connecting to the
    /// GtkWidget`style-set` signal.
    @inlinable func loadSurface(iconName: UnsafePointer<gchar>!, size: Int, scale: Int, `for` window: Gdk.WindowRef? = nil, flags: IconLookupFlags) throws -> Cairo.SurfaceRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = Cairo.SurfaceRef(gtk_icon_theme_load_surface(icon_theme_ptr, iconName, gint(size), gint(scale), window?.window_ptr, flags.value, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Looks up an icon in an icon theme for a particular window scale,
    /// scales it to the given size and renders it into a cairo surface. This is a
    /// convenience function; if more details about the icon are needed,
    /// use `gtk_icon_theme_lookup_icon()` followed by
    /// `gtk_icon_info_load_surface()`.
    /// 
    /// Note that you probably want to listen for icon theme changes and
    /// update the icon. This is usually done by connecting to the
    /// GtkWidget`style-set` signal.
    @inlinable func loadSurface<WindowT: Gdk.WindowProtocol>(iconName: UnsafePointer<gchar>!, size: Int, scale: Int, `for` window: WindowT?, flags: IconLookupFlags) throws -> Cairo.SurfaceRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = Cairo.SurfaceRef(gtk_icon_theme_load_surface(icon_theme_ptr, iconName, gint(size), gint(scale), window?.window_ptr, flags.value, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Looks up an icon and returns a `GtkIconInfo` containing information
    /// such as the filename of the icon. The icon can then be rendered
    /// into a pixbuf using `gtk_icon_info_load_icon()`.
    /// 
    /// When rendering on displays with high pixel densities you should not
    /// use a `size` multiplied by the scaling factor returned by functions
    /// like `gdk_window_get_scale_factor()`. Instead, you should use
    /// `gtk_icon_theme_lookup_by_gicon_for_scale()`, as the assets loaded
    /// for a given scaling factor may be different.
    @inlinable func lookupByIcon<IconT: GIO.IconProtocol>(icon: IconT, size: Int, flags: IconLookupFlags) -> IconInfoRef! {
        let rv = IconInfoRef(gconstpointer: gconstpointer(gtk_icon_theme_lookup_by_gicon(icon_theme_ptr, icon.icon_ptr, gint(size), flags.value)))
        return rv
    }

    /// Looks up an icon and returns a `GtkIconInfo` containing information
    /// such as the filename of the icon. The icon can then be rendered into
    /// a pixbuf using `gtk_icon_info_load_icon()`.
    @inlinable func lookupByIconForScale<IconT: GIO.IconProtocol>(icon: IconT, size: Int, scale: Int, flags: IconLookupFlags) -> IconInfoRef! {
        let rv = IconInfoRef(gconstpointer: gconstpointer(gtk_icon_theme_lookup_by_gicon_for_scale(icon_theme_ptr, icon.icon_ptr, gint(size), gint(scale), flags.value)))
        return rv
    }

    /// Looks up a named icon and returns a `GtkIconInfo` containing
    /// information such as the filename of the icon. The icon
    /// can then be rendered into a pixbuf using
    /// `gtk_icon_info_load_icon()`. (`gtk_icon_theme_load_icon()`
    /// combines these two steps if all you need is the pixbuf.)
    /// 
    /// When rendering on displays with high pixel densities you should not
    /// use a `size` multiplied by the scaling factor returned by functions
    /// like `gdk_window_get_scale_factor()`. Instead, you should use
    /// `gtk_icon_theme_lookup_icon_for_scale()`, as the assets loaded
    /// for a given scaling factor may be different.
    @inlinable func lookupIcon(iconName: UnsafePointer<gchar>!, size: Int, flags: IconLookupFlags) -> IconInfoRef! {
        let rv = IconInfoRef(gconstpointer: gconstpointer(gtk_icon_theme_lookup_icon(icon_theme_ptr, iconName, gint(size), flags.value)))
        return rv
    }

    /// Looks up a named icon for a particular window scale and returns a
    /// `GtkIconInfo` containing information such as the filename of the
    /// icon. The icon can then be rendered into a pixbuf using
    /// `gtk_icon_info_load_icon()`. (`gtk_icon_theme_load_icon()` combines
    /// these two steps if all you need is the pixbuf.)
    @inlinable func lookupIconForScale(iconName: UnsafePointer<gchar>!, size: Int, scale: Int, flags: IconLookupFlags) -> IconInfoRef! {
        let rv = IconInfoRef(gconstpointer: gconstpointer(gtk_icon_theme_lookup_icon_for_scale(icon_theme_ptr, iconName, gint(size), gint(scale), flags.value)))
        return rv
    }

    /// Prepends a directory to the search path.
    /// See `gtk_icon_theme_set_search_path()`.
    @inlinable func prependSearch(path: UnsafePointer<gchar>!) {
        gtk_icon_theme_prepend_search_path(icon_theme_ptr, path)
    
    }

    /// Checks to see if the icon theme has changed; if it has, any
    /// currently cached information is discarded and will be reloaded
    /// next time `icon_theme` is accessed.
    @inlinable func rescanIfNeeded() -> Bool {
        let rv = ((gtk_icon_theme_rescan_if_needed(icon_theme_ptr)) != 0)
        return rv
    }

    /// Sets the name of the icon theme that the `GtkIconTheme` object uses
    /// overriding system configuration. This function cannot be called
    /// on the icon theme objects returned from `gtk_icon_theme_get_default()`
    /// and `gtk_icon_theme_get_for_screen()`.
    @inlinable func setCustomTheme(themeName: UnsafePointer<gchar>? = nil) {
        gtk_icon_theme_set_custom_theme(icon_theme_ptr, themeName)
    
    }

    /// Sets the screen for an icon theme; the screen is used
    /// to track the user’s currently configured icon theme,
    /// which might be different for different screens.
    @inlinable func set<ScreenT: Gdk.ScreenProtocol>(screen: ScreenT) {
        gtk_icon_theme_set_screen(icon_theme_ptr, screen.screen_ptr)
    
    }

    /// Sets the search path for the icon theme object. When looking
    /// for an icon theme, GTK+ will search for a subdirectory of
    /// one or more of the directories in `path` with the same name
    /// as the icon theme containing an index.theme file. (Themes from
    /// multiple of the path elements are combined to allow themes to be
    /// extended by adding icons in the user’s home directory.)
    /// 
    /// In addition if an icon found isn’t found either in the current
    /// icon theme or the default icon theme, and an image file with
    /// the right name is found directly in one of the elements of
    /// `path`, then that image will be used for the icon name.
    /// (This is legacy feature, and new icons should be put
    /// into the fallback icon theme, which is called hicolor,
    /// rather than directly on the icon path.)
    @inlinable func setSearch(path: UnsafeMutablePointer<UnsafePointer<gchar>?>!, nElements: Int) {
        gtk_icon_theme_set_search_path(icon_theme_ptr, path, gint(nElements))
    
    }
    /// Gets the name of an icon that is representative of the
    /// current theme (for instance, to use when presenting
    /// a list of themes to the user.)
    @inlinable var exampleIconName: String! {
        /// Gets the name of an icon that is representative of the
        /// current theme (for instance, to use when presenting
        /// a list of themes to the user.)
        get {
            let rv = gtk_icon_theme_get_example_icon_name(icon_theme_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    // var parentInstance is unavailable because parent_instance is private

    // var priv is unavailable because priv is private

}



// MARK: - IconView Class

/// `GtkIconView` provides an alternative view on a `GtkTreeModel`.
/// It displays the model as a grid of icons with labels. Like
/// `GtkTreeView`, it allows to select one or multiple items
/// (depending on the selection mode, see `gtk_icon_view_set_selection_mode()`).
/// In addition to selection with the arrow keys, `GtkIconView` supports
/// rubberband selection, which is controlled by dragging the pointer.
/// 
/// Note that if the tree model is backed by an actual tree store (as
/// opposed to a flat list where the mapping to icons is obvious),
/// `GtkIconView` will only display the first level of the tree and
/// ignore the tree’s branches.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// iconview.view
/// ╰── [rubberband]
/// ```
/// 
/// GtkIconView has a single CSS node with name iconview and style class .view.
/// For rubberband selection, a subnode with name rubberband is used.
///
/// The `IconViewProtocol` protocol exposes the methods and properties of an underlying `GtkIconView` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconView`.
/// Alternatively, use `IconViewRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IconViewProtocol: ContainerProtocol, CellLayoutProtocol, ScrollableProtocol {
        /// Untyped pointer to the underlying `GtkIconView` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIconView` instance.
    var icon_view_ptr: UnsafeMutablePointer<GtkIconView>! { get }

    /// Required Initialiser for types conforming to `IconViewProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkIconView` provides an alternative view on a `GtkTreeModel`.
/// It displays the model as a grid of icons with labels. Like
/// `GtkTreeView`, it allows to select one or multiple items
/// (depending on the selection mode, see `gtk_icon_view_set_selection_mode()`).
/// In addition to selection with the arrow keys, `GtkIconView` supports
/// rubberband selection, which is controlled by dragging the pointer.
/// 
/// Note that if the tree model is backed by an actual tree store (as
/// opposed to a flat list where the mapping to icons is obvious),
/// `GtkIconView` will only display the first level of the tree and
/// ignore the tree’s branches.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// iconview.view
/// ╰── [rubberband]
/// ```
/// 
/// GtkIconView has a single CSS node with name iconview and style class .view.
/// For rubberband selection, a subnode with name rubberband is used.
///
/// The `IconViewRef` type acts as a lightweight Swift reference to an underlying `GtkIconView` instance.
/// It exposes methods that can operate on this data type through `IconViewProtocol` conformance.
/// Use `IconViewRef` only as an `unowned` reference to an existing `GtkIconView` instance.
///
public struct IconViewRef: IconViewProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkIconView` instance.
    /// For type-safe access, use the generated, typed pointer `icon_view_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconViewRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIconView>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIconView>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIconView>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIconView>?) {
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

    /// Reference intialiser for a related type that implements `IconViewProtocol`
    @inlinable init<T: IconViewProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IconViewProtocol>(_ other: T) -> IconViewRef { IconViewRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkIconView` widget
    @inlinable init() {
        let rv = gtk_icon_view_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkIconView` widget using the
    /// specified `area` to layout cells inside the icons.
    @inlinable init<CellAreaT: CellAreaProtocol>(area: CellAreaT) {
        let rv = gtk_icon_view_new_with_area(area.cell_area_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkIconView` widget with the model `model`.
    @inlinable init<TreeModelT: TreeModelProtocol>(model: TreeModelT) {
        let rv = gtk_icon_view_new_with_model(model.tree_model_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkIconView` widget using the
    /// specified `area` to layout cells inside the icons.
    @inlinable static func newWith<CellAreaT: CellAreaProtocol>(area: CellAreaT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_icon_view_new_with_area(area.cell_area_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GtkIconView` widget with the model `model`.
    @inlinable static func newWith<TreeModelT: TreeModelProtocol>(model: TreeModelT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_icon_view_new_with_model(model.tree_model_ptr))) else { return nil }
        return rv
    }
}

/// `GtkIconView` provides an alternative view on a `GtkTreeModel`.
/// It displays the model as a grid of icons with labels. Like
/// `GtkTreeView`, it allows to select one or multiple items
/// (depending on the selection mode, see `gtk_icon_view_set_selection_mode()`).
/// In addition to selection with the arrow keys, `GtkIconView` supports
/// rubberband selection, which is controlled by dragging the pointer.
/// 
/// Note that if the tree model is backed by an actual tree store (as
/// opposed to a flat list where the mapping to icons is obvious),
/// `GtkIconView` will only display the first level of the tree and
/// ignore the tree’s branches.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// iconview.view
/// ╰── [rubberband]
/// ```
/// 
/// GtkIconView has a single CSS node with name iconview and style class .view.
/// For rubberband selection, a subnode with name rubberband is used.
///
/// The `IconView` type acts as a reference-counted owner of an underlying `GtkIconView` instance.
/// It provides the methods that can operate on this data type through `IconViewProtocol` conformance.
/// Use `IconView` as a strong reference or owner of a `GtkIconView` instance.
///
open class IconView: Container, IconViewProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIconView>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIconView>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconView` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIconView>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIconView>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkIconView`.
    /// i.e., ownership is transferred to the `IconView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIconView>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IconViewProtocol`
    /// Will retain `GtkIconView`.
    /// - Parameter other: an instance of a related type that implements `IconViewProtocol`
    @inlinable public init<T: IconViewProtocol>(iconView other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkIconView` widget
    @inlinable public init() {
        let rv = gtk_icon_view_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkIconView` widget using the
    /// specified `area` to layout cells inside the icons.
    @inlinable public init<CellAreaT: CellAreaProtocol>(area: CellAreaT) {
        let rv = gtk_icon_view_new_with_area(area.cell_area_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkIconView` widget with the model `model`.
    @inlinable public init<TreeModelT: TreeModelProtocol>(model: TreeModelT) {
        let rv = gtk_icon_view_new_with_model(model.tree_model_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkIconView` widget using the
    /// specified `area` to layout cells inside the icons.
    @inlinable public static func newWith<CellAreaT: CellAreaProtocol>(area: CellAreaT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_icon_view_new_with_area(area.cell_area_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkIconView` widget with the model `model`.
    @inlinable public static func newWith<TreeModelT: TreeModelProtocol>(model: TreeModelT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_icon_view_new_with_model(model.tree_model_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum IconViewPropertyName: String, PropertyNameProtocol {
    /// The activate-on-single-click property specifies whether the "item-activated" signal
    /// will be emitted after a single click.
    case activateOnSingleClick = "activate-on-single-click"
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    /// The `GtkCellArea` used to layout cell renderers for this view.
    /// 
    /// If no area is specified when creating the icon view with `gtk_icon_view_new_with_area()`
    /// a `GtkCellAreaBox` will be used.
    case cellArea = "cell-area"
    case child = "child"
    /// The column-spacing property specifies the space which is inserted between
    /// the columns of the icon view.
    case columnSpacing = "column-spacing"
    /// The columns property contains the number of the columns in which the
    /// items should be displayed. If it is -1, the number of columns will
    /// be chosen automatically to fill the available area.
    case columns = "columns"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// The item-orientation property specifies how the cells (i.e. the icon and
    /// the text) of the item are positioned relative to each other.
    case itemOrientation = "item-orientation"
    /// The item-padding property specifies the padding around each
    /// of the icon view's item.
    case itemPadding = "item-padding"
    /// The item-width property specifies the width to use for each item.
    /// If it is set to -1, the icon view will automatically determine a
    /// suitable item size.
    case itemWidth = "item-width"
    /// The margin property specifies the space which is inserted
    /// at the edges of the icon view.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    /// The `markup-column` property contains the number of the model column
    /// containing markup information to be displayed. The markup column must be
    /// of type `G_TYPE_STRING`. If this property and the :text-column property
    /// are both set to column numbers, it overrides the text column.
    /// If both are set to -1, no texts are displayed.
    case markupColumn = "markup-column"
    case model = "model"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    /// The `pixbuf-column` property contains the number of the model column
    /// containing the pixbufs which are displayed. The pixbuf column must be
    /// of type `GDK_TYPE_PIXBUF`. Setting this property to -1 turns off the
    /// display of pixbufs.
    case pixbufColumn = "pixbuf-column"
    case receivesDefault = "receives-default"
    /// The reorderable property specifies if the items can be reordered
    /// by DND.
    case reorderable = "reorderable"
    case resizeMode = "resize-mode"
    /// The row-spacing property specifies the space which is inserted between
    /// the rows of the icon view.
    case rowSpacing = "row-spacing"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    /// The `selection-mode` property specifies the selection mode of
    /// icon view. If the mode is `GTK_SELECTION_MULTIPLE`, rubberband selection
    /// is enabled, for the other modes, only keyboard selection is possible.
    case selectionMode = "selection-mode"
    case sensitive = "sensitive"
    /// The spacing property specifies the space which is inserted between
    /// the cells (i.e. the icon and the text) of an item.
    case spacing = "spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// The `text-column` property contains the number of the model column
    /// containing the texts which are displayed. The text column must be
    /// of type `G_TYPE_STRING`. If this property and the :markup-column
    /// property are both set to -1, no texts are displayed.
    case textColumn = "text-column"
    case tooltipColumn = "tooltip-column"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension IconViewProtocol {
    /// Bind a `IconViewPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: IconViewPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a IconView property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: IconViewPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a IconView property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: IconViewPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum IconViewSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// A [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user activates the currently
    /// focused item.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control activation
    /// programmatically.
    /// 
    /// The default bindings for this signal are Space, Return and Enter.
    case activateCursorItem = "activate-cursor-item"
    case add = "add"
    /// The `button-press-event` signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button-release-event` signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    case checkResize = "check-resize"
    /// The `child-notify` signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The `composited-changed` signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure-event` signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete-event` signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy-event` signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction-changed` signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag-begin` signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag-data-delete` signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag-data-get` signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag-data-received` signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag-drop` signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag-drop` signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag-data-received` handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag-end` signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag-begin`.
    case dragEnd = "drag-end"
    /// The `drag-failed` signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag-leave` signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag-motion`, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag-leave` signal is also emitted before the
    /// `drag-drop` signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag-motion` signal handler.
    case dragLeave = "drag-leave"
    /// The `drag-motion` signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag-data-received`
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag-leave` and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter-notify-event` will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key-press-event`) and finally a generic
    /// `GtkWidget::event-after` signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event-after` will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The `focus-in-event` signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus-out-event` signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab-notify` signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy-changed` signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `item-activated` signal is emitted when the method
    /// `gtk_icon_view_item_activated()` is called, when the user double
    /// clicks an item with the "activate-on-single-click" property set
    /// to `false`, or when the user single clicks an item when the
    /// "activate-on-single-click" property set to `true`. It is also
    /// emitted when a non-editable item is selected and one of the keys:
    /// Space, Return or Enter is pressed.
    case itemActivated = "item-activated"
    /// The `key-press-event` signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key-release-event` signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave-notify-event` will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map-event` will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map-event` signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion-notify-event` signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    /// The `move-cursor` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user initiates a cursor movement.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control the cursor
    /// programmatically.
    /// 
    /// The default bindings for this signal include
    /// - Arrow keys which move by individual steps
    /// - Home/End keys which move to the first/last item
    /// - PageUp/PageDown which move by "pages"
    /// All of these will extend the selection when combined with
    /// the Shift modifier.
    case moveCursor = "move-cursor"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent-set` signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The `property-notify-event` signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has-tooltip` is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The `screen-changed` signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll-event` signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// A [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user selects all items.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// The default binding for this signal is Ctrl-a.
    case selectAll = "select-all"
    /// A [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user selects the item that is currently
    /// focused.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// There is no default binding for this signal.
    case selectCursorItem = "select-cursor-item"
    /// The `selection-changed` signal is emitted when the selection
    /// (i.e. the set of selected items) changes.
    case selectionChanged = "selection-changed"
    /// The `selection-clear-event` signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection-request-event` signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The `state-changed` signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state-flags-changed` signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style-set` signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style-updated` signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style-updated` signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    /// A [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user toggles whether the currently
    /// focused item is selected or not. The exact effect of this
    /// depend on the selection mode.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// There is no default binding for this signal is Ctrl-Space.
    case toggleCursorItem = "toggle-cursor-item"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap-event` signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// A [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user unselects all items.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// The default binding for this signal is Ctrl-Shift-a.
    case unselectAll = "unselect-all"
    /// The `visibility-notify-event` will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The `window-state-event` will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    /// The activate-on-single-click property specifies whether the "item-activated" signal
    /// will be emitted after a single click.
    case notifyActivateOnSingleClick = "notify::activate-on-single-click"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    /// The `GtkCellArea` used to layout cell renderers for this view.
    /// 
    /// If no area is specified when creating the icon view with `gtk_icon_view_new_with_area()`
    /// a `GtkCellAreaBox` will be used.
    case notifyCellArea = "notify::cell-area"
    case notifyChild = "notify::child"
    /// The column-spacing property specifies the space which is inserted between
    /// the columns of the icon view.
    case notifyColumnSpacing = "notify::column-spacing"
    /// The columns property contains the number of the columns in which the
    /// items should be displayed. If it is -1, the number of columns will
    /// be chosen automatically to fill the available area.
    case notifyColumns = "notify::columns"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    /// The item-orientation property specifies how the cells (i.e. the icon and
    /// the text) of the item are positioned relative to each other.
    case notifyItemOrientation = "notify::item-orientation"
    /// The item-padding property specifies the padding around each
    /// of the icon view's item.
    case notifyItemPadding = "notify::item-padding"
    /// The item-width property specifies the width to use for each item.
    /// If it is set to -1, the icon view will automatically determine a
    /// suitable item size.
    case notifyItemWidth = "notify::item-width"
    /// The margin property specifies the space which is inserted
    /// at the edges of the icon view.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    /// The `markup-column` property contains the number of the model column
    /// containing markup information to be displayed. The markup column must be
    /// of type `G_TYPE_STRING`. If this property and the :text-column property
    /// are both set to column numbers, it overrides the text column.
    /// If both are set to -1, no texts are displayed.
    case notifyMarkupColumn = "notify::markup-column"
    case notifyModel = "notify::model"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    /// The `pixbuf-column` property contains the number of the model column
    /// containing the pixbufs which are displayed. The pixbuf column must be
    /// of type `GDK_TYPE_PIXBUF`. Setting this property to -1 turns off the
    /// display of pixbufs.
    case notifyPixbufColumn = "notify::pixbuf-column"
    case notifyReceivesDefault = "notify::receives-default"
    /// The reorderable property specifies if the items can be reordered
    /// by DND.
    case notifyReorderable = "notify::reorderable"
    case notifyResizeMode = "notify::resize-mode"
    /// The row-spacing property specifies the space which is inserted between
    /// the rows of the icon view.
    case notifyRowSpacing = "notify::row-spacing"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    /// The `selection-mode` property specifies the selection mode of
    /// icon view. If the mode is `GTK_SELECTION_MULTIPLE`, rubberband selection
    /// is enabled, for the other modes, only keyboard selection is possible.
    case notifySelectionMode = "notify::selection-mode"
    case notifySensitive = "notify::sensitive"
    /// The spacing property specifies the space which is inserted between
    /// the cells (i.e. the icon and the text) of an item.
    case notifySpacing = "notify::spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// The `text-column` property contains the number of the model column
    /// containing the texts which are displayed. The text column must be
    /// of type `G_TYPE_STRING`. If this property and the :markup-column
    /// property are both set to -1, no texts are displayed.
    case notifyTextColumn = "notify::text-column"
    case notifyTooltipColumn = "notify::tooltip-column"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

// MARK: IconView signals
public extension IconViewProtocol {
    /// Connect a Swift signal handler to the given, typed `IconViewSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: IconViewSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `IconViewSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: IconViewSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// A [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user activates the currently
    /// focused item.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control activation
    /// programmatically.
    /// 
    /// The default bindings for this signal are Space, Return and Enter.
    /// - Note: This represents the underlying `activate-cursor-item` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `activateCursorItem` signal is emitted
    @discardableResult @inlinable func onActivateCursorItem(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IconViewRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer) -> gboolean = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(IconViewRef(raw: unownedSelf))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .activateCursorItem,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate-cursor-item` signal for using the `connect(signal:)` methods
    static var activateCursorItemSignal: IconViewSignalName { .activateCursorItem }
    
    /// The `item-activated` signal is emitted when the method
    /// `gtk_icon_view_item_activated()` is called, when the user double
    /// clicks an item with the "activate-on-single-click" property set
    /// to `false`, or when the user single clicks an item when the
    /// "activate-on-single-click" property set to `true`. It is also
    /// emitted when a non-editable item is selected and one of the keys:
    /// Space, Return or Enter is pressed.
    /// - Note: This represents the underlying `item-activated` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter path: the `GtkTreePath` for the activated item
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `itemActivated` signal is emitted
    @discardableResult @inlinable func onItemActivated(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ path: TreePathRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, TreePathRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), TreePathRef(raw: arg1))
            return output
        }
        return connect(
            signal: .itemActivated,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `item-activated` signal for using the `connect(signal:)` methods
    static var itemActivatedSignal: IconViewSignalName { .itemActivated }
    
    /// The `move-cursor` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user initiates a cursor movement.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control the cursor
    /// programmatically.
    /// 
    /// The default bindings for this signal include
    /// - Arrow keys which move by individual steps
    /// - Home/End keys which move to the first/last item
    /// - PageUp/PageDown which move by "pages"
    /// All of these will extend the selection when combined with
    /// the Shift modifier.
    /// - Note: This represents the underlying `move-cursor` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter step: the granularity of the move, as a `GtkMovementStep`
    /// - Parameter count: the number of `step` units to move
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `moveCursor` signal is emitted
    @discardableResult @inlinable func onMoveCursor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ step: MovementStep, _ count: Int) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<IconViewRef, MovementStep, Int, Bool>
        let cCallback: @convention(c) (gpointer, UInt32, gint, gpointer) -> gboolean = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(IconViewRef(raw: unownedSelf), MovementStep(arg1), Int(arg2))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .moveCursor,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `move-cursor` signal for using the `connect(signal:)` methods
    static var moveCursorSignal: IconViewSignalName { .moveCursor }
    
    /// A [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user selects all items.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// The default binding for this signal is Ctrl-a.
    /// - Note: This represents the underlying `select-all` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `selectAll` signal is emitted
    @discardableResult @inlinable func onSelectAll(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IconViewRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .selectAll,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `select-all` signal for using the `connect(signal:)` methods
    static var selectAllSignal: IconViewSignalName { .selectAll }
    
    /// A [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user selects the item that is currently
    /// focused.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// There is no default binding for this signal.
    /// - Note: This represents the underlying `select-cursor-item` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `selectCursorItem` signal is emitted
    @discardableResult @inlinable func onSelectCursorItem(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IconViewRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .selectCursorItem,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `select-cursor-item` signal for using the `connect(signal:)` methods
    static var selectCursorItemSignal: IconViewSignalName { .selectCursorItem }
    
    /// The `selection-changed` signal is emitted when the selection
    /// (i.e. the set of selected items) changes.
    /// - Note: This represents the underlying `selection-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `selectionChanged` signal is emitted
    @discardableResult @inlinable func onSelectionChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IconViewRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .selectionChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `selection-changed` signal for using the `connect(signal:)` methods
    static var selectionChangedSignal: IconViewSignalName { .selectionChanged }
    
    /// A [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user toggles whether the currently
    /// focused item is selected or not. The exact effect of this
    /// depend on the selection mode.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// There is no default binding for this signal is Ctrl-Space.
    /// - Note: This represents the underlying `toggle-cursor-item` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `toggleCursorItem` signal is emitted
    @discardableResult @inlinable func onToggleCursorItem(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IconViewRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .toggleCursorItem,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `toggle-cursor-item` signal for using the `connect(signal:)` methods
    static var toggleCursorItemSignal: IconViewSignalName { .toggleCursorItem }
    
    /// A [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user unselects all items.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control selection
    /// programmatically.
    /// 
    /// The default binding for this signal is Ctrl-Shift-a.
    /// - Note: This represents the underlying `unselect-all` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `unselectAll` signal is emitted
    @discardableResult @inlinable func onUnselectAll(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IconViewRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .unselectAll,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `unselect-all` signal for using the `connect(signal:)` methods
    static var unselectAllSignal: IconViewSignalName { .unselectAll }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::activate-on-single-click` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyActivateOnSingleClick` signal is emitted
    @discardableResult @inlinable func onNotifyActivateOnSingleClick(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyActivateOnSingleClick,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::activate-on-single-click` signal for using the `connect(signal:)` methods
    static var notifyActivateOnSingleClickSignal: IconViewSignalName { .notifyActivateOnSingleClick }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::cell-area` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyCellArea` signal is emitted
    @discardableResult @inlinable func onNotifyCellArea(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyCellArea,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::cell-area` signal for using the `connect(signal:)` methods
    static var notifyCellAreaSignal: IconViewSignalName { .notifyCellArea }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::column-spacing` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyColumnSpacing` signal is emitted
    @discardableResult @inlinable func onNotifyColumnSpacing(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyColumnSpacing,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::column-spacing` signal for using the `connect(signal:)` methods
    static var notifyColumnSpacingSignal: IconViewSignalName { .notifyColumnSpacing }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::columns` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyColumns` signal is emitted
    @discardableResult @inlinable func onNotifyColumns(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyColumns,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::columns` signal for using the `connect(signal:)` methods
    static var notifyColumnsSignal: IconViewSignalName { .notifyColumns }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::item-orientation` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyItemOrientation` signal is emitted
    @discardableResult @inlinable func onNotifyItemOrientation(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyItemOrientation,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::item-orientation` signal for using the `connect(signal:)` methods
    static var notifyItemOrientationSignal: IconViewSignalName { .notifyItemOrientation }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::item-padding` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyItemPadding` signal is emitted
    @discardableResult @inlinable func onNotifyItemPadding(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyItemPadding,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::item-padding` signal for using the `connect(signal:)` methods
    static var notifyItemPaddingSignal: IconViewSignalName { .notifyItemPadding }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::item-width` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyItemWidth` signal is emitted
    @discardableResult @inlinable func onNotifyItemWidth(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyItemWidth,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::item-width` signal for using the `connect(signal:)` methods
    static var notifyItemWidthSignal: IconViewSignalName { .notifyItemWidth }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::margin` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMargin` signal is emitted
    @discardableResult @inlinable func onNotifyMargin(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMargin,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::margin` signal for using the `connect(signal:)` methods
    static var notifyMarginSignal: IconViewSignalName { .notifyMargin }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::markup-column` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMarkupColumn` signal is emitted
    @discardableResult @inlinable func onNotifyMarkupColumn(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMarkupColumn,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::markup-column` signal for using the `connect(signal:)` methods
    static var notifyMarkupColumnSignal: IconViewSignalName { .notifyMarkupColumn }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::model` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyModel` signal is emitted
    @discardableResult @inlinable func onNotifyModel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyModel,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::model` signal for using the `connect(signal:)` methods
    static var notifyModelSignal: IconViewSignalName { .notifyModel }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::pixbuf-column` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPixbufColumn` signal is emitted
    @discardableResult @inlinable func onNotifyPixbufColumn(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPixbufColumn,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::pixbuf-column` signal for using the `connect(signal:)` methods
    static var notifyPixbufColumnSignal: IconViewSignalName { .notifyPixbufColumn }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::reorderable` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyReorderable` signal is emitted
    @discardableResult @inlinable func onNotifyReorderable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyReorderable,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::reorderable` signal for using the `connect(signal:)` methods
    static var notifyReorderableSignal: IconViewSignalName { .notifyReorderable }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::row-spacing` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyRowSpacing` signal is emitted
    @discardableResult @inlinable func onNotifyRowSpacing(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyRowSpacing,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::row-spacing` signal for using the `connect(signal:)` methods
    static var notifyRowSpacingSignal: IconViewSignalName { .notifyRowSpacing }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::selection-mode` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySelectionMode` signal is emitted
    @discardableResult @inlinable func onNotifySelectionMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySelectionMode,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::selection-mode` signal for using the `connect(signal:)` methods
    static var notifySelectionModeSignal: IconViewSignalName { .notifySelectionMode }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::spacing` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySpacing` signal is emitted
    @discardableResult @inlinable func onNotifySpacing(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySpacing,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::spacing` signal for using the `connect(signal:)` methods
    static var notifySpacingSignal: IconViewSignalName { .notifySpacing }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::text-column` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTextColumn` signal is emitted
    @discardableResult @inlinable func onNotifyTextColumn(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTextColumn,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::text-column` signal for using the `connect(signal:)` methods
    static var notifyTextColumnSignal: IconViewSignalName { .notifyTextColumn }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::tooltip-column` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTooltipColumn` signal is emitted
    @discardableResult @inlinable func onNotifyTooltipColumn(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IconViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IconViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IconViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTooltipColumn,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::tooltip-column` signal for using the `connect(signal:)` methods
    static var notifyTooltipColumnSignal: IconViewSignalName { .notifyTooltipColumn }
    
}

// MARK: IconView Class: IconViewProtocol extension (methods and fields)
public extension IconViewProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconView` instance.
    @inlinable var icon_view_ptr: UnsafeMutablePointer<GtkIconView>! { return ptr?.assumingMemoryBound(to: GtkIconView.self) }

    /// Converts widget coordinates to coordinates for the bin_window,
    /// as expected by e.g. `gtk_icon_view_get_path_at_pos()`.
    @inlinable func convertWidgetToBinWindowCoords(wx: Int, wy: Int, bx: UnsafeMutablePointer<gint>!, by: UnsafeMutablePointer<gint>!) {
        gtk_icon_view_convert_widget_to_bin_window_coords(icon_view_ptr, gint(wx), gint(wy), bx, by)
    
    }

    /// Creates a `cairo_surface_t` representation of the item at `path`.
    /// This image is used for a drag icon.
    @inlinable func createDragIcon<TreePathT: TreePathProtocol>(path: TreePathT) -> Cairo.SurfaceRef! {
        let rv = Cairo.SurfaceRef(gtk_icon_view_create_drag_icon(icon_view_ptr, path.tree_path_ptr))
        return rv
    }

    /// Turns `icon_view` into a drop destination for automatic DND. Calling this
    /// method sets `GtkIconView:reorderable` to `false`.
    @inlinable func enableModelDragDest(targets: UnsafePointer<GtkTargetEntry>!, nTargets: Int, actions: Gdk.DragAction) {
        gtk_icon_view_enable_model_drag_dest(icon_view_ptr, targets, gint(nTargets), actions.value)
    
    }

    /// Turns `icon_view` into a drag source for automatic DND. Calling this
    /// method sets `GtkIconView:reorderable` to `false`.
    @inlinable func enableModelDragSource(startButtonMask: Gdk.ModifierType, targets: UnsafePointer<GtkTargetEntry>!, nTargets: Int, actions: Gdk.DragAction) {
        gtk_icon_view_enable_model_drag_source(icon_view_ptr, startButtonMask.value, targets, gint(nTargets), actions.value)
    
    }

    /// Gets the setting set by `gtk_icon_view_set_activate_on_single_click()`.
    @inlinable func getActivateOnSingleClick() -> Bool {
        let rv = ((gtk_icon_view_get_activate_on_single_click(icon_view_ptr)) != 0)
        return rv
    }

    /// Fills the bounding rectangle in widget coordinates for the cell specified by
    /// `path` and `cell`. If `cell` is `nil` the main cell area is used.
    /// 
    /// This function is only valid if `icon_view` is realized.
    @inlinable func getCellRect<RectangleT: Gdk.RectangleProtocol, TreePathT: TreePathProtocol>(path: TreePathT, cell: CellRendererRef? = nil, rect: RectangleT) -> Bool {
        let rv = ((gtk_icon_view_get_cell_rect(icon_view_ptr, path.tree_path_ptr, cell?.cell_renderer_ptr, rect.rectangle_ptr)) != 0)
        return rv
    }
    /// Fills the bounding rectangle in widget coordinates for the cell specified by
    /// `path` and `cell`. If `cell` is `nil` the main cell area is used.
    /// 
    /// This function is only valid if `icon_view` is realized.
    @inlinable func getCellRect<CellRendererT: CellRendererProtocol, RectangleT: Gdk.RectangleProtocol, TreePathT: TreePathProtocol>(path: TreePathT, cell: CellRendererT?, rect: RectangleT) -> Bool {
        let rv = ((gtk_icon_view_get_cell_rect(icon_view_ptr, path.tree_path_ptr, cell?.cell_renderer_ptr, rect.rectangle_ptr)) != 0)
        return rv
    }

    /// Returns the value of the `column-spacing` property.
    @inlinable func getColumnSpacing() -> Int {
        let rv = Int(gtk_icon_view_get_column_spacing(icon_view_ptr))
        return rv
    }

    /// Returns the value of the `columns` property.
    @inlinable func getColumns() -> Int {
        let rv = Int(gtk_icon_view_get_columns(icon_view_ptr))
        return rv
    }

    /// Fills in `path` and `cell` with the current cursor path and cell.
    /// If the cursor isn’t currently set, then *`path` will be `nil`.
    /// If no cell currently has focus, then *`cell` will be `nil`.
    /// 
    /// The returned `GtkTreePath` must be freed with `gtk_tree_path_free()`.
    @inlinable func getCursor(path: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil, cell: UnsafeMutablePointer<UnsafeMutablePointer<GtkCellRenderer>?>! = nil) -> Bool {
        let rv = ((gtk_icon_view_get_cursor(icon_view_ptr, path, cell)) != 0)
        return rv
    }

    /// Determines the destination item for a given position.
    @inlinable func getDestItemAtPos(dragX: Int, dragY: Int, path: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil, pos: UnsafeMutablePointer<GtkIconViewDropPosition>! = nil) -> Bool {
        let rv = ((gtk_icon_view_get_dest_item_at_pos(icon_view_ptr, gint(dragX), gint(dragY), path, pos)) != 0)
        return rv
    }

    /// Gets information about the item that is highlighted for feedback.
    @inlinable func getDragDestItem(path: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil, pos: UnsafeMutablePointer<GtkIconViewDropPosition>! = nil) {
        gtk_icon_view_get_drag_dest_item(icon_view_ptr, path, pos)
    
    }

    /// Finds the path at the point (`x`, `y`), relative to bin_window coordinates.
    /// In contrast to `gtk_icon_view_get_path_at_pos()`, this function also
    /// obtains the cell at the specified position. The returned path should
    /// be freed with `gtk_tree_path_free()`.
    /// See `gtk_icon_view_convert_widget_to_bin_window_coords()` for converting
    /// widget coordinates to bin_window coordinates.
    @inlinable func getItemAtPos(x: Int, y: Int, path: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil, cell: UnsafeMutablePointer<UnsafeMutablePointer<GtkCellRenderer>?>! = nil) -> Bool {
        let rv = ((gtk_icon_view_get_item_at_pos(icon_view_ptr, gint(x), gint(y), path, cell)) != 0)
        return rv
    }

    /// Gets the column in which the item `path` is currently
    /// displayed. Column numbers start at 0.
    @inlinable func getItemColumn<TreePathT: TreePathProtocol>(path: TreePathT) -> Int {
        let rv = Int(gtk_icon_view_get_item_column(icon_view_ptr, path.tree_path_ptr))
        return rv
    }

    /// Returns the value of the `item-orientation` property which determines
    /// whether the labels are drawn beside the icons instead of below.
    @inlinable func getItemOrientation() -> GtkOrientation {
        let rv = gtk_icon_view_get_item_orientation(icon_view_ptr)
        return rv
    }

    /// Returns the value of the `item-padding` property.
    @inlinable func getItemPadding() -> Int {
        let rv = Int(gtk_icon_view_get_item_padding(icon_view_ptr))
        return rv
    }

    /// Gets the row in which the item `path` is currently
    /// displayed. Row numbers start at 0.
    @inlinable func getItemRow<TreePathT: TreePathProtocol>(path: TreePathT) -> Int {
        let rv = Int(gtk_icon_view_get_item_row(icon_view_ptr, path.tree_path_ptr))
        return rv
    }

    /// Returns the value of the `item-width` property.
    @inlinable func getItemWidth() -> Int {
        let rv = Int(gtk_icon_view_get_item_width(icon_view_ptr))
        return rv
    }

    /// Returns the value of the `margin` property.
    @inlinable func getMargin() -> Int {
        let rv = Int(gtk_icon_view_get_margin(icon_view_ptr))
        return rv
    }

    /// Returns the column with markup text for `icon_view`.
    @inlinable func getMarkupColumn() -> Int {
        let rv = Int(gtk_icon_view_get_markup_column(icon_view_ptr))
        return rv
    }

    /// Returns the model the `GtkIconView` is based on.  Returns `nil` if the
    /// model is unset.
    @inlinable func getModel() -> TreeModelRef! {
        let rv = TreeModelRef(gconstpointer: gconstpointer(gtk_icon_view_get_model(icon_view_ptr)))
        return rv
    }

    /// Finds the path at the point (`x`, `y`), relative to bin_window coordinates.
    /// See `gtk_icon_view_get_item_at_pos()`, if you are also interested in
    /// the cell at the specified position.
    /// See `gtk_icon_view_convert_widget_to_bin_window_coords()` for converting
    /// widget coordinates to bin_window coordinates.
    @inlinable func getPathAtPos(x: Int, y: Int) -> TreePathRef! {
        let rv = TreePathRef(gconstpointer: gconstpointer(gtk_icon_view_get_path_at_pos(icon_view_ptr, gint(x), gint(y))))
        return rv
    }

    /// Returns the column with pixbufs for `icon_view`.
    @inlinable func getPixbufColumn() -> Int {
        let rv = Int(gtk_icon_view_get_pixbuf_column(icon_view_ptr))
        return rv
    }

    /// Retrieves whether the user can reorder the list via drag-and-drop.
    /// See `gtk_icon_view_set_reorderable()`.
    @inlinable func getReorderable() -> Bool {
        let rv = ((gtk_icon_view_get_reorderable(icon_view_ptr)) != 0)
        return rv
    }

    /// Returns the value of the `row-spacing` property.
    @inlinable func getRowSpacing() -> Int {
        let rv = Int(gtk_icon_view_get_row_spacing(icon_view_ptr))
        return rv
    }

    /// Creates a list of paths of all selected items. Additionally, if you are
    /// planning on modifying the model after calling this function, you may
    /// want to convert the returned list into a list of `GtkTreeRowReferences`.
    /// To do this, you can use `gtk_tree_row_reference_new()`.
    /// 
    /// To free the return value, use:
    /// (C Language Example):
    /// ```C
    /// g_list_free_full (list, (GDestroyNotify) gtk_tree_path_free);
    /// ```
    /// 
    @inlinable func getSelectedItems() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_icon_view_get_selected_items(icon_view_ptr))
        return rv
    }

    /// Gets the selection mode of the `icon_view`.
    @inlinable func getSelectionMode() -> GtkSelectionMode {
        let rv = gtk_icon_view_get_selection_mode(icon_view_ptr)
        return rv
    }

    /// Returns the value of the `spacing` property.
    @inlinable func getSpacing() -> Int {
        let rv = Int(gtk_icon_view_get_spacing(icon_view_ptr))
        return rv
    }

    /// Returns the column with text for `icon_view`.
    @inlinable func getTextColumn() -> Int {
        let rv = Int(gtk_icon_view_get_text_column(icon_view_ptr))
        return rv
    }

    /// Returns the column of `icon_view`’s model which is being used for
    /// displaying tooltips on `icon_view`’s rows.
    @inlinable func getTooltipColumn() -> Int {
        let rv = Int(gtk_icon_view_get_tooltip_column(icon_view_ptr))
        return rv
    }

    /// This function is supposed to be used in a `GtkWidget::query-tooltip`
    /// signal handler for `GtkIconView`.  The `x`, `y` and `keyboard_tip` values
    /// which are received in the signal handler, should be passed to this
    /// function without modification.
    /// 
    /// The return value indicates whether there is an icon view item at the given
    /// coordinates (`true`) or not (`false`) for mouse tooltips. For keyboard
    /// tooltips the item returned will be the cursor item. When `true`, then any of
    /// `model`, `path` and `iter` which have been provided will be set to point to
    /// that row and the corresponding model. `x` and `y` will always be converted
    /// to be relative to `icon_view`’s bin_window if `keyboard_tooltip` is `false`.
    @inlinable func getTooltipContext(x: UnsafeMutablePointer<gint>!, y: UnsafeMutablePointer<gint>!, keyboardTip: Bool, model: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreeModel>?>! = nil, path: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil, iter: TreeIterRef? = nil) -> Bool {
        let rv = ((gtk_icon_view_get_tooltip_context(icon_view_ptr, x, y, gboolean((keyboardTip) ? 1 : 0), model, path, iter?.tree_iter_ptr)) != 0)
        return rv
    }
    /// This function is supposed to be used in a `GtkWidget::query-tooltip`
    /// signal handler for `GtkIconView`.  The `x`, `y` and `keyboard_tip` values
    /// which are received in the signal handler, should be passed to this
    /// function without modification.
    /// 
    /// The return value indicates whether there is an icon view item at the given
    /// coordinates (`true`) or not (`false`) for mouse tooltips. For keyboard
    /// tooltips the item returned will be the cursor item. When `true`, then any of
    /// `model`, `path` and `iter` which have been provided will be set to point to
    /// that row and the corresponding model. `x` and `y` will always be converted
    /// to be relative to `icon_view`’s bin_window if `keyboard_tooltip` is `false`.
    @inlinable func getTooltipContext<TreeIterT: TreeIterProtocol>(x: UnsafeMutablePointer<gint>!, y: UnsafeMutablePointer<gint>!, keyboardTip: Bool, model: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreeModel>?>! = nil, path: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil, iter: TreeIterT?) -> Bool {
        let rv = ((gtk_icon_view_get_tooltip_context(icon_view_ptr, x, y, gboolean((keyboardTip) ? 1 : 0), model, path, iter?.tree_iter_ptr)) != 0)
        return rv
    }

    /// Sets `start_path` and `end_path` to be the first and last visible path.
    /// Note that there may be invisible paths in between.
    /// 
    /// Both paths should be freed with `gtk_tree_path_free()` after use.
    @inlinable func getVisibleRange(startPath: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil, endPath: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>! = nil) -> Bool {
        let rv = ((gtk_icon_view_get_visible_range(icon_view_ptr, startPath, endPath)) != 0)
        return rv
    }

    /// Activates the item determined by `path`.
    @inlinable func itemActivated<TreePathT: TreePathProtocol>(path: TreePathT) {
        gtk_icon_view_item_activated(icon_view_ptr, path.tree_path_ptr)
    
    }

    /// Returns `true` if the icon pointed to by `path` is currently
    /// selected. If `path` does not point to a valid location, `false` is returned.
    @inlinable func pathIsSelected<TreePathT: TreePathProtocol>(path: TreePathT) -> Bool {
        let rv = ((gtk_icon_view_path_is_selected(icon_view_ptr, path.tree_path_ptr)) != 0)
        return rv
    }

    /// Moves the alignments of `icon_view` to the position specified by `path`.
    /// `row_align` determines where the row is placed, and `col_align` determines
    /// where `column` is placed.  Both are expected to be between 0.0 and 1.0.
    /// 0.0 means left/top alignment, 1.0 means right/bottom alignment, 0.5 means
    /// center.
    /// 
    /// If `use_align` is `false`, then the alignment arguments are ignored, and the
    /// tree does the minimum amount of work to scroll the item onto the screen.
    /// This means that the item will be scrolled to the edge closest to its current
    /// position.  If the item is currently visible on the screen, nothing is done.
    /// 
    /// This function only works if the model is set, and `path` is a valid row on
    /// the model. If the model changes before the `icon_view` is realized, the
    /// centered path will be modified to reflect this change.
    @inlinable func scrollTo<TreePathT: TreePathProtocol>(path: TreePathT, useAlign: Bool, rowAlign: Double, colAlign: Double) {
        gtk_icon_view_scroll_to_path(icon_view_ptr, path.tree_path_ptr, gboolean((useAlign) ? 1 : 0), gfloat(rowAlign), gfloat(colAlign))
    
    }

    /// Selects all the icons. `icon_view` must has its selection mode set
    /// to `GTK_SELECTION_MULTIPLE`.
    @inlinable func selectAll() {
        gtk_icon_view_select_all(icon_view_ptr)
    
    }

    /// Selects the row at `path`.
    @inlinable func select<TreePathT: TreePathProtocol>(path: TreePathT) {
        gtk_icon_view_select_path(icon_view_ptr, path.tree_path_ptr)
    
    }

    /// Calls a function for each selected icon. Note that the model or
    /// selection cannot be modified from within this function.
    @inlinable func selectedForeach(`func`: GtkIconViewForeachFunc?, data: gpointer! = nil) {
        gtk_icon_view_selected_foreach(icon_view_ptr, `func`, data)
    
    }

    /// Causes the `GtkIconView::item-activated` signal to be emitted on
    /// a single click instead of a double click.
    @inlinable func setActivateOnSingleClick(single: Bool) {
        gtk_icon_view_set_activate_on_single_click(icon_view_ptr, gboolean((single) ? 1 : 0))
    
    }

    /// Sets the `column-spacing` property which specifies the space
    /// which is inserted between the columns of the icon view.
    @inlinable func set(columnSpacing: Int) {
        gtk_icon_view_set_column_spacing(icon_view_ptr, gint(columnSpacing))
    
    }

    /// Sets the `columns` property which determines in how
    /// many columns the icons are arranged. If `columns` is
    /// -1, the number of columns will be chosen automatically
    /// to fill the available area.
    @inlinable func set(columns: Int) {
        gtk_icon_view_set_columns(icon_view_ptr, gint(columns))
    
    }

    /// Sets the current keyboard focus to be at `path`, and selects it.  This is
    /// useful when you want to focus the user’s attention on a particular item.
    /// If `cell` is not `nil`, then focus is given to the cell specified by
    /// it. Additionally, if `start_editing` is `true`, then editing should be
    /// started in the specified cell.
    /// 
    /// This function is often followed by `gtk_widget_grab_focus
    /// (icon_view)` in order to give keyboard focus to the widget.
    /// Please note that editing can only happen when the widget is realized.
    @inlinable func setCursor<TreePathT: TreePathProtocol>(path: TreePathT, cell: CellRendererRef? = nil, startEditing: Bool) {
        gtk_icon_view_set_cursor(icon_view_ptr, path.tree_path_ptr, cell?.cell_renderer_ptr, gboolean((startEditing) ? 1 : 0))
    
    }
    /// Sets the current keyboard focus to be at `path`, and selects it.  This is
    /// useful when you want to focus the user’s attention on a particular item.
    /// If `cell` is not `nil`, then focus is given to the cell specified by
    /// it. Additionally, if `start_editing` is `true`, then editing should be
    /// started in the specified cell.
    /// 
    /// This function is often followed by `gtk_widget_grab_focus
    /// (icon_view)` in order to give keyboard focus to the widget.
    /// Please note that editing can only happen when the widget is realized.
    @inlinable func setCursor<CellRendererT: CellRendererProtocol, TreePathT: TreePathProtocol>(path: TreePathT, cell: CellRendererT?, startEditing: Bool) {
        gtk_icon_view_set_cursor(icon_view_ptr, path.tree_path_ptr, cell?.cell_renderer_ptr, gboolean((startEditing) ? 1 : 0))
    
    }

    /// Sets the item that is highlighted for feedback.
    @inlinable func setDragDestItem(path: TreePathRef? = nil, pos: GtkIconViewDropPosition) {
        gtk_icon_view_set_drag_dest_item(icon_view_ptr, path?.tree_path_ptr, pos)
    
    }
    /// Sets the item that is highlighted for feedback.
    @inlinable func setDragDestItem<TreePathT: TreePathProtocol>(path: TreePathT?, pos: GtkIconViewDropPosition) {
        gtk_icon_view_set_drag_dest_item(icon_view_ptr, path?.tree_path_ptr, pos)
    
    }

    /// Sets the `item-orientation` property which determines whether the labels
    /// are drawn beside the icons instead of below.
    @inlinable func setItem(orientation: GtkOrientation) {
        gtk_icon_view_set_item_orientation(icon_view_ptr, orientation)
    
    }

    /// Sets the `GtkIconView:item-padding` property which specifies the padding
    /// around each of the icon view’s items.
    @inlinable func set(itemPadding: Int) {
        gtk_icon_view_set_item_padding(icon_view_ptr, gint(itemPadding))
    
    }

    /// Sets the `item-width` property which specifies the width
    /// to use for each item. If it is set to -1, the icon view will
    /// automatically determine a suitable item size.
    @inlinable func set(itemWidth: Int) {
        gtk_icon_view_set_item_width(icon_view_ptr, gint(itemWidth))
    
    }

    /// Sets the `margin` property which specifies the space
    /// which is inserted at the top, bottom, left and right
    /// of the icon view.
    @inlinable func set(margin: Int) {
        gtk_icon_view_set_margin(icon_view_ptr, gint(margin))
    
    }

    /// Sets the column with markup information for `icon_view` to be
    /// `column`. The markup column must be of type `G_TYPE_STRING`.
    /// If the markup column is set to something, it overrides
    /// the text column set by `gtk_icon_view_set_text_column()`.
    @inlinable func setMarkup(column: Int) {
        gtk_icon_view_set_markup_column(icon_view_ptr, gint(column))
    
    }

    /// Sets the model for a `GtkIconView`.
    /// If the `icon_view` already has a model set, it will remove
    /// it before setting the new model.  If `model` is `nil`, then
    /// it will unset the old model.
    @inlinable func set(model: TreeModelRef? = nil) {
        gtk_icon_view_set_model(icon_view_ptr, model?.tree_model_ptr)
    
    }
    /// Sets the model for a `GtkIconView`.
    /// If the `icon_view` already has a model set, it will remove
    /// it before setting the new model.  If `model` is `nil`, then
    /// it will unset the old model.
    @inlinable func set<TreeModelT: TreeModelProtocol>(model: TreeModelT?) {
        gtk_icon_view_set_model(icon_view_ptr, model?.tree_model_ptr)
    
    }

    /// Sets the column with pixbufs for `icon_view` to be `column`. The pixbuf
    /// column must be of type `GDK_TYPE_PIXBUF`
    @inlinable func setPixbuf(column: Int) {
        gtk_icon_view_set_pixbuf_column(icon_view_ptr, gint(column))
    
    }

    /// This function is a convenience function to allow you to reorder models that
    /// support the `GtkTreeDragSourceIface` and the `GtkTreeDragDestIface`.  Both
    /// `GtkTreeStore` and `GtkListStore` support these.  If `reorderable` is `true`, then
    /// the user can reorder the model by dragging and dropping rows.  The
    /// developer can listen to these changes by connecting to the model's
    /// row_inserted and row_deleted signals. The reordering is implemented by setting up
    /// the icon view as a drag source and destination. Therefore, drag and
    /// drop can not be used in a reorderable view for any other purpose.
    /// 
    /// This function does not give you any degree of control over the order -- any
    /// reordering is allowed.  If more control is needed, you should probably
    /// handle drag and drop manually.
    @inlinable func set(reorderable: Bool) {
        gtk_icon_view_set_reorderable(icon_view_ptr, gboolean((reorderable) ? 1 : 0))
    
    }

    /// Sets the `row-spacing` property which specifies the space
    /// which is inserted between the rows of the icon view.
    @inlinable func set(rowSpacing: Int) {
        gtk_icon_view_set_row_spacing(icon_view_ptr, gint(rowSpacing))
    
    }

    /// Sets the selection mode of the `icon_view`.
    @inlinable func setSelection(mode: GtkSelectionMode) {
        gtk_icon_view_set_selection_mode(icon_view_ptr, mode)
    
    }

    /// Sets the `spacing` property which specifies the space
    /// which is inserted between the cells (i.e. the icon and
    /// the text) of an item.
    @inlinable func set(spacing: Int) {
        gtk_icon_view_set_spacing(icon_view_ptr, gint(spacing))
    
    }

    /// Sets the column with text for `icon_view` to be `column`. The text
    /// column must be of type `G_TYPE_STRING`.
    @inlinable func setText(column: Int) {
        gtk_icon_view_set_text_column(icon_view_ptr, gint(column))
    
    }

    /// Sets the tip area of `tooltip` to the area which `cell` occupies in
    /// the item pointed to by `path`. See also `gtk_tooltip_set_tip_area()`.
    /// 
    /// See also `gtk_icon_view_set_tooltip_column()` for a simpler alternative.
    @inlinable func setTooltipCell<TooltipT: TooltipProtocol, TreePathT: TreePathProtocol>(tooltip: TooltipT, path: TreePathT, cell: CellRendererRef? = nil) {
        gtk_icon_view_set_tooltip_cell(icon_view_ptr, tooltip.tooltip_ptr, path.tree_path_ptr, cell?.cell_renderer_ptr)
    
    }
    /// Sets the tip area of `tooltip` to the area which `cell` occupies in
    /// the item pointed to by `path`. See also `gtk_tooltip_set_tip_area()`.
    /// 
    /// See also `gtk_icon_view_set_tooltip_column()` for a simpler alternative.
    @inlinable func setTooltipCell<CellRendererT: CellRendererProtocol, TooltipT: TooltipProtocol, TreePathT: TreePathProtocol>(tooltip: TooltipT, path: TreePathT, cell: CellRendererT?) {
        gtk_icon_view_set_tooltip_cell(icon_view_ptr, tooltip.tooltip_ptr, path.tree_path_ptr, cell?.cell_renderer_ptr)
    
    }

    /// If you only plan to have simple (text-only) tooltips on full items, you
    /// can use this function to have `GtkIconView` handle these automatically
    /// for you. `column` should be set to the column in `icon_view`’s model
    /// containing the tooltip texts, or -1 to disable this feature.
    /// 
    /// When enabled, `GtkWidget:has-tooltip` will be set to `true` and
    /// `icon_view` will connect a `GtkWidget::query-tooltip` signal handler.
    /// 
    /// Note that the signal handler sets the text with `gtk_tooltip_set_markup()`,
    /// so &, &lt;, etc have to be escaped in the text.
    @inlinable func setTooltip(column: Int) {
        gtk_icon_view_set_tooltip_column(icon_view_ptr, gint(column))
    
    }

    /// Sets the tip area of `tooltip` to be the area covered by the item at `path`.
    /// See also `gtk_icon_view_set_tooltip_column()` for a simpler alternative.
    /// See also `gtk_tooltip_set_tip_area()`.
    @inlinable func setTooltipItem<TooltipT: TooltipProtocol, TreePathT: TreePathProtocol>(tooltip: TooltipT, path: TreePathT) {
        gtk_icon_view_set_tooltip_item(icon_view_ptr, tooltip.tooltip_ptr, path.tree_path_ptr)
    
    }

    /// Unselects all the icons.
    @inlinable func unselectAll() {
        gtk_icon_view_unselect_all(icon_view_ptr)
    
    }

    /// Unselects the row at `path`.
    @inlinable func unselect<TreePathT: TreePathProtocol>(path: TreePathT) {
        gtk_icon_view_unselect_path(icon_view_ptr, path.tree_path_ptr)
    
    }

    /// Undoes the effect of `gtk_icon_view_enable_model_drag_dest()`. Calling this
    /// method sets `GtkIconView:reorderable` to `false`.
    @inlinable func unsetModelDragDest() {
        gtk_icon_view_unset_model_drag_dest(icon_view_ptr)
    
    }

    /// Undoes the effect of `gtk_icon_view_enable_model_drag_source()`. Calling this
    /// method sets `GtkIconView:reorderable` to `false`.
    @inlinable func unsetModelDragSource() {
        gtk_icon_view_unset_model_drag_source(icon_view_ptr)
    
    }
    /// Gets the setting set by `gtk_icon_view_set_activate_on_single_click()`.
    @inlinable var activateOnSingleClick: Bool {
        /// Gets the setting set by `gtk_icon_view_set_activate_on_single_click()`.
        get {
            let rv = ((gtk_icon_view_get_activate_on_single_click(icon_view_ptr)) != 0)
            return rv
        }
        /// Causes the `GtkIconView::item-activated` signal to be emitted on
        /// a single click instead of a double click.
        nonmutating set {
            gtk_icon_view_set_activate_on_single_click(icon_view_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the value of the `column-spacing` property.
    @inlinable var columnSpacing: Int {
        /// Returns the value of the `column-spacing` property.
        get {
            let rv = Int(gtk_icon_view_get_column_spacing(icon_view_ptr))
            return rv
        }
        /// Sets the `column-spacing` property which specifies the space
        /// which is inserted between the columns of the icon view.
        nonmutating set {
            gtk_icon_view_set_column_spacing(icon_view_ptr, gint(newValue))
        }
    }

    /// The columns property contains the number of the columns in which the
    /// items should be displayed. If it is -1, the number of columns will
    /// be chosen automatically to fill the available area.
    @inlinable var columns: Int {
        /// Returns the value of the `columns` property.
        get {
            let rv = Int(gtk_icon_view_get_columns(icon_view_ptr))
            return rv
        }
        /// Sets the `columns` property which determines in how
        /// many columns the icons are arranged. If `columns` is
        /// -1, the number of columns will be chosen automatically
        /// to fill the available area.
        nonmutating set {
            gtk_icon_view_set_columns(icon_view_ptr, gint(newValue))
        }
    }

    /// Returns the value of the `item-orientation` property which determines
    /// whether the labels are drawn beside the icons instead of below.
    @inlinable var itemOrientation: GtkOrientation {
        /// Returns the value of the `item-orientation` property which determines
        /// whether the labels are drawn beside the icons instead of below.
        get {
            let rv = gtk_icon_view_get_item_orientation(icon_view_ptr)
            return rv
        }
        /// Sets the `item-orientation` property which determines whether the labels
        /// are drawn beside the icons instead of below.
        nonmutating set {
            gtk_icon_view_set_item_orientation(icon_view_ptr, newValue)
        }
    }

    /// Returns the value of the `item-padding` property.
    @inlinable var itemPadding: Int {
        /// Returns the value of the `item-padding` property.
        get {
            let rv = Int(gtk_icon_view_get_item_padding(icon_view_ptr))
            return rv
        }
        /// Sets the `GtkIconView:item-padding` property which specifies the padding
        /// around each of the icon view’s items.
        nonmutating set {
            gtk_icon_view_set_item_padding(icon_view_ptr, gint(newValue))
        }
    }

    /// Returns the value of the `item-width` property.
    @inlinable var itemWidth: Int {
        /// Returns the value of the `item-width` property.
        get {
            let rv = Int(gtk_icon_view_get_item_width(icon_view_ptr))
            return rv
        }
        /// Sets the `item-width` property which specifies the width
        /// to use for each item. If it is set to -1, the icon view will
        /// automatically determine a suitable item size.
        nonmutating set {
            gtk_icon_view_set_item_width(icon_view_ptr, gint(newValue))
        }
    }

    /// The margin property specifies the space which is inserted
    /// at the edges of the icon view.
    @inlinable var margin: Int {
        /// Returns the value of the `margin` property.
        get {
            let rv = Int(gtk_icon_view_get_margin(icon_view_ptr))
            return rv
        }
        /// Sets the `margin` property which specifies the space
        /// which is inserted at the top, bottom, left and right
        /// of the icon view.
        nonmutating set {
            gtk_icon_view_set_margin(icon_view_ptr, gint(newValue))
        }
    }

    /// Returns the column with markup text for `icon_view`.
    @inlinable var markupColumn: Int {
        /// Returns the column with markup text for `icon_view`.
        get {
            let rv = Int(gtk_icon_view_get_markup_column(icon_view_ptr))
            return rv
        }
        /// Sets the column with markup information for `icon_view` to be
        /// `column`. The markup column must be of type `G_TYPE_STRING`.
        /// If the markup column is set to something, it overrides
        /// the text column set by `gtk_icon_view_set_text_column()`.
        nonmutating set {
            gtk_icon_view_set_markup_column(icon_view_ptr, gint(newValue))
        }
    }

    @inlinable var model: TreeModelRef! {
        /// Returns the model the `GtkIconView` is based on.  Returns `nil` if the
        /// model is unset.
        get {
            let rv = TreeModelRef(gconstpointer: gconstpointer(gtk_icon_view_get_model(icon_view_ptr)))
            return rv
        }
        /// Sets the model for a `GtkIconView`.
        /// If the `icon_view` already has a model set, it will remove
        /// it before setting the new model.  If `model` is `nil`, then
        /// it will unset the old model.
        nonmutating set {
            gtk_icon_view_set_model(icon_view_ptr, UnsafeMutablePointer<GtkTreeModel>(newValue?.tree_model_ptr))
        }
    }

    /// Returns the column with pixbufs for `icon_view`.
    @inlinable var pixbufColumn: Int {
        /// Returns the column with pixbufs for `icon_view`.
        get {
            let rv = Int(gtk_icon_view_get_pixbuf_column(icon_view_ptr))
            return rv
        }
        /// Sets the column with pixbufs for `icon_view` to be `column`. The pixbuf
        /// column must be of type `GDK_TYPE_PIXBUF`
        nonmutating set {
            gtk_icon_view_set_pixbuf_column(icon_view_ptr, gint(newValue))
        }
    }

    /// The reorderable property specifies if the items can be reordered
    /// by DND.
    @inlinable var reorderable: Bool {
        /// Retrieves whether the user can reorder the list via drag-and-drop.
        /// See `gtk_icon_view_set_reorderable()`.
        get {
            let rv = ((gtk_icon_view_get_reorderable(icon_view_ptr)) != 0)
            return rv
        }
        /// This function is a convenience function to allow you to reorder models that
        /// support the `GtkTreeDragSourceIface` and the `GtkTreeDragDestIface`.  Both
        /// `GtkTreeStore` and `GtkListStore` support these.  If `reorderable` is `true`, then
        /// the user can reorder the model by dragging and dropping rows.  The
        /// developer can listen to these changes by connecting to the model's
        /// row_inserted and row_deleted signals. The reordering is implemented by setting up
        /// the icon view as a drag source and destination. Therefore, drag and
        /// drop can not be used in a reorderable view for any other purpose.
        /// 
        /// This function does not give you any degree of control over the order -- any
        /// reordering is allowed.  If more control is needed, you should probably
        /// handle drag and drop manually.
        nonmutating set {
            gtk_icon_view_set_reorderable(icon_view_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the value of the `row-spacing` property.
    @inlinable var rowSpacing: Int {
        /// Returns the value of the `row-spacing` property.
        get {
            let rv = Int(gtk_icon_view_get_row_spacing(icon_view_ptr))
            return rv
        }
        /// Sets the `row-spacing` property which specifies the space
        /// which is inserted between the rows of the icon view.
        nonmutating set {
            gtk_icon_view_set_row_spacing(icon_view_ptr, gint(newValue))
        }
    }

    /// Creates a list of paths of all selected items. Additionally, if you are
    /// planning on modifying the model after calling this function, you may
    /// want to convert the returned list into a list of `GtkTreeRowReferences`.
    /// To do this, you can use `gtk_tree_row_reference_new()`.
    /// 
    /// To free the return value, use:
    /// (C Language Example):
    /// ```C
    /// g_list_free_full (list, (GDestroyNotify) gtk_tree_path_free);
    /// ```
    /// 
    @inlinable var selectedItems: GLib.ListRef! {
        /// Creates a list of paths of all selected items. Additionally, if you are
        /// planning on modifying the model after calling this function, you may
        /// want to convert the returned list into a list of `GtkTreeRowReferences`.
        /// To do this, you can use `gtk_tree_row_reference_new()`.
        /// 
        /// To free the return value, use:
        /// (C Language Example):
        /// ```C
        /// g_list_free_full (list, (GDestroyNotify) gtk_tree_path_free);
        /// ```
        /// 
        get {
            let rv = GLib.ListRef(gtk_icon_view_get_selected_items(icon_view_ptr))
            return rv
        }
    }

    /// Gets the selection mode of the `icon_view`.
    @inlinable var selectionMode: GtkSelectionMode {
        /// Gets the selection mode of the `icon_view`.
        get {
            let rv = gtk_icon_view_get_selection_mode(icon_view_ptr)
            return rv
        }
        /// Sets the selection mode of the `icon_view`.
        nonmutating set {
            gtk_icon_view_set_selection_mode(icon_view_ptr, newValue)
        }
    }

    /// The spacing property specifies the space which is inserted between
    /// the cells (i.e. the icon and the text) of an item.
    @inlinable var spacing: Int {
        /// Returns the value of the `spacing` property.
        get {
            let rv = Int(gtk_icon_view_get_spacing(icon_view_ptr))
            return rv
        }
        /// Sets the `spacing` property which specifies the space
        /// which is inserted between the cells (i.e. the icon and
        /// the text) of an item.
        nonmutating set {
            gtk_icon_view_set_spacing(icon_view_ptr, gint(newValue))
        }
    }

    /// Returns the column with text for `icon_view`.
    @inlinable var textColumn: Int {
        /// Returns the column with text for `icon_view`.
        get {
            let rv = Int(gtk_icon_view_get_text_column(icon_view_ptr))
            return rv
        }
        /// Sets the column with text for `icon_view` to be `column`. The text
        /// column must be of type `G_TYPE_STRING`.
        nonmutating set {
            gtk_icon_view_set_text_column(icon_view_ptr, gint(newValue))
        }
    }

    /// Returns the column of `icon_view`’s model which is being used for
    /// displaying tooltips on `icon_view`’s rows.
    @inlinable var tooltipColumn: Int {
        /// Returns the column of `icon_view`’s model which is being used for
        /// displaying tooltips on `icon_view`’s rows.
        get {
            let rv = Int(gtk_icon_view_get_tooltip_column(icon_view_ptr))
            return rv
        }
        /// If you only plan to have simple (text-only) tooltips on full items, you
        /// can use this function to have `GtkIconView` handle these automatically
        /// for you. `column` should be set to the column in `icon_view`’s model
        /// containing the tooltip texts, or -1 to disable this feature.
        /// 
        /// When enabled, `GtkWidget:has-tooltip` will be set to `true` and
        /// `icon_view` will connect a `GtkWidget::query-tooltip` signal handler.
        /// 
        /// Note that the signal handler sets the text with `gtk_tooltip_set_markup()`,
        /// so &, &lt;, etc have to be escaped in the text.
        nonmutating set {
            gtk_icon_view_set_tooltip_column(icon_view_ptr, gint(newValue))
        }
    }

    @inlinable var parent: GtkContainer {
        get {
            let rv = icon_view_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - IconViewAccessible Class


///
/// The `IconViewAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkIconViewAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconViewAccessible`.
/// Alternatively, use `IconViewAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IconViewAccessibleProtocol: ContainerAccessibleProtocol, Atk.SelectionProtocol {
        /// Untyped pointer to the underlying `GtkIconViewAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIconViewAccessible` instance.
    var icon_view_accessible_ptr: UnsafeMutablePointer<GtkIconViewAccessible>! { get }

    /// Required Initialiser for types conforming to `IconViewAccessibleProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `IconViewAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkIconViewAccessible` instance.
/// It exposes methods that can operate on this data type through `IconViewAccessibleProtocol` conformance.
/// Use `IconViewAccessibleRef` only as an `unowned` reference to an existing `GtkIconViewAccessible` instance.
///
public struct IconViewAccessibleRef: IconViewAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkIconViewAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `icon_view_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconViewAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIconViewAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIconViewAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIconViewAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIconViewAccessible>?) {
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

    /// Reference intialiser for a related type that implements `IconViewAccessibleProtocol`
    @inlinable init<T: IconViewAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IconViewAccessibleProtocol>(_ other: T) -> IconViewAccessibleRef { IconViewAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `IconViewAccessible` type acts as a reference-counted owner of an underlying `GtkIconViewAccessible` instance.
/// It provides the methods that can operate on this data type through `IconViewAccessibleProtocol` conformance.
/// Use `IconViewAccessible` as a strong reference or owner of a `GtkIconViewAccessible` instance.
///
open class IconViewAccessible: ContainerAccessible, IconViewAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconViewAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIconViewAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconViewAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIconViewAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconViewAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconViewAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconViewAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIconViewAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconViewAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIconViewAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkIconViewAccessible`.
    /// i.e., ownership is transferred to the `IconViewAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIconViewAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IconViewAccessibleProtocol`
    /// Will retain `GtkIconViewAccessible`.
    /// - Parameter other: an instance of a related type that implements `IconViewAccessibleProtocol`
    @inlinable public init<T: IconViewAccessibleProtocol>(iconViewAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum IconViewAccessiblePropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case widget = "widget"
}

public extension IconViewAccessibleProtocol {
    /// Bind a `IconViewAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: IconViewAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a IconViewAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: IconViewAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a IconViewAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: IconViewAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum IconViewAccessibleSignalName: String, SignalNameProtocol {
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property-changed` is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyWidget = "notify::widget"
}

// MARK: IconViewAccessible has no signals
// MARK: IconViewAccessible Class: IconViewAccessibleProtocol extension (methods and fields)
public extension IconViewAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconViewAccessible` instance.
    @inlinable var icon_view_accessible_ptr: UnsafeMutablePointer<GtkIconViewAccessible>! { return ptr?.assumingMemoryBound(to: GtkIconViewAccessible.self) }


    @inlinable var parent: GtkContainerAccessible {
        get {
            let rv = icon_view_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Image Class

/// The `GtkImage` widget displays an image. Various kinds of object
/// can be displayed as an image; most typically, you would load a
/// `GdkPixbuf` ("pixel buffer") from a file, and then display that.
/// There’s a convenience function to do this, `gtk_image_new_from_file()`,
/// used as follows:
/// (C Language Example):
/// ```C
///   GtkWidget *image;
///   image = gtk_image_new_from_file ("myfile.png");
/// ```
/// If the file isn’t loaded successfully, the image will contain a
/// “broken image” icon similar to that used in many web browsers.
/// If you want to handle errors in loading the file yourself,
/// for example by displaying an error message, then load the image with
/// `gdk_pixbuf_new_from_file()`, then create the `GtkImage` with
/// `gtk_image_new_from_pixbuf()`.
/// 
/// The image file may contain an animation, if so the `GtkImage` will
/// display an animation (`GdkPixbufAnimation`) instead of a static image.
/// 
/// `GtkImage` is a subclass of `GtkMisc`, which implies that you can
/// align it (center, left, right) and add padding to it, using
/// `GtkMisc` methods.
/// 
/// `GtkImage` is a “no window” widget (has no `GdkWindow` of its own),
/// so by default does not receive events. If you want to receive events
/// on the image, such as button clicks, place the image inside a
/// `GtkEventBox`, then connect to the event signals on the event box.
/// 
/// ## Handling button press events on a `GtkImage`.
/// 
/// (C Language Example):
/// ```C
///   static gboolean
///   button_press_callback (GtkWidget      *event_box,
///                          GdkEventButton *event,
///                          gpointer        data)
///   {
///     g_print ("Event box clicked at coordinates %f,%f\n",
///              event->x, event->y);
/// 
///     // Returning TRUE means we handled the event, so the signal
///     // emission should be stopped (don’t call any further callbacks
///     // that may be connected). Return FALSE to continue invoking callbacks.
///     return TRUE;
///   }
/// 
///   static GtkWidget*
///   create_image (void)
///   {
///     GtkWidget *image;
///     GtkWidget *event_box;
/// 
///     image = gtk_image_new_from_file ("myfile.png");
/// 
///     event_box = gtk_event_box_new ();
/// 
///     gtk_container_add (GTK_CONTAINER (event_box), image);
/// 
///     g_signal_connect (G_OBJECT (event_box),
///                       "button_press_event",
///                       G_CALLBACK (button_press_callback),
///                       image);
/// 
///     return image;
///   }
/// ```
/// 
/// When handling events on the event box, keep in mind that coordinates
/// in the image may be different from event box coordinates due to
/// the alignment and padding settings on the image (see `GtkMisc`).
/// The simplest way to solve this is to set the alignment to 0.0
/// (left/top), and set the padding to zero. Then the origin of
/// the image will be the same as the origin of the event box.
/// 
/// Sometimes an application will want to avoid depending on external data
/// files, such as image files. GTK+ comes with a program to avoid this,
/// called “gdk-pixbuf-csource”. This library
/// allows you to convert an image into a C variable declaration, which
/// can then be loaded into a `GdkPixbuf` using
/// `gdk_pixbuf_new_from_inline()`.
/// 
/// # CSS nodes
/// 
/// GtkImage has a single CSS node with the name image. The style classes
/// may appear on image CSS nodes: .icon-dropshadow, .lowres-icon.
///
/// The `ImageProtocol` protocol exposes the methods and properties of an underlying `GtkImage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Image`.
/// Alternatively, use `ImageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ImageProtocol: MiscProtocol {
        /// Untyped pointer to the underlying `GtkImage` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkImage` instance.
    var image_ptr: UnsafeMutablePointer<GtkImage>! { get }

    /// Required Initialiser for types conforming to `ImageProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GtkImage` widget displays an image. Various kinds of object
/// can be displayed as an image; most typically, you would load a
/// `GdkPixbuf` ("pixel buffer") from a file, and then display that.
/// There’s a convenience function to do this, `gtk_image_new_from_file()`,
/// used as follows:
/// (C Language Example):
/// ```C
///   GtkWidget *image;
///   image = gtk_image_new_from_file ("myfile.png");
/// ```
/// If the file isn’t loaded successfully, the image will contain a
/// “broken image” icon similar to that used in many web browsers.
/// If you want to handle errors in loading the file yourself,
/// for example by displaying an error message, then load the image with
/// `gdk_pixbuf_new_from_file()`, then create the `GtkImage` with
/// `gtk_image_new_from_pixbuf()`.
/// 
/// The image file may contain an animation, if so the `GtkImage` will
/// display an animation (`GdkPixbufAnimation`) instead of a static image.
/// 
/// `GtkImage` is a subclass of `GtkMisc`, which implies that you can
/// align it (center, left, right) and add padding to it, using
/// `GtkMisc` methods.
/// 
/// `GtkImage` is a “no window” widget (has no `GdkWindow` of its own),
/// so by default does not receive events. If you want to receive events
/// on the image, such as button clicks, place the image inside a
/// `GtkEventBox`, then connect to the event signals on the event box.
/// 
/// ## Handling button press events on a `GtkImage`.
/// 
/// (C Language Example):
/// ```C
///   static gboolean
///   button_press_callback (GtkWidget      *event_box,
///                          GdkEventButton *event,
///                          gpointer        data)
///   {
///     g_print ("Event box clicked at coordinates %f,%f\n",
///              event->x, event->y);
/// 
///     // Returning TRUE means we handled the event, so the signal
///     // emission should be stopped (don’t call any further callbacks
///     // that may be connected). Return FALSE to continue invoking callbacks.
///     return TRUE;
///   }
/// 
///   static GtkWidget*
///   create_image (void)
///   {
///     GtkWidget *image;
///     GtkWidget *event_box;
/// 
///     image = gtk_image_new_from_file ("myfile.png");
/// 
///     event_box = gtk_event_box_new ();
/// 
///     gtk_container_add (GTK_CONTAINER (event_box), image);
/// 
///     g_signal_connect (G_OBJECT (event_box),
///                       "button_press_event",
///                       G_CALLBACK (button_press_callback),
///                       image);
/// 
///     return image;
///   }
/// ```
/// 
/// When handling events on the event box, keep in mind that coordinates
/// in the image may be different from event box coordinates due to
/// the alignment and padding settings on the image (see `GtkMisc`).
/// The simplest way to solve this is to set the alignment to 0.0
/// (left/top), and set the padding to zero. Then the origin of
/// the image will be the same as the origin of the event box.
/// 
/// Sometimes an application will want to avoid depending on external data
/// files, such as image files. GTK+ comes with a program to avoid this,
/// called “gdk-pixbuf-csource”. This library
/// allows you to convert an image into a C variable declaration, which
/// can then be loaded into a `GdkPixbuf` using
/// `gdk_pixbuf_new_from_inline()`.
/// 
/// # CSS nodes
/// 
/// GtkImage has a single CSS node with the name image. The style classes
/// may appear on image CSS nodes: .icon-dropshadow, .lowres-icon.
///
/// The `ImageRef` type acts as a lightweight Swift reference to an underlying `GtkImage` instance.
/// It exposes methods that can operate on this data type through `ImageProtocol` conformance.
/// Use `ImageRef` only as an `unowned` reference to an existing `GtkImage` instance.
///
public struct ImageRef: ImageProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkImage` instance.
    /// For type-safe access, use the generated, typed pointer `image_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ImageRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkImage>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkImage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkImage>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkImage>?) {
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

    /// Reference intialiser for a related type that implements `ImageProtocol`
    @inlinable init<T: ImageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ImageProtocol>(_ other: T) -> ImageRef { ImageRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new empty `GtkImage` widget.
    @inlinable init() {
        let rv = gtk_image_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GtkImage` displaying the given animation.
    /// The `GtkImage` does not assume a reference to the
    /// animation; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    /// 
    /// Note that the animation frames are shown using a timeout with
    /// `G_PRIORITY_DEFAULT`. When using animations to indicate busyness,
    /// keep in mind that the animation will only be shown if the main loop
    /// is not busy with something that has a higher priority.
    @inlinable init<PixbufAnimationT: PixbufAnimationProtocol>(animation: PixbufAnimationT) {
        let rv = gtk_image_new_from_animation(animation.pixbuf_animation_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkImage` displaying the file `filename`. If the file
    /// isn’t found or can’t be loaded, the resulting `GtkImage` will
    /// display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If the file contains an animation, the image will contain an
    /// animation.
    /// 
    /// If you need to detect failures to load the file, use
    /// `gdk_pixbuf_new_from_file()` to load the file yourself, then create
    /// the `GtkImage` from the pixbuf. (Or for animations, use
    /// `gdk_pixbuf_animation_new_from_file()`).
    /// 
    /// The storage type (`gtk_image_get_storage_type()`) of the returned
    /// image is not defined, it will be whatever is appropriate for
    /// displaying the file.
    @inlinable init(file filename: UnsafePointer<gchar>!) {
        let rv = gtk_image_new_from_file(filename)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead.  If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable init<IconT: GIO.IconProtocol>(gicon icon: IconT, size: GtkIconSize) {
        let rv = gtk_image_new_from_gicon(icon.icon_ptr, size)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead.  If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable init(iconName iconName: UnsafePointer<gchar>? = nil, size: GtkIconSize) {
        let rv = gtk_image_new_from_icon_name(iconName, size)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GtkImage` displaying an icon set. Sample stock sizes are
    /// `GTK_ICON_SIZE_MENU`, `GTK_ICON_SIZE_SMALL_TOOLBAR`. Instead of using
    /// this function, usually it’s better to create a `GtkIconFactory`, put
    /// your icon sets in the icon factory, add the icon factory to the
    /// list of default factories with `gtk_icon_factory_add_default()`, and
    /// then use `gtk_image_new_from_stock()`. This will allow themes to
    /// override the icon you ship with your application.
    /// 
    /// The `GtkImage` does not assume a reference to the
    /// icon set; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    ///
    /// **new_from_icon_set is deprecated:**
    /// Use gtk_image_new_from_icon_name() instead.
    @available(*, deprecated)
    @inlinable init<IconSetT: IconSetProtocol>(iconSet iconSet: IconSetT, size: GtkIconSize) {
        let rv = gtk_image_new_from_icon_set(iconSet.icon_set_ptr, size)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkImage` displaying `pixbuf`.
    /// The `GtkImage` does not assume a reference to the
    /// pixbuf; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    /// 
    /// Note that this function just creates an `GtkImage` from the pixbuf. The
    /// `GtkImage` created will not react to state changes. Should you want that,
    /// you should use `gtk_image_new_from_icon_name()`.
    @inlinable init<PixbufT: PixbufProtocol>(pixbuf: PixbufT?) {
        let rv = gtk_image_new_from_pixbuf(pixbuf?.pixbuf_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkImage` displaying the resource file `resource_path`. If the file
    /// isn’t found or can’t be loaded, the resulting `GtkImage` will
    /// display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If the file contains an animation, the image will contain an
    /// animation.
    /// 
    /// If you need to detect failures to load the file, use
    /// `gdk_pixbuf_new_from_file()` to load the file yourself, then create
    /// the `GtkImage` from the pixbuf. (Or for animations, use
    /// `gdk_pixbuf_animation_new_from_file()`).
    /// 
    /// The storage type (`gtk_image_get_storage_type()`) of the returned
    /// image is not defined, it will be whatever is appropriate for
    /// displaying the file.
    @inlinable init(resource resourcePath: UnsafePointer<gchar>!) {
        let rv = gtk_image_new_from_resource(resourcePath)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GtkImage` displaying a stock icon. Sample stock icon
    /// names are `GTK_STOCK_OPEN`, `GTK_STOCK_QUIT`. Sample stock sizes
    /// are `GTK_ICON_SIZE_MENU`, `GTK_ICON_SIZE_SMALL_TOOLBAR`. If the stock
    /// icon name isn’t known, the image will be empty.
    /// You can register your own stock icon names, see
    /// `gtk_icon_factory_add_default()` and `gtk_icon_factory_add()`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_image_new_from_icon_name() instead.
    @available(*, deprecated)
    @inlinable init(stock stockID: UnsafePointer<gchar>!, size: GtkIconSize) {
        let rv = gtk_image_new_from_stock(stockID, size)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkImage` displaying `surface`.
    /// The `GtkImage` does not assume a reference to the
    /// surface; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    @inlinable init<SurfaceT: Cairo.SurfaceProtocol>(surface: SurfaceT?) {
        let rv = gtk_image_new_from_surface(surface?._ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a `GtkImage` displaying the given animation.
    /// The `GtkImage` does not assume a reference to the
    /// animation; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    /// 
    /// Note that the animation frames are shown using a timeout with
    /// `G_PRIORITY_DEFAULT`. When using animations to indicate busyness,
    /// keep in mind that the animation will only be shown if the main loop
    /// is not busy with something that has a higher priority.
    @inlinable static func newFrom<PixbufAnimationT: PixbufAnimationProtocol>(animation: PixbufAnimationT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_new_from_animation(animation.pixbuf_animation_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GtkImage` displaying the file `filename`. If the file
    /// isn’t found or can’t be loaded, the resulting `GtkImage` will
    /// display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If the file contains an animation, the image will contain an
    /// animation.
    /// 
    /// If you need to detect failures to load the file, use
    /// `gdk_pixbuf_new_from_file()` to load the file yourself, then create
    /// the `GtkImage` from the pixbuf. (Or for animations, use
    /// `gdk_pixbuf_animation_new_from_file()`).
    /// 
    /// The storage type (`gtk_image_get_storage_type()`) of the returned
    /// image is not defined, it will be whatever is appropriate for
    /// displaying the file.
    @inlinable static func newFrom(file filename: UnsafePointer<gchar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_new_from_file(filename))) else { return nil }
        return rv
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead.  If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable static func newFromG<IconT: GIO.IconProtocol>(gicon icon: IconT, size: GtkIconSize) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_new_from_gicon(icon.icon_ptr, size))) else { return nil }
        return rv
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead.  If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable static func newFrom(iconName iconName: UnsafePointer<gchar>? = nil, size: GtkIconSize) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_new_from_icon_name(iconName, size))) else { return nil }
        return rv
    }

    /// Creates a `GtkImage` displaying an icon set. Sample stock sizes are
    /// `GTK_ICON_SIZE_MENU`, `GTK_ICON_SIZE_SMALL_TOOLBAR`. Instead of using
    /// this function, usually it’s better to create a `GtkIconFactory`, put
    /// your icon sets in the icon factory, add the icon factory to the
    /// list of default factories with `gtk_icon_factory_add_default()`, and
    /// then use `gtk_image_new_from_stock()`. This will allow themes to
    /// override the icon you ship with your application.
    /// 
    /// The `GtkImage` does not assume a reference to the
    /// icon set; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    ///
    /// **new_from_icon_set is deprecated:**
    /// Use gtk_image_new_from_icon_name() instead.
    @available(*, deprecated)
    @inlinable static func newFrom<IconSetT: IconSetProtocol>(iconSet iconSet: IconSetT, size: GtkIconSize) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_new_from_icon_set(iconSet.icon_set_ptr, size))) else { return nil }
        return rv
    }

    /// Creates a new `GtkImage` displaying `pixbuf`.
    /// The `GtkImage` does not assume a reference to the
    /// pixbuf; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    /// 
    /// Note that this function just creates an `GtkImage` from the pixbuf. The
    /// `GtkImage` created will not react to state changes. Should you want that,
    /// you should use `gtk_image_new_from_icon_name()`.
    @inlinable static func newFrom<PixbufT: PixbufProtocol>(pixbuf: PixbufT?) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_new_from_pixbuf(pixbuf?.pixbuf_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GtkImage` displaying the resource file `resource_path`. If the file
    /// isn’t found or can’t be loaded, the resulting `GtkImage` will
    /// display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If the file contains an animation, the image will contain an
    /// animation.
    /// 
    /// If you need to detect failures to load the file, use
    /// `gdk_pixbuf_new_from_file()` to load the file yourself, then create
    /// the `GtkImage` from the pixbuf. (Or for animations, use
    /// `gdk_pixbuf_animation_new_from_file()`).
    /// 
    /// The storage type (`gtk_image_get_storage_type()`) of the returned
    /// image is not defined, it will be whatever is appropriate for
    /// displaying the file.
    @inlinable static func newFrom(resource resourcePath: UnsafePointer<gchar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_new_from_resource(resourcePath))) else { return nil }
        return rv
    }

    /// Creates a `GtkImage` displaying a stock icon. Sample stock icon
    /// names are `GTK_STOCK_OPEN`, `GTK_STOCK_QUIT`. Sample stock sizes
    /// are `GTK_ICON_SIZE_MENU`, `GTK_ICON_SIZE_SMALL_TOOLBAR`. If the stock
    /// icon name isn’t known, the image will be empty.
    /// You can register your own stock icon names, see
    /// `gtk_icon_factory_add_default()` and `gtk_icon_factory_add()`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_image_new_from_icon_name() instead.
    @available(*, deprecated)
    @inlinable static func newFrom(stock stockID: UnsafePointer<gchar>!, size: GtkIconSize) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_new_from_stock(stockID, size))) else { return nil }
        return rv
    }

    /// Creates a new `GtkImage` displaying `surface`.
    /// The `GtkImage` does not assume a reference to the
    /// surface; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    @inlinable static func newFrom<SurfaceT: Cairo.SurfaceProtocol>(surface: SurfaceT?) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_new_from_surface(surface?._ptr))) else { return nil }
        return rv
    }
}

/// The `GtkImage` widget displays an image. Various kinds of object
/// can be displayed as an image; most typically, you would load a
/// `GdkPixbuf` ("pixel buffer") from a file, and then display that.
/// There’s a convenience function to do this, `gtk_image_new_from_file()`,
/// used as follows:
/// (C Language Example):
/// ```C
///   GtkWidget *image;
///   image = gtk_image_new_from_file ("myfile.png");
/// ```
/// If the file isn’t loaded successfully, the image will contain a
/// “broken image” icon similar to that used in many web browsers.
/// If you want to handle errors in loading the file yourself,
/// for example by displaying an error message, then load the image with
/// `gdk_pixbuf_new_from_file()`, then create the `GtkImage` with
/// `gtk_image_new_from_pixbuf()`.
/// 
/// The image file may contain an animation, if so the `GtkImage` will
/// display an animation (`GdkPixbufAnimation`) instead of a static image.
/// 
/// `GtkImage` is a subclass of `GtkMisc`, which implies that you can
/// align it (center, left, right) and add padding to it, using
/// `GtkMisc` methods.
/// 
/// `GtkImage` is a “no window” widget (has no `GdkWindow` of its own),
/// so by default does not receive events. If you want to receive events
/// on the image, such as button clicks, place the image inside a
/// `GtkEventBox`, then connect to the event signals on the event box.
/// 
/// ## Handling button press events on a `GtkImage`.
/// 
/// (C Language Example):
/// ```C
///   static gboolean
///   button_press_callback (GtkWidget      *event_box,
///                          GdkEventButton *event,
///                          gpointer        data)
///   {
///     g_print ("Event box clicked at coordinates %f,%f\n",
///              event->x, event->y);
/// 
///     // Returning TRUE means we handled the event, so the signal
///     // emission should be stopped (don’t call any further callbacks
///     // that may be connected). Return FALSE to continue invoking callbacks.
///     return TRUE;
///   }
/// 
///   static GtkWidget*
///   create_image (void)
///   {
///     GtkWidget *image;
///     GtkWidget *event_box;
/// 
///     image = gtk_image_new_from_file ("myfile.png");
/// 
///     event_box = gtk_event_box_new ();
/// 
///     gtk_container_add (GTK_CONTAINER (event_box), image);
/// 
///     g_signal_connect (G_OBJECT (event_box),
///                       "button_press_event",
///                       G_CALLBACK (button_press_callback),
///                       image);
/// 
///     return image;
///   }
/// ```
/// 
/// When handling events on the event box, keep in mind that coordinates
/// in the image may be different from event box coordinates due to
/// the alignment and padding settings on the image (see `GtkMisc`).
/// The simplest way to solve this is to set the alignment to 0.0
/// (left/top), and set the padding to zero. Then the origin of
/// the image will be the same as the origin of the event box.
/// 
/// Sometimes an application will want to avoid depending on external data
/// files, such as image files. GTK+ comes with a program to avoid this,
/// called “gdk-pixbuf-csource”. This library
/// allows you to convert an image into a C variable declaration, which
/// can then be loaded into a `GdkPixbuf` using
/// `gdk_pixbuf_new_from_inline()`.
/// 
/// # CSS nodes
/// 
/// GtkImage has a single CSS node with the name image. The style classes
/// may appear on image CSS nodes: .icon-dropshadow, .lowres-icon.
///
/// The `Image` type acts as a reference-counted owner of an underlying `GtkImage` instance.
/// It provides the methods that can operate on this data type through `ImageProtocol` conformance.
/// Use `Image` as a strong reference or owner of a `GtkImage` instance.
///
open class Image: Misc, ImageProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Image` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkImage>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Image` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkImage>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Image` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Image` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Image` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkImage>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Image` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkImage>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkImage`.
    /// i.e., ownership is transferred to the `Image` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkImage>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ImageProtocol`
    /// Will retain `GtkImage`.
    /// - Parameter other: an instance of a related type that implements `ImageProtocol`
    @inlinable public init<T: ImageProtocol>(image other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new empty `GtkImage` widget.
    @inlinable public init() {
        let rv = gtk_image_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkImage` displaying the given animation.
    /// The `GtkImage` does not assume a reference to the
    /// animation; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    /// 
    /// Note that the animation frames are shown using a timeout with
    /// `G_PRIORITY_DEFAULT`. When using animations to indicate busyness,
    /// keep in mind that the animation will only be shown if the main loop
    /// is not busy with something that has a higher priority.
    @inlinable public init<PixbufAnimationT: PixbufAnimationProtocol>(animation: PixbufAnimationT) {
        let rv = gtk_image_new_from_animation(animation.pixbuf_animation_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkImage` displaying the file `filename`. If the file
    /// isn’t found or can’t be loaded, the resulting `GtkImage` will
    /// display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If the file contains an animation, the image will contain an
    /// animation.
    /// 
    /// If you need to detect failures to load the file, use
    /// `gdk_pixbuf_new_from_file()` to load the file yourself, then create
    /// the `GtkImage` from the pixbuf. (Or for animations, use
    /// `gdk_pixbuf_animation_new_from_file()`).
    /// 
    /// The storage type (`gtk_image_get_storage_type()`) of the returned
    /// image is not defined, it will be whatever is appropriate for
    /// displaying the file.
    @inlinable public init(file filename: UnsafePointer<gchar>!) {
        let rv = gtk_image_new_from_file(filename)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead.  If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable public init<IconT: GIO.IconProtocol>(gicon icon: IconT, size: GtkIconSize) {
        let rv = gtk_image_new_from_gicon(icon.icon_ptr, size)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead.  If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable public init(iconName iconName: UnsafePointer<gchar>? = nil, size: GtkIconSize) {
        let rv = gtk_image_new_from_icon_name(iconName, size)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkImage` displaying an icon set. Sample stock sizes are
    /// `GTK_ICON_SIZE_MENU`, `GTK_ICON_SIZE_SMALL_TOOLBAR`. Instead of using
    /// this function, usually it’s better to create a `GtkIconFactory`, put
    /// your icon sets in the icon factory, add the icon factory to the
    /// list of default factories with `gtk_icon_factory_add_default()`, and
    /// then use `gtk_image_new_from_stock()`. This will allow themes to
    /// override the icon you ship with your application.
    /// 
    /// The `GtkImage` does not assume a reference to the
    /// icon set; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    ///
    /// **new_from_icon_set is deprecated:**
    /// Use gtk_image_new_from_icon_name() instead.
    @available(*, deprecated)
    @inlinable public init<IconSetT: IconSetProtocol>(iconSet iconSet: IconSetT, size: GtkIconSize) {
        let rv = gtk_image_new_from_icon_set(iconSet.icon_set_ptr, size)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkImage` displaying `pixbuf`.
    /// The `GtkImage` does not assume a reference to the
    /// pixbuf; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    /// 
    /// Note that this function just creates an `GtkImage` from the pixbuf. The
    /// `GtkImage` created will not react to state changes. Should you want that,
    /// you should use `gtk_image_new_from_icon_name()`.
    @inlinable public init<PixbufT: PixbufProtocol>(pixbuf: PixbufT?) {
        let rv = gtk_image_new_from_pixbuf(pixbuf?.pixbuf_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkImage` displaying the resource file `resource_path`. If the file
    /// isn’t found or can’t be loaded, the resulting `GtkImage` will
    /// display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If the file contains an animation, the image will contain an
    /// animation.
    /// 
    /// If you need to detect failures to load the file, use
    /// `gdk_pixbuf_new_from_file()` to load the file yourself, then create
    /// the `GtkImage` from the pixbuf. (Or for animations, use
    /// `gdk_pixbuf_animation_new_from_file()`).
    /// 
    /// The storage type (`gtk_image_get_storage_type()`) of the returned
    /// image is not defined, it will be whatever is appropriate for
    /// displaying the file.
    @inlinable public init(resource resourcePath: UnsafePointer<gchar>!) {
        let rv = gtk_image_new_from_resource(resourcePath)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkImage` displaying a stock icon. Sample stock icon
    /// names are `GTK_STOCK_OPEN`, `GTK_STOCK_QUIT`. Sample stock sizes
    /// are `GTK_ICON_SIZE_MENU`, `GTK_ICON_SIZE_SMALL_TOOLBAR`. If the stock
    /// icon name isn’t known, the image will be empty.
    /// You can register your own stock icon names, see
    /// `gtk_icon_factory_add_default()` and `gtk_icon_factory_add()`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_image_new_from_icon_name() instead.
    @available(*, deprecated)
    @inlinable public init(stock stockID: UnsafePointer<gchar>!, size: GtkIconSize) {
        let rv = gtk_image_new_from_stock(stockID, size)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkImage` displaying `surface`.
    /// The `GtkImage` does not assume a reference to the
    /// surface; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    @inlinable public init<SurfaceT: Cairo.SurfaceProtocol>(surface: SurfaceT?) {
        let rv = gtk_image_new_from_surface(surface?._ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkImage` displaying the given animation.
    /// The `GtkImage` does not assume a reference to the
    /// animation; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    /// 
    /// Note that the animation frames are shown using a timeout with
    /// `G_PRIORITY_DEFAULT`. When using animations to indicate busyness,
    /// keep in mind that the animation will only be shown if the main loop
    /// is not busy with something that has a higher priority.
    @inlinable public static func newFrom<PixbufAnimationT: PixbufAnimationProtocol>(animation: PixbufAnimationT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_new_from_animation(animation.pixbuf_animation_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkImage` displaying the file `filename`. If the file
    /// isn’t found or can’t be loaded, the resulting `GtkImage` will
    /// display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If the file contains an animation, the image will contain an
    /// animation.
    /// 
    /// If you need to detect failures to load the file, use
    /// `gdk_pixbuf_new_from_file()` to load the file yourself, then create
    /// the `GtkImage` from the pixbuf. (Or for animations, use
    /// `gdk_pixbuf_animation_new_from_file()`).
    /// 
    /// The storage type (`gtk_image_get_storage_type()`) of the returned
    /// image is not defined, it will be whatever is appropriate for
    /// displaying the file.
    @inlinable public static func newFrom(file filename: UnsafePointer<gchar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_new_from_file(filename))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead.  If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable public static func newFromG<IconT: GIO.IconProtocol>(gicon icon: IconT, size: GtkIconSize) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_new_from_gicon(icon.icon_ptr, size))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a `GtkImage` displaying an icon from the current icon theme.
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead.  If the current icon theme is changed, the icon
    /// will be updated appropriately.
    @inlinable public static func newFrom(iconName iconName: UnsafePointer<gchar>? = nil, size: GtkIconSize) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_new_from_icon_name(iconName, size))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a `GtkImage` displaying an icon set. Sample stock sizes are
    /// `GTK_ICON_SIZE_MENU`, `GTK_ICON_SIZE_SMALL_TOOLBAR`. Instead of using
    /// this function, usually it’s better to create a `GtkIconFactory`, put
    /// your icon sets in the icon factory, add the icon factory to the
    /// list of default factories with `gtk_icon_factory_add_default()`, and
    /// then use `gtk_image_new_from_stock()`. This will allow themes to
    /// override the icon you ship with your application.
    /// 
    /// The `GtkImage` does not assume a reference to the
    /// icon set; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    ///
    /// **new_from_icon_set is deprecated:**
    /// Use gtk_image_new_from_icon_name() instead.
    @available(*, deprecated)
    @inlinable public static func newFrom<IconSetT: IconSetProtocol>(iconSet iconSet: IconSetT, size: GtkIconSize) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_new_from_icon_set(iconSet.icon_set_ptr, size))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkImage` displaying `pixbuf`.
    /// The `GtkImage` does not assume a reference to the
    /// pixbuf; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    /// 
    /// Note that this function just creates an `GtkImage` from the pixbuf. The
    /// `GtkImage` created will not react to state changes. Should you want that,
    /// you should use `gtk_image_new_from_icon_name()`.
    @inlinable public static func newFrom<PixbufT: PixbufProtocol>(pixbuf: PixbufT?) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_new_from_pixbuf(pixbuf?.pixbuf_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkImage` displaying the resource file `resource_path`. If the file
    /// isn’t found or can’t be loaded, the resulting `GtkImage` will
    /// display a “broken image” icon. This function never returns `nil`,
    /// it always returns a valid `GtkImage` widget.
    /// 
    /// If the file contains an animation, the image will contain an
    /// animation.
    /// 
    /// If you need to detect failures to load the file, use
    /// `gdk_pixbuf_new_from_file()` to load the file yourself, then create
    /// the `GtkImage` from the pixbuf. (Or for animations, use
    /// `gdk_pixbuf_animation_new_from_file()`).
    /// 
    /// The storage type (`gtk_image_get_storage_type()`) of the returned
    /// image is not defined, it will be whatever is appropriate for
    /// displaying the file.
    @inlinable public static func newFrom(resource resourcePath: UnsafePointer<gchar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_new_from_resource(resourcePath))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a `GtkImage` displaying a stock icon. Sample stock icon
    /// names are `GTK_STOCK_OPEN`, `GTK_STOCK_QUIT`. Sample stock sizes
    /// are `GTK_ICON_SIZE_MENU`, `GTK_ICON_SIZE_SMALL_TOOLBAR`. If the stock
    /// icon name isn’t known, the image will be empty.
    /// You can register your own stock icon names, see
    /// `gtk_icon_factory_add_default()` and `gtk_icon_factory_add()`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_image_new_from_icon_name() instead.
    @available(*, deprecated)
    @inlinable public static func newFrom(stock stockID: UnsafePointer<gchar>!, size: GtkIconSize) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_new_from_stock(stockID, size))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkImage` displaying `surface`.
    /// The `GtkImage` does not assume a reference to the
    /// surface; you still need to unref it if you own references.
    /// `GtkImage` will add its own reference rather than adopting yours.
    @inlinable public static func newFrom<SurfaceT: Cairo.SurfaceProtocol>(surface: SurfaceT?) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_new_from_surface(surface?._ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum ImagePropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    case file = "file"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// The GIcon displayed in the GtkImage. For themed icons,
    /// If the icon theme is changed, the image will be updated
    /// automatically.
    case gicon = "gicon"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The name of the icon in the icon theme. If the icon theme is
    /// changed, the image will be updated automatically.
    case iconName = "icon-name"

    ///
    /// **icon-set is deprecated:**
    /// Use #GtkImage:icon-name instead.
    case iconSet = "icon-set"
    case iconSize = "icon-size"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case pixbuf = "pixbuf"
    case pixbufAnimation = "pixbuf-animation"
    /// The "pixel-size" property can be used to specify a fixed size
    /// overriding the `GtkImage:icon-size` property for images of type
    /// `GTK_IMAGE_ICON_NAME`.
    case pixelSize = "pixel-size"
    case receivesDefault = "receives-default"
    /// A path to a resource file to display.
    case resource = "resource"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"

    ///
    /// **stock is deprecated:**
    /// Use #GtkImage:icon-name instead.
    case stock = "stock"
    case storageType = "storage-type"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    case surface = "surface"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// Whether the icon displayed in the GtkImage will use
    /// standard icon names fallback. The value of this property
    /// is only relevant for images of type `GTK_IMAGE_ICON_NAME`
    /// and `GTK_IMAGE_GICON`.
    case useFallback = "use-fallback"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
    /// The horizontal alignment. A value of 0.0 means left alignment (or right
    /// on RTL locales); a value of 1.0 means right alignment (or left on RTL
    /// locales).
    ///
    /// **xalign is deprecated:**
    /// Use gtk_widget_set_halign() instead. If you are using
    ///   #GtkLabel, use #GtkLabel:xalign instead.
    case xalign = "xalign"
    /// The amount of space to add on the left and right of the widget, in
    /// pixels.
    ///
    /// **xpad is deprecated:**
    /// Use gtk_widget_set_margin_start() and
    ///   gtk_widget_set_margin_end() instead
    case xpad = "xpad"
    /// The vertical alignment. A value of 0.0 means top alignment;
    /// a value of 1.0 means bottom alignment.
    ///
    /// **yalign is deprecated:**
    /// Use gtk_widget_set_valign() instead. If you are using
    ///   #GtkLabel, use #GtkLabel:yalign instead.
    case yalign = "yalign"
    /// The amount of space to add on the top and bottom of the widget, in
    /// pixels.
    ///
    /// **ypad is deprecated:**
    /// Use gtk_widget_set_margin_top() and
    ///   gtk_widget_set_margin_bottom() instead
    case ypad = "ypad"
}

public extension ImageProtocol {
    /// Bind a `ImagePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ImagePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a Image property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ImagePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Image property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ImagePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ImageSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The `button-press-event` signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button-release-event` signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    /// The `child-notify` signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The `composited-changed` signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure-event` signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete-event` signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy-event` signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction-changed` signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag-begin` signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag-data-delete` signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag-data-get` signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag-data-received` signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag-drop` signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag-drop` signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag-data-received` handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag-end` signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag-begin`.
    case dragEnd = "drag-end"
    /// The `drag-failed` signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag-leave` signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag-motion`, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag-leave` signal is also emitted before the
    /// `drag-drop` signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag-motion` signal handler.
    case dragLeave = "drag-leave"
    /// The `drag-motion` signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag-data-received`
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag-leave` and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter-notify-event` will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key-press-event`) and finally a generic
    /// `GtkWidget::event-after` signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event-after` will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The `focus-in-event` signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus-out-event` signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab-notify` signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy-changed` signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key-press-event` signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key-release-event` signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave-notify-event` will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map-event` will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map-event` signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion-notify-event` signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent-set` signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The `property-notify-event` signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has-tooltip` is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `screen-changed` signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll-event` signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection-clear-event` signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection-request-event` signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The `state-changed` signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state-flags-changed` signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style-set` signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style-updated` signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style-updated` signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap-event` signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility-notify-event` will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The `window-state-event` will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    case notifyFile = "notify::file"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// The GIcon displayed in the GtkImage. For themed icons,
    /// If the icon theme is changed, the image will be updated
    /// automatically.
    case notifyIcon = "notify::gicon"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The name of the icon in the icon theme. If the icon theme is
    /// changed, the image will be updated automatically.
    case notifyIconName = "notify::icon-name"

    ///
    /// **icon-set is deprecated:**
    /// Use #GtkImage:icon-name instead.
    case notifyIconSet = "notify::icon-set"
    case notifyIconSize = "notify::icon-size"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyPixbuf = "notify::pixbuf"
    case notifyPixbufAnimation = "notify::pixbuf-animation"
    /// The "pixel-size" property can be used to specify a fixed size
    /// overriding the `GtkImage:icon-size` property for images of type
    /// `GTK_IMAGE_ICON_NAME`.
    case notifyPixelSize = "notify::pixel-size"
    case notifyReceivesDefault = "notify::receives-default"
    /// A path to a resource file to display.
    case notifyResource = "notify::resource"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"

    ///
    /// **stock is deprecated:**
    /// Use #GtkImage:icon-name instead.
    case notifyStock = "notify::stock"
    case notifyStorageType = "notify::storage-type"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    case notifySurface = "notify::surface"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// Whether the icon displayed in the GtkImage will use
    /// standard icon names fallback. The value of this property
    /// is only relevant for images of type `GTK_IMAGE_ICON_NAME`
    /// and `GTK_IMAGE_GICON`.
    case notifyUseFallback = "notify::use-fallback"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
    /// The horizontal alignment. A value of 0.0 means left alignment (or right
    /// on RTL locales); a value of 1.0 means right alignment (or left on RTL
    /// locales).
    ///
    /// **xalign is deprecated:**
    /// Use gtk_widget_set_halign() instead. If you are using
    ///   #GtkLabel, use #GtkLabel:xalign instead.
    case notifyXalign = "notify::xalign"
    /// The amount of space to add on the left and right of the widget, in
    /// pixels.
    ///
    /// **xpad is deprecated:**
    /// Use gtk_widget_set_margin_start() and
    ///   gtk_widget_set_margin_end() instead
    case notifyXpad = "notify::xpad"
    /// The vertical alignment. A value of 0.0 means top alignment;
    /// a value of 1.0 means bottom alignment.
    ///
    /// **yalign is deprecated:**
    /// Use gtk_widget_set_valign() instead. If you are using
    ///   #GtkLabel, use #GtkLabel:yalign instead.
    case notifyYalign = "notify::yalign"
    /// The amount of space to add on the top and bottom of the widget, in
    /// pixels.
    ///
    /// **ypad is deprecated:**
    /// Use gtk_widget_set_margin_top() and
    ///   gtk_widget_set_margin_bottom() instead
    case notifyYpad = "notify::ypad"
}

// MARK: Image has no signals
// MARK: Image Class: ImageProtocol extension (methods and fields)
public extension ImageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImage` instance.
    @inlinable var image_ptr: UnsafeMutablePointer<GtkImage>! { return ptr?.assumingMemoryBound(to: GtkImage.self) }

    /// Resets the image to be empty.
    @inlinable func clear() {
        gtk_image_clear(image_ptr)
    
    }

    /// Gets the `GdkPixbufAnimation` being displayed by the `GtkImage`.
    /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
    /// `GTK_IMAGE_ANIMATION` (see `gtk_image_get_storage_type()`).
    /// The caller of this function does not own a reference to the
    /// returned animation.
    @inlinable func getAnimation() -> PixbufAnimationRef! {
        let rv = PixbufAnimationRef(gconstpointer: gconstpointer(gtk_image_get_animation(image_ptr)))
        return rv
    }

    /// Gets the `GIcon` and size being displayed by the `GtkImage`.
    /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
    /// `GTK_IMAGE_GICON` (see `gtk_image_get_storage_type()`).
    /// The caller of this function does not own a reference to the
    /// returned `GIcon`.
    @inlinable func get(gicon: UnsafeMutablePointer<UnsafeMutablePointer<GIcon>?>! = nil, size: UnsafeMutablePointer<GtkIconSize>! = nil) {
        gtk_image_get_gicon(image_ptr, gicon, size)
    
    }

    /// Gets the icon name and size being displayed by the `GtkImage`.
    /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
    /// `GTK_IMAGE_ICON_NAME` (see `gtk_image_get_storage_type()`).
    /// The returned string is owned by the `GtkImage` and should not
    /// be freed.
    @inlinable func get(iconName: UnsafeMutablePointer<UnsafePointer<gchar>?>! = nil, size: UnsafeMutablePointer<GtkIconSize>! = nil) {
        gtk_image_get_icon_name(image_ptr, iconName, size)
    
    }

    /// Gets the icon set and size being displayed by the `GtkImage`.
    /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
    /// `GTK_IMAGE_ICON_SET` (see `gtk_image_get_storage_type()`).
    ///
    /// **get_icon_set is deprecated:**
    /// Use gtk_image_get_icon_name() instead.
    @available(*, deprecated)
    @inlinable func get(iconSet: UnsafeMutablePointer<UnsafeMutablePointer<GtkIconSet>?>! = nil, size: UnsafeMutablePointer<GtkIconSize>! = nil) {
        gtk_image_get_icon_set(image_ptr, iconSet, size)
    
    }

    /// Gets the `GdkPixbuf` being displayed by the `GtkImage`.
    /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
    /// `GTK_IMAGE_PIXBUF` (see `gtk_image_get_storage_type()`).
    /// The caller of this function does not own a reference to the
    /// returned pixbuf.
    @inlinable func getPixbuf() -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_image_get_pixbuf(image_ptr)))
        return rv
    }

    /// Gets the pixel size used for named icons.
    @inlinable func getPixelSize() -> Int {
        let rv = Int(gtk_image_get_pixel_size(image_ptr))
        return rv
    }

    /// Gets the stock icon name and size being displayed by the `GtkImage`.
    /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
    /// `GTK_IMAGE_STOCK` (see `gtk_image_get_storage_type()`).
    /// The returned string is owned by the `GtkImage` and should not
    /// be freed.
    ///
    /// **get_stock is deprecated:**
    /// Use gtk_image_get_icon_name() instead.
    @available(*, deprecated)
    @inlinable func getStock(stockID: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, size: UnsafeMutablePointer<GtkIconSize>! = nil) {
        gtk_image_get_stock(image_ptr, stockID, size)
    
    }

    /// Gets the type of representation being used by the `GtkImage`
    /// to store image data. If the `GtkImage` has no image data,
    /// the return value will be `GTK_IMAGE_EMPTY`.
    @inlinable func getStorageType() -> GtkImageType {
        let rv = gtk_image_get_storage_type(image_ptr)
        return rv
    }

    /// Causes the `GtkImage` to display the given animation (or display
    /// nothing, if you set the animation to `nil`).
    @inlinable func setFrom<PixbufAnimationT: PixbufAnimationProtocol>(animation: PixbufAnimationT) {
        gtk_image_set_from_animation(image_ptr, animation.pixbuf_animation_ptr)
    
    }

    /// See `gtk_image_new_from_file()` for details.
    @inlinable func setFromFile(filename: UnsafePointer<gchar>? = nil) {
        gtk_image_set_from_file(image_ptr, filename)
    
    }

    /// See `gtk_image_new_from_gicon()` for details.
    @inlinable func setFromIcon<IconT: GIO.IconProtocol>(icon: IconT, size: GtkIconSize) {
        gtk_image_set_from_gicon(image_ptr, icon.icon_ptr, size)
    
    }

    /// See `gtk_image_new_from_icon_name()` for details.
    @inlinable func setFrom(iconName: UnsafePointer<gchar>? = nil, size: GtkIconSize) {
        gtk_image_set_from_icon_name(image_ptr, iconName, size)
    
    }

    /// See `gtk_image_new_from_icon_set()` for details.
    ///
    /// **set_from_icon_set is deprecated:**
    /// Use gtk_image_set_from_icon_name() instead.
    @available(*, deprecated)
    @inlinable func setFrom<IconSetT: IconSetProtocol>(iconSet: IconSetT, size: GtkIconSize) {
        gtk_image_set_from_icon_set(image_ptr, iconSet.icon_set_ptr, size)
    
    }

    /// See `gtk_image_new_from_pixbuf()` for details.
    @inlinable func setFrom(pixbuf: PixbufRef? = nil) {
        gtk_image_set_from_pixbuf(image_ptr, pixbuf?.pixbuf_ptr)
    
    }
    /// See `gtk_image_new_from_pixbuf()` for details.
    @inlinable func setFrom<PixbufT: PixbufProtocol>(pixbuf: PixbufT?) {
        gtk_image_set_from_pixbuf(image_ptr, pixbuf?.pixbuf_ptr)
    
    }

    /// See `gtk_image_new_from_resource()` for details.
    @inlinable func setFrom(resourcePath: UnsafePointer<gchar>? = nil) {
        gtk_image_set_from_resource(image_ptr, resourcePath)
    
    }

    /// See `gtk_image_new_from_stock()` for details.
    ///
    /// **set_from_stock is deprecated:**
    /// Use gtk_image_set_from_icon_name() instead.
    @available(*, deprecated)
    @inlinable func setFromStock(stockID: UnsafePointer<gchar>!, size: GtkIconSize) {
        gtk_image_set_from_stock(image_ptr, stockID, size)
    
    }

    /// See `gtk_image_new_from_surface()` for details.
    @inlinable func setFrom(surface: Cairo.SurfaceRef? = nil) {
        gtk_image_set_from_surface(image_ptr, surface?._ptr)
    
    }
    /// See `gtk_image_new_from_surface()` for details.
    @inlinable func setFrom<SurfaceT: Cairo.SurfaceProtocol>(surface: SurfaceT?) {
        gtk_image_set_from_surface(image_ptr, surface?._ptr)
    
    }

    /// Sets the pixel size to use for named icons. If the pixel size is set
    /// to a value != -1, it is used instead of the icon size set by
    /// `gtk_image_set_from_icon_name()`.
    @inlinable func set(pixelSize: Int) {
        gtk_image_set_pixel_size(image_ptr, gint(pixelSize))
    
    }
    /// Gets the `GdkPixbufAnimation` being displayed by the `GtkImage`.
    /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
    /// `GTK_IMAGE_ANIMATION` (see `gtk_image_get_storage_type()`).
    /// The caller of this function does not own a reference to the
    /// returned animation.
    @inlinable var animation: PixbufAnimationRef! {
        /// Gets the `GdkPixbufAnimation` being displayed by the `GtkImage`.
        /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
        /// `GTK_IMAGE_ANIMATION` (see `gtk_image_get_storage_type()`).
        /// The caller of this function does not own a reference to the
        /// returned animation.
        get {
            let rv = PixbufAnimationRef(gconstpointer: gconstpointer(gtk_image_get_animation(image_ptr)))
            return rv
        }
    }

    @inlinable var pixbuf: PixbufRef! {
        /// Gets the `GdkPixbuf` being displayed by the `GtkImage`.
        /// The storage type of the image must be `GTK_IMAGE_EMPTY` or
        /// `GTK_IMAGE_PIXBUF` (see `gtk_image_get_storage_type()`).
        /// The caller of this function does not own a reference to the
        /// returned pixbuf.
        get {
            let rv = PixbufRef(gconstpointer: gconstpointer(gtk_image_get_pixbuf(image_ptr)))
            return rv
        }
    }

    /// Gets the pixel size used for named icons.
    @inlinable var pixelSize: Int {
        /// Gets the pixel size used for named icons.
        get {
            let rv = Int(gtk_image_get_pixel_size(image_ptr))
            return rv
        }
        /// Sets the pixel size to use for named icons. If the pixel size is set
        /// to a value != -1, it is used instead of the icon size set by
        /// `gtk_image_set_from_icon_name()`.
        nonmutating set {
            gtk_image_set_pixel_size(image_ptr, gint(newValue))
        }
    }

    /// Gets the type of representation being used by the `GtkImage`
    /// to store image data. If the `GtkImage` has no image data,
    /// the return value will be `GTK_IMAGE_EMPTY`.
    @inlinable var storageType: GtkImageType {
        /// Gets the type of representation being used by the `GtkImage`
        /// to store image data. If the `GtkImage` has no image data,
        /// the return value will be `GTK_IMAGE_EMPTY`.
        get {
            let rv = gtk_image_get_storage_type(image_ptr)
            return rv
        }
    }

    @inlinable var misc: GtkMisc {
        get {
            let rv = image_ptr.pointee.misc
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - ImageAccessible Class


///
/// The `ImageAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkImageAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ImageAccessible`.
/// Alternatively, use `ImageAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ImageAccessibleProtocol: WidgetAccessibleProtocol, Atk.ImageProtocol {
        /// Untyped pointer to the underlying `GtkImageAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkImageAccessible` instance.
    var image_accessible_ptr: UnsafeMutablePointer<GtkImageAccessible>! { get }

    /// Required Initialiser for types conforming to `ImageAccessibleProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ImageAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkImageAccessible` instance.
/// It exposes methods that can operate on this data type through `ImageAccessibleProtocol` conformance.
/// Use `ImageAccessibleRef` only as an `unowned` reference to an existing `GtkImageAccessible` instance.
///
public struct ImageAccessibleRef: ImageAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkImageAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `image_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ImageAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkImageAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkImageAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkImageAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkImageAccessible>?) {
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

    /// Reference intialiser for a related type that implements `ImageAccessibleProtocol`
    @inlinable init<T: ImageAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ImageAccessibleProtocol>(_ other: T) -> ImageAccessibleRef { ImageAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `ImageAccessible` type acts as a reference-counted owner of an underlying `GtkImageAccessible` instance.
/// It provides the methods that can operate on this data type through `ImageAccessibleProtocol` conformance.
/// Use `ImageAccessible` as a strong reference or owner of a `GtkImageAccessible` instance.
///
open class ImageAccessible: WidgetAccessible, ImageAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkImageAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkImageAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkImageAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkImageAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkImageAccessible`.
    /// i.e., ownership is transferred to the `ImageAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkImageAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ImageAccessibleProtocol`
    /// Will retain `GtkImageAccessible`.
    /// - Parameter other: an instance of a related type that implements `ImageAccessibleProtocol`
    @inlinable public init<T: ImageAccessibleProtocol>(imageAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum ImageAccessiblePropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case widget = "widget"
}

public extension ImageAccessibleProtocol {
    /// Bind a `ImageAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ImageAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a ImageAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ImageAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ImageAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ImageAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ImageAccessibleSignalName: String, SignalNameProtocol {
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property-changed` is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyWidget = "notify::widget"
}

// MARK: ImageAccessible has no signals
// MARK: ImageAccessible Class: ImageAccessibleProtocol extension (methods and fields)
public extension ImageAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImageAccessible` instance.
    @inlinable var image_accessible_ptr: UnsafeMutablePointer<GtkImageAccessible>! { return ptr?.assumingMemoryBound(to: GtkImageAccessible.self) }


    @inlinable var parent: GtkWidgetAccessible {
        get {
            let rv = image_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - ImageCellAccessible Class


///
/// The `ImageCellAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkImageCellAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ImageCellAccessible`.
/// Alternatively, use `ImageCellAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ImageCellAccessibleProtocol: RendererCellAccessibleProtocol, Atk.ImageProtocol {
        /// Untyped pointer to the underlying `GtkImageCellAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkImageCellAccessible` instance.
    var image_cell_accessible_ptr: UnsafeMutablePointer<GtkImageCellAccessible>! { get }

    /// Required Initialiser for types conforming to `ImageCellAccessibleProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ImageCellAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkImageCellAccessible` instance.
/// It exposes methods that can operate on this data type through `ImageCellAccessibleProtocol` conformance.
/// Use `ImageCellAccessibleRef` only as an `unowned` reference to an existing `GtkImageCellAccessible` instance.
///
public struct ImageCellAccessibleRef: ImageCellAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkImageCellAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `image_cell_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ImageCellAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkImageCellAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkImageCellAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkImageCellAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkImageCellAccessible>?) {
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

    /// Reference intialiser for a related type that implements `ImageCellAccessibleProtocol`
    @inlinable init<T: ImageCellAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ImageCellAccessibleProtocol>(_ other: T) -> ImageCellAccessibleRef { ImageCellAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `ImageCellAccessible` type acts as a reference-counted owner of an underlying `GtkImageCellAccessible` instance.
/// It provides the methods that can operate on this data type through `ImageCellAccessibleProtocol` conformance.
/// Use `ImageCellAccessible` as a strong reference or owner of a `GtkImageCellAccessible` instance.
///
open class ImageCellAccessible: RendererCellAccessible, ImageCellAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkImageCellAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkImageCellAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageCellAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkImageCellAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkImageCellAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkImageCellAccessible`.
    /// i.e., ownership is transferred to the `ImageCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkImageCellAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ImageCellAccessibleProtocol`
    /// Will retain `GtkImageCellAccessible`.
    /// - Parameter other: an instance of a related type that implements `ImageCellAccessibleProtocol`
    @inlinable public init<T: ImageCellAccessibleProtocol>(imageCellAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum ImageCellAccessiblePropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case renderer = "renderer"
    case widget = "widget"
}

public extension ImageCellAccessibleProtocol {
    /// Bind a `ImageCellAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ImageCellAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a ImageCellAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ImageCellAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ImageCellAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ImageCellAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ImageCellAccessibleSignalName: String, SignalNameProtocol {
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property-changed` is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyRenderer = "notify::renderer"
    case notifyWidget = "notify::widget"
}

// MARK: ImageCellAccessible has no signals
// MARK: ImageCellAccessible Class: ImageCellAccessibleProtocol extension (methods and fields)
public extension ImageCellAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImageCellAccessible` instance.
    @inlinable var image_cell_accessible_ptr: UnsafeMutablePointer<GtkImageCellAccessible>! { return ptr?.assumingMemoryBound(to: GtkImageCellAccessible.self) }


    @inlinable var parent: GtkRendererCellAccessible {
        get {
            let rv = image_cell_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - ImageMenuItem Class

/// A GtkImageMenuItem is a menu item which has an icon next to the text label.
/// 
/// This is functionally equivalent to:
/// 
/// (C Language Example):
/// ```C
///   GtkWidget *box = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 6);
///   GtkWidget *icon = gtk_image_new_from_icon_name ("folder-music-symbolic", GTK_ICON_SIZE_MENU);
///   GtkWidget *label = gtk_label_new ("Music");
///   GtkWidget *menu_item = gtk_menu_item_new ();
/// 
///   gtk_container_add (GTK_CONTAINER (box), icon);
///   gtk_container_add (GTK_CONTAINER (box), label);
/// 
///   gtk_container_add (GTK_CONTAINER (menu_item), box);
/// 
///   gtk_widget_show_all (menu_item);
/// ```
/// 
/// Note that the user may disable display of menu icons using
/// the `GtkSettings:gtk-menu-images` setting, so make sure to still
/// fill in the text label. If you want to ensure that your menu items
/// show an icon you are strongly encouraged to use a `GtkMenuItem`
/// with a `GtkImage` instead.
/// 
/// `GtkImageMenuItem` has been deprecated since GTK+ 3.10. If you want to
/// display an icon in a menu item, you should use `GtkMenuItem` and pack a
/// `GtkBox` with a `GtkImage` and a `GtkLabel` instead. You should also consider
/// using `GtkBuilder` and the XML `GMenu` description for creating menus, by
/// following the [GMenu guide](#https://developer.gnome.org/GMenu/). You should
/// consider using icons in menu items only sparingly, and for "objects" (or
/// "nouns") elements only, like bookmarks, files, and links; "actions" (or
/// "verbs") should not have icons.
/// 
/// Furthermore, if you would like to display keyboard accelerator, you must
/// pack the accel label into the box using `gtk_box_pack_end()` and align the
/// label, otherwise the accelerator will not display correctly. The following
/// code snippet adds a keyboard accelerator to the menu item, with a key
/// binding of Ctrl+M:
/// 
/// (C Language Example):
/// ```C
///   GtkWidget *box = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 6);
///   GtkWidget *icon = gtk_image_new_from_icon_name ("folder-music-symbolic", GTK_ICON_SIZE_MENU);
///   GtkWidget *label = gtk_accel_label_new ("Music");
///   GtkWidget *menu_item = gtk_menu_item_new ();
///   GtkAccelGroup *accel_group = gtk_accel_group_new ();
/// 
///   gtk_container_add (GTK_CONTAINER (box), icon);
/// 
///   gtk_label_set_use_underline (GTK_LABEL (label), TRUE);
///   gtk_label_set_xalign (GTK_LABEL (label), 0.0);
/// 
///   gtk_widget_add_accelerator (menu_item, "activate", accel_group,
///                               GDK_KEY_m, GDK_CONTROL_MASK, GTK_ACCEL_VISIBLE);
///   gtk_accel_label_set_accel_widget (GTK_ACCEL_LABEL (label), menu_item);
/// 
///   gtk_box_pack_end (GTK_BOX (box), label, TRUE, TRUE, 0);
/// 
///   gtk_container_add (GTK_CONTAINER (menu_item), box);
/// 
///   gtk_widget_show_all (menu_item);
/// ```
/// 
///
/// The `ImageMenuItemProtocol` protocol exposes the methods and properties of an underlying `GtkImageMenuItem` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ImageMenuItem`.
/// Alternatively, use `ImageMenuItemRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ImageMenuItemProtocol: MenuItemProtocol {
        /// Untyped pointer to the underlying `GtkImageMenuItem` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkImageMenuItem` instance.
    var image_menu_item_ptr: UnsafeMutablePointer<GtkImageMenuItem>! { get }

    /// Required Initialiser for types conforming to `ImageMenuItemProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A GtkImageMenuItem is a menu item which has an icon next to the text label.
/// 
/// This is functionally equivalent to:
/// 
/// (C Language Example):
/// ```C
///   GtkWidget *box = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 6);
///   GtkWidget *icon = gtk_image_new_from_icon_name ("folder-music-symbolic", GTK_ICON_SIZE_MENU);
///   GtkWidget *label = gtk_label_new ("Music");
///   GtkWidget *menu_item = gtk_menu_item_new ();
/// 
///   gtk_container_add (GTK_CONTAINER (box), icon);
///   gtk_container_add (GTK_CONTAINER (box), label);
/// 
///   gtk_container_add (GTK_CONTAINER (menu_item), box);
/// 
///   gtk_widget_show_all (menu_item);
/// ```
/// 
/// Note that the user may disable display of menu icons using
/// the `GtkSettings:gtk-menu-images` setting, so make sure to still
/// fill in the text label. If you want to ensure that your menu items
/// show an icon you are strongly encouraged to use a `GtkMenuItem`
/// with a `GtkImage` instead.
/// 
/// `GtkImageMenuItem` has been deprecated since GTK+ 3.10. If you want to
/// display an icon in a menu item, you should use `GtkMenuItem` and pack a
/// `GtkBox` with a `GtkImage` and a `GtkLabel` instead. You should also consider
/// using `GtkBuilder` and the XML `GMenu` description for creating menus, by
/// following the [GMenu guide](#https://developer.gnome.org/GMenu/). You should
/// consider using icons in menu items only sparingly, and for "objects" (or
/// "nouns") elements only, like bookmarks, files, and links; "actions" (or
/// "verbs") should not have icons.
/// 
/// Furthermore, if you would like to display keyboard accelerator, you must
/// pack the accel label into the box using `gtk_box_pack_end()` and align the
/// label, otherwise the accelerator will not display correctly. The following
/// code snippet adds a keyboard accelerator to the menu item, with a key
/// binding of Ctrl+M:
/// 
/// (C Language Example):
/// ```C
///   GtkWidget *box = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 6);
///   GtkWidget *icon = gtk_image_new_from_icon_name ("folder-music-symbolic", GTK_ICON_SIZE_MENU);
///   GtkWidget *label = gtk_accel_label_new ("Music");
///   GtkWidget *menu_item = gtk_menu_item_new ();
///   GtkAccelGroup *accel_group = gtk_accel_group_new ();
/// 
///   gtk_container_add (GTK_CONTAINER (box), icon);
/// 
///   gtk_label_set_use_underline (GTK_LABEL (label), TRUE);
///   gtk_label_set_xalign (GTK_LABEL (label), 0.0);
/// 
///   gtk_widget_add_accelerator (menu_item, "activate", accel_group,
///                               GDK_KEY_m, GDK_CONTROL_MASK, GTK_ACCEL_VISIBLE);
///   gtk_accel_label_set_accel_widget (GTK_ACCEL_LABEL (label), menu_item);
/// 
///   gtk_box_pack_end (GTK_BOX (box), label, TRUE, TRUE, 0);
/// 
///   gtk_container_add (GTK_CONTAINER (menu_item), box);
/// 
///   gtk_widget_show_all (menu_item);
/// ```
/// 
///
/// The `ImageMenuItemRef` type acts as a lightweight Swift reference to an underlying `GtkImageMenuItem` instance.
/// It exposes methods that can operate on this data type through `ImageMenuItemProtocol` conformance.
/// Use `ImageMenuItemRef` only as an `unowned` reference to an existing `GtkImageMenuItem` instance.
///
public struct ImageMenuItemRef: ImageMenuItemProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkImageMenuItem` instance.
    /// For type-safe access, use the generated, typed pointer `image_menu_item_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ImageMenuItemRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkImageMenuItem>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkImageMenuItem>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkImageMenuItem>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkImageMenuItem>?) {
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

    /// Reference intialiser for a related type that implements `ImageMenuItemProtocol`
    @inlinable init<T: ImageMenuItemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ImageMenuItemProtocol>(_ other: T) -> ImageMenuItemRef { ImageMenuItemRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkImageMenuItem` with an empty label.
    ///
    /// **new is deprecated:**
    /// Use gtk_menu_item_new() instead.
    @available(*, deprecated)
    @inlinable init() {
        let rv = gtk_image_menu_item_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkImageMenuItem` containing the image and text from a
    /// stock item. Some stock ids have preprocessor macros like `GTK_STOCK_OK`
    /// and `GTK_STOCK_APPLY`.
    /// 
    /// If you want this menu item to have changeable accelerators, then pass in
    /// `nil` for accel_group. Next call `gtk_menu_item_set_accel_path()` with an
    /// appropriate path for the menu item, use `gtk_stock_lookup()` to look up the
    /// standard accelerator for the stock item, and if one is found, call
    /// `gtk_accel_map_add_entry()` to register it.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_menu_item_new_with_mnemonic() instead.
    @available(*, deprecated)
    @inlinable init<AccelGroupT: AccelGroupProtocol>(stock stockID: UnsafePointer<gchar>!, accelGroup: AccelGroupT?) {
        let rv = gtk_image_menu_item_new_from_stock(stockID, accelGroup?.accel_group_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkImageMenuItem` containing a label.
    ///
    /// **new_with_label is deprecated:**
    /// Use gtk_menu_item_new_with_label() instead.
    @available(*, deprecated)
    @inlinable init(label: UnsafePointer<gchar>!) {
        let rv = gtk_image_menu_item_new_with_label(label)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkImageMenuItem` containing a label. The label
    /// will be created using `gtk_label_new_with_mnemonic()`, so underscores
    /// in `label` indicate the mnemonic for the menu item.
    ///
    /// **new_with_mnemonic is deprecated:**
    /// Use gtk_menu_item_new_with_mnemonic() instead.
    @available(*, deprecated)
    @inlinable init(mnemonic label: UnsafePointer<gchar>!) {
        let rv = gtk_image_menu_item_new_with_mnemonic(label)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkImageMenuItem` containing the image and text from a
    /// stock item. Some stock ids have preprocessor macros like `GTK_STOCK_OK`
    /// and `GTK_STOCK_APPLY`.
    /// 
    /// If you want this menu item to have changeable accelerators, then pass in
    /// `nil` for accel_group. Next call `gtk_menu_item_set_accel_path()` with an
    /// appropriate path for the menu item, use `gtk_stock_lookup()` to look up the
    /// standard accelerator for the stock item, and if one is found, call
    /// `gtk_accel_map_add_entry()` to register it.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_menu_item_new_with_mnemonic() instead.
    @available(*, deprecated)
    @inlinable static func newFrom<AccelGroupT: AccelGroupProtocol>(stock stockID: UnsafePointer<gchar>!, accelGroup: AccelGroupT?) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_menu_item_new_from_stock(stockID, accelGroup?.accel_group_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GtkImageMenuItem` containing a label.
    ///
    /// **new_with_label is deprecated:**
    /// Use gtk_menu_item_new_with_label() instead.
    @available(*, deprecated)
    @inlinable static func imageMenuItemNewWith(label: UnsafePointer<gchar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_menu_item_new_with_label(label))) else { return nil }
        return rv
    }

    /// Creates a new `GtkImageMenuItem` containing a label. The label
    /// will be created using `gtk_label_new_with_mnemonic()`, so underscores
    /// in `label` indicate the mnemonic for the menu item.
    ///
    /// **new_with_mnemonic is deprecated:**
    /// Use gtk_menu_item_new_with_mnemonic() instead.
    @available(*, deprecated)
    @inlinable static func imageMenuItemNewWith(mnemonic label: UnsafePointer<gchar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_menu_item_new_with_mnemonic(label))) else { return nil }
        return rv
    }
}

/// A GtkImageMenuItem is a menu item which has an icon next to the text label.
/// 
/// This is functionally equivalent to:
/// 
/// (C Language Example):
/// ```C
///   GtkWidget *box = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 6);
///   GtkWidget *icon = gtk_image_new_from_icon_name ("folder-music-symbolic", GTK_ICON_SIZE_MENU);
///   GtkWidget *label = gtk_label_new ("Music");
///   GtkWidget *menu_item = gtk_menu_item_new ();
/// 
///   gtk_container_add (GTK_CONTAINER (box), icon);
///   gtk_container_add (GTK_CONTAINER (box), label);
/// 
///   gtk_container_add (GTK_CONTAINER (menu_item), box);
/// 
///   gtk_widget_show_all (menu_item);
/// ```
/// 
/// Note that the user may disable display of menu icons using
/// the `GtkSettings:gtk-menu-images` setting, so make sure to still
/// fill in the text label. If you want to ensure that your menu items
/// show an icon you are strongly encouraged to use a `GtkMenuItem`
/// with a `GtkImage` instead.
/// 
/// `GtkImageMenuItem` has been deprecated since GTK+ 3.10. If you want to
/// display an icon in a menu item, you should use `GtkMenuItem` and pack a
/// `GtkBox` with a `GtkImage` and a `GtkLabel` instead. You should also consider
/// using `GtkBuilder` and the XML `GMenu` description for creating menus, by
/// following the [GMenu guide](#https://developer.gnome.org/GMenu/). You should
/// consider using icons in menu items only sparingly, and for "objects" (or
/// "nouns") elements only, like bookmarks, files, and links; "actions" (or
/// "verbs") should not have icons.
/// 
/// Furthermore, if you would like to display keyboard accelerator, you must
/// pack the accel label into the box using `gtk_box_pack_end()` and align the
/// label, otherwise the accelerator will not display correctly. The following
/// code snippet adds a keyboard accelerator to the menu item, with a key
/// binding of Ctrl+M:
/// 
/// (C Language Example):
/// ```C
///   GtkWidget *box = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 6);
///   GtkWidget *icon = gtk_image_new_from_icon_name ("folder-music-symbolic", GTK_ICON_SIZE_MENU);
///   GtkWidget *label = gtk_accel_label_new ("Music");
///   GtkWidget *menu_item = gtk_menu_item_new ();
///   GtkAccelGroup *accel_group = gtk_accel_group_new ();
/// 
///   gtk_container_add (GTK_CONTAINER (box), icon);
/// 
///   gtk_label_set_use_underline (GTK_LABEL (label), TRUE);
///   gtk_label_set_xalign (GTK_LABEL (label), 0.0);
/// 
///   gtk_widget_add_accelerator (menu_item, "activate", accel_group,
///                               GDK_KEY_m, GDK_CONTROL_MASK, GTK_ACCEL_VISIBLE);
///   gtk_accel_label_set_accel_widget (GTK_ACCEL_LABEL (label), menu_item);
/// 
///   gtk_box_pack_end (GTK_BOX (box), label, TRUE, TRUE, 0);
/// 
///   gtk_container_add (GTK_CONTAINER (menu_item), box);
/// 
///   gtk_widget_show_all (menu_item);
/// ```
/// 
///
/// The `ImageMenuItem` type acts as a reference-counted owner of an underlying `GtkImageMenuItem` instance.
/// It provides the methods that can operate on this data type through `ImageMenuItemProtocol` conformance.
/// Use `ImageMenuItem` as a strong reference or owner of a `GtkImageMenuItem` instance.
///
open class ImageMenuItem: MenuItem, ImageMenuItemProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageMenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkImageMenuItem>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageMenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkImageMenuItem>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageMenuItem` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageMenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageMenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkImageMenuItem>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ImageMenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkImageMenuItem>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkImageMenuItem`.
    /// i.e., ownership is transferred to the `ImageMenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkImageMenuItem>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ImageMenuItemProtocol`
    /// Will retain `GtkImageMenuItem`.
    /// - Parameter other: an instance of a related type that implements `ImageMenuItemProtocol`
    @inlinable public init<T: ImageMenuItemProtocol>(imageMenuItem other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkImageMenuItem` with an empty label.
    ///
    /// **new is deprecated:**
    /// Use gtk_menu_item_new() instead.
    @available(*, deprecated)
    @inlinable override public init() {
        let rv = gtk_image_menu_item_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkImageMenuItem` containing the image and text from a
    /// stock item. Some stock ids have preprocessor macros like `GTK_STOCK_OK`
    /// and `GTK_STOCK_APPLY`.
    /// 
    /// If you want this menu item to have changeable accelerators, then pass in
    /// `nil` for accel_group. Next call `gtk_menu_item_set_accel_path()` with an
    /// appropriate path for the menu item, use `gtk_stock_lookup()` to look up the
    /// standard accelerator for the stock item, and if one is found, call
    /// `gtk_accel_map_add_entry()` to register it.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_menu_item_new_with_mnemonic() instead.
    @available(*, deprecated)
    @inlinable public init<AccelGroupT: AccelGroupProtocol>(stock stockID: UnsafePointer<gchar>!, accelGroup: AccelGroupT?) {
        let rv = gtk_image_menu_item_new_from_stock(stockID, accelGroup?.accel_group_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkImageMenuItem` containing a label.
    ///
    /// **new_with_label is deprecated:**
    /// Use gtk_menu_item_new_with_label() instead.
    @available(*, deprecated)
    @inlinable override public init(label: UnsafePointer<gchar>!) {
        let rv = gtk_image_menu_item_new_with_label(label)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkImageMenuItem` containing a label. The label
    /// will be created using `gtk_label_new_with_mnemonic()`, so underscores
    /// in `label` indicate the mnemonic for the menu item.
    ///
    /// **new_with_mnemonic is deprecated:**
    /// Use gtk_menu_item_new_with_mnemonic() instead.
    @available(*, deprecated)
    @inlinable override public init(mnemonic label: UnsafePointer<gchar>!) {
        let rv = gtk_image_menu_item_new_with_mnemonic(label)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkImageMenuItem` containing the image and text from a
    /// stock item. Some stock ids have preprocessor macros like `GTK_STOCK_OK`
    /// and `GTK_STOCK_APPLY`.
    /// 
    /// If you want this menu item to have changeable accelerators, then pass in
    /// `nil` for accel_group. Next call `gtk_menu_item_set_accel_path()` with an
    /// appropriate path for the menu item, use `gtk_stock_lookup()` to look up the
    /// standard accelerator for the stock item, and if one is found, call
    /// `gtk_accel_map_add_entry()` to register it.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_menu_item_new_with_mnemonic() instead.
    @available(*, deprecated)
    @inlinable public static func newFrom<AccelGroupT: AccelGroupProtocol>(stock stockID: UnsafePointer<gchar>!, accelGroup: AccelGroupT?) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_menu_item_new_from_stock(stockID, accelGroup?.accel_group_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkImageMenuItem` containing a label.
    ///
    /// **new_with_label is deprecated:**
    /// Use gtk_menu_item_new_with_label() instead.
    @available(*, deprecated)
    @inlinable public static func imageMenuItemNewWith(label: UnsafePointer<gchar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_menu_item_new_with_label(label))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkImageMenuItem` containing a label. The label
    /// will be created using `gtk_label_new_with_mnemonic()`, so underscores
    /// in `label` indicate the mnemonic for the menu item.
    ///
    /// **new_with_mnemonic is deprecated:**
    /// Use gtk_menu_item_new_with_mnemonic() instead.
    @available(*, deprecated)
    @inlinable public static func imageMenuItemNewWith(mnemonic label: UnsafePointer<gchar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_image_menu_item_new_with_mnemonic(label))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum ImageMenuItemPropertyName: String, PropertyNameProtocol {
    /// The Accel Group to use for stock accelerator keys
    ///
    /// **accel-group is deprecated:**
    /// Use gtk_widget_add_accelerator() instead
    case accelGroup = "accel-group"
    /// Sets the accelerator path of the menu item, through which runtime
    /// changes of the menu item's accelerator caused by the user can be
    /// identified and saved to persistant storage.
    case accelPath = "accel-path"
    /// If `true`, the menu item will always show the image, if available.
    /// 
    /// Use this property only if the menuitem would be useless or hard to use
    /// without the image.
    ///
    /// **always-show-image is deprecated:**
    /// Use a #GtkMenuItem containing a #GtkBox with
    ///   a #GtkAccelLabel and a #GtkImage instead
    case alwaysShowImage = "always-show-image"
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// Child widget to appear next to the menu text.
    ///
    /// **image is deprecated:**
    /// Use a #GtkMenuItem containing a #GtkBox with
    ///   a #GtkAccelLabel and a #GtkImage instead
    case image = "image"
    case isFocus = "is-focus"
    /// The text for the child label.
    case label = "label"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// Sets whether the menu item appears justified
    /// at the right side of a menu bar.
    case rightJustified = "right-justified"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// The submenu attached to the menu item, or `nil` if it has none.
    case submenu = "submenu"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// If `true`, the label set in the menuitem is used as a
    /// stock id to select the stock item for the item.
    ///
    /// **use-stock is deprecated:**
    /// Use a named icon from the #GtkIconTheme instead
    case useStock = "use-stock"
    /// `true` if underlines in the text indicate mnemonics.
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension ImageMenuItemProtocol {
    /// Bind a `ImageMenuItemPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ImageMenuItemPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a ImageMenuItem property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ImageMenuItemPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ImageMenuItem property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ImageMenuItemPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ImageMenuItemSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// Emitted when the item is activated.
    case activate = "activate"
    /// Emitted when the item is activated, but also if the menu item has a
    /// submenu. For normal applications, the relevant signal is
    /// `GtkMenuItem::activate`.
    case activateItem = "activate-item"
    case add = "add"
    /// The `button-press-event` signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button-release-event` signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    case checkResize = "check-resize"
    /// The `child-notify` signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The `composited-changed` signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure-event` signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete-event` signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    case deselect = "deselect"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy-event` signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction-changed` signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag-begin` signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag-data-delete` signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag-data-get` signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag-data-received` signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag-drop` signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag-drop` signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag-data-received` handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag-end` signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag-begin`.
    case dragEnd = "drag-end"
    /// The `drag-failed` signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag-leave` signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag-motion`, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag-leave` signal is also emitted before the
    /// `drag-drop` signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag-motion` signal handler.
    case dragLeave = "drag-leave"
    /// The `drag-motion` signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag-data-received`
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag-leave` and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter-notify-event` will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key-press-event`) and finally a generic
    /// `GtkWidget::event-after` signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event-after` will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The `focus-in-event` signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus-out-event` signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab-notify` signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy-changed` signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key-press-event` signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key-release-event` signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave-notify-event` will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map-event` will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map-event` signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion-notify-event` signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent-set` signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The `property-notify-event` signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has-tooltip` is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The `screen-changed` signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll-event` signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    case select = "select"
    /// The `selection-clear-event` signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection-request-event` signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The `state-changed` signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state-flags-changed` signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style-set` signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style-updated` signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style-updated` signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case toggleSizeAllocate = "toggle-size-allocate"
    case toggleSizeRequest = "toggle-size-request"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap-event` signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility-notify-event` will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The `window-state-event` will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    /// The Accel Group to use for stock accelerator keys
    ///
    /// **accel-group is deprecated:**
    /// Use gtk_widget_add_accelerator() instead
    case notifyAccelGroup = "notify::accel-group"
    /// Sets the accelerator path of the menu item, through which runtime
    /// changes of the menu item's accelerator caused by the user can be
    /// identified and saved to persistant storage.
    case notifyAccelPath = "notify::accel-path"
    /// If `true`, the menu item will always show the image, if available.
    /// 
    /// Use this property only if the menuitem would be useless or hard to use
    /// without the image.
    ///
    /// **always-show-image is deprecated:**
    /// Use a #GtkMenuItem containing a #GtkBox with
    ///   a #GtkAccelLabel and a #GtkImage instead
    case notifyAlwaysShowImage = "notify::always-show-image"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    /// Child widget to appear next to the menu text.
    ///
    /// **image is deprecated:**
    /// Use a #GtkMenuItem containing a #GtkBox with
    ///   a #GtkAccelLabel and a #GtkImage instead
    case notifyImage = "notify::image"
    case notifyIsFocus = "notify::is-focus"
    /// The text for the child label.
    case notifyLabel = "notify::label"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
    /// Sets whether the menu item appears justified
    /// at the right side of a menu bar.
    case notifyRightJustified = "notify::right-justified"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// The submenu attached to the menu item, or `nil` if it has none.
    case notifySubmenu = "notify::submenu"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// If `true`, the label set in the menuitem is used as a
    /// stock id to select the stock item for the item.
    ///
    /// **use-stock is deprecated:**
    /// Use a named icon from the #GtkIconTheme instead
    case notifyUseStock = "notify::use-stock"
    /// `true` if underlines in the text indicate mnemonics.
    case notifyUseUnderline = "notify::use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

// MARK: ImageMenuItem has no signals
// MARK: ImageMenuItem Class: ImageMenuItemProtocol extension (methods and fields)
public extension ImageMenuItemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImageMenuItem` instance.
    @inlinable var image_menu_item_ptr: UnsafeMutablePointer<GtkImageMenuItem>! { return ptr?.assumingMemoryBound(to: GtkImageMenuItem.self) }

    /// Returns whether the menu item will ignore the `GtkSettings:gtk-menu-images`
    /// setting and always show the image, if available.
    ///
    /// **get_always_show_image is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getAlwaysShowImage() -> Bool {
        let rv = ((gtk_image_menu_item_get_always_show_image(image_menu_item_ptr)) != 0)
        return rv
    }

    /// Gets the widget that is currently set as the image of `image_menu_item`.
    /// See `gtk_image_menu_item_set_image()`.
    ///
    /// **get_image is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getImage() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_menu_item_get_image(image_menu_item_ptr))) else { return nil }
        return rv
    }

    /// Checks whether the label set in the menuitem is used as a
    /// stock id to select the stock item for the item.
    ///
    /// **get_use_stock is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getUseStock() -> Bool {
        let rv = ((gtk_image_menu_item_get_use_stock(image_menu_item_ptr)) != 0)
        return rv
    }

    /// Specifies an `accel_group` to add the menu items accelerator to
    /// (this only applies to stock items so a stock item must already
    /// be set, make sure to call `gtk_image_menu_item_set_use_stock()`
    /// and `gtk_menu_item_set_label()` with a valid stock item first).
    /// 
    /// If you want this menu item to have changeable accelerators then
    /// you shouldnt need this (see `gtk_image_menu_item_new_from_stock()`).
    ///
    /// **set_accel_group is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func set<AccelGroupT: AccelGroupProtocol>(accelGroup: AccelGroupT) {
        gtk_image_menu_item_set_accel_group(image_menu_item_ptr, accelGroup.accel_group_ptr)
    
    }

    /// If `true`, the menu item will ignore the `GtkSettings:gtk-menu-images`
    /// setting and always show the image, if available.
    /// 
    /// Use this property if the menuitem would be useless or hard to use
    /// without the image.
    ///
    /// **set_always_show_image is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func setAlwaysShowImage(alwaysShow: Bool) {
        gtk_image_menu_item_set_always_show_image(image_menu_item_ptr, gboolean((alwaysShow) ? 1 : 0))
    
    }

    /// Sets the image of `image_menu_item` to the given widget.
    /// Note that it depends on the show-menu-images setting whether
    /// the image will be displayed or not.
    ///
    /// **set_image is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func set(image: WidgetRef? = nil) {
        gtk_image_menu_item_set_image(image_menu_item_ptr, image?.widget_ptr)
    
    }
    /// Sets the image of `image_menu_item` to the given widget.
    /// Note that it depends on the show-menu-images setting whether
    /// the image will be displayed or not.
    ///
    /// **set_image is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func set<WidgetT: WidgetProtocol>(image: WidgetT?) {
        gtk_image_menu_item_set_image(image_menu_item_ptr, image?.widget_ptr)
    
    }

    /// If `true`, the label set in the menuitem is used as a
    /// stock id to select the stock item for the item.
    ///
    /// **set_use_stock is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func set(useStock: Bool) {
        gtk_image_menu_item_set_use_stock(image_menu_item_ptr, gboolean((useStock) ? 1 : 0))
    
    }
    /// Returns whether the menu item will ignore the `GtkSettings:gtk-menu-images`
    /// setting and always show the image, if available.
    ///
    /// **get_always_show_image is deprecated:**
    /// This method is deprecated.
    @inlinable var alwaysShowImage: Bool {
        /// Returns whether the menu item will ignore the `GtkSettings:gtk-menu-images`
        /// setting and always show the image, if available.
        ///
        /// **get_always_show_image is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = ((gtk_image_menu_item_get_always_show_image(image_menu_item_ptr)) != 0)
            return rv
        }
        /// If `true`, the menu item will ignore the `GtkSettings:gtk-menu-images`
        /// setting and always show the image, if available.
        /// 
        /// Use this property if the menuitem would be useless or hard to use
        /// without the image.
        ///
        /// **set_always_show_image is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_image_menu_item_set_always_show_image(image_menu_item_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Child widget to appear next to the menu text.
    ///
    /// **image is deprecated:**
    /// Use a #GtkMenuItem containing a #GtkBox with
    ///   a #GtkAccelLabel and a #GtkImage instead
    @inlinable var image: WidgetRef! {
        /// Gets the widget that is currently set as the image of `image_menu_item`.
        /// See `gtk_image_menu_item_set_image()`.
        ///
        /// **get_image is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_image_menu_item_get_image(image_menu_item_ptr))) else { return nil }
            return rv
        }
        /// Sets the image of `image_menu_item` to the given widget.
        /// Note that it depends on the show-menu-images setting whether
        /// the image will be displayed or not.
        ///
        /// **set_image is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_image_menu_item_set_image(image_menu_item_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Checks whether the label set in the menuitem is used as a
    /// stock id to select the stock item for the item.
    ///
    /// **get_use_stock is deprecated:**
    /// This method is deprecated.
    @inlinable var useStock: Bool {
        /// Checks whether the label set in the menuitem is used as a
        /// stock id to select the stock item for the item.
        ///
        /// **get_use_stock is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = ((gtk_image_menu_item_get_use_stock(image_menu_item_ptr)) != 0)
            return rv
        }
        /// If `true`, the label set in the menuitem is used as a
        /// stock id to select the stock item for the item.
        ///
        /// **set_use_stock is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_image_menu_item_set_use_stock(image_menu_item_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var menuItem: GtkMenuItem {
        get {
            let rv = image_menu_item_ptr.pointee.menu_item
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - InfoBar Class

/// `GtkInfoBar` is a widget that can be used to show messages to
/// the user without showing a dialog. It is often temporarily shown
/// at the top or bottom of a document. In contrast to `GtkDialog`, which
/// has a action area at the bottom, `GtkInfoBar` has an action area
/// at the side.
/// 
/// The API of `GtkInfoBar` is very similar to `GtkDialog`, allowing you
/// to add buttons to the action area with `gtk_info_bar_add_button()` or
/// `gtk_info_bar_new_with_buttons()`. The sensitivity of action widgets
/// can be controlled with `gtk_info_bar_set_response_sensitive()`.
/// To add widgets to the main content area of a `GtkInfoBar`, use
/// `gtk_info_bar_get_content_area()` and add your widgets to the container.
/// 
/// Similar to `GtkMessageDialog`, the contents of a `GtkInfoBar` can by
/// classified as error message, warning, informational message, etc,
/// by using `gtk_info_bar_set_message_type()`. GTK+ may use the message type
/// to determine how the message is displayed.
/// 
/// A simple example for using a `GtkInfoBar:`
/// (C Language Example):
/// ```C
/// GtkWidget *widget, *message_label, *content_area;
/// GtkWidget *grid;
/// GtkInfoBar *bar;
/// 
/// // set up info bar
/// widget = gtk_info_bar_new ();
/// bar = GTK_INFO_BAR (widget);
/// grid = gtk_grid_new ();
/// 
/// gtk_widget_set_no_show_all (widget, TRUE);
/// message_label = gtk_label_new ("");
/// content_area = gtk_info_bar_get_content_area (bar);
/// gtk_container_add (GTK_CONTAINER (content_area),
///                    message_label);
/// gtk_info_bar_add_button (bar,
///                          _("_OK"),
///                          GTK_RESPONSE_OK);
/// g_signal_connect (bar,
///                   "response",
///                   G_CALLBACK (gtk_widget_hide),
///                   NULL);
/// gtk_grid_attach (GTK_GRID (grid),
///                  widget,
///                  0, 2, 1, 1);
/// 
/// // ...
/// 
/// // show an error message
/// gtk_label_set_text (GTK_LABEL (message_label), "An error occurred!");
/// gtk_info_bar_set_message_type (bar,
///                                GTK_MESSAGE_ERROR);
/// gtk_widget_show (bar);
/// ```
/// 
/// # GtkInfoBar as GtkBuildable
/// 
/// The GtkInfoBar implementation of the GtkBuildable interface exposes
/// the content area and action area as internal children with the names
/// “content_area” and “action_area”.
/// 
/// GtkInfoBar supports a custom &lt;action-widgets&gt; element, which can contain
/// multiple &lt;action-widget&gt; elements. The “response” attribute specifies a
/// numeric response, and the content of the element is the id of widget
/// (which should be a child of the dialogs `action_area`).
/// 
/// # CSS nodes
/// 
/// GtkInfoBar has a single CSS node with name infobar. The node may get
/// one of the style classes .info, .warning, .error or .question, depending
/// on the message type.
///
/// The `InfoBarProtocol` protocol exposes the methods and properties of an underlying `GtkInfoBar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InfoBar`.
/// Alternatively, use `InfoBarRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InfoBarProtocol: BoxProtocol {
        /// Untyped pointer to the underlying `GtkInfoBar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkInfoBar` instance.
    var info_bar_ptr: UnsafeMutablePointer<GtkInfoBar>! { get }

    /// Required Initialiser for types conforming to `InfoBarProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkInfoBar` is a widget that can be used to show messages to
/// the user without showing a dialog. It is often temporarily shown
/// at the top or bottom of a document. In contrast to `GtkDialog`, which
/// has a action area at the bottom, `GtkInfoBar` has an action area
/// at the side.
/// 
/// The API of `GtkInfoBar` is very similar to `GtkDialog`, allowing you
/// to add buttons to the action area with `gtk_info_bar_add_button()` or
/// `gtk_info_bar_new_with_buttons()`. The sensitivity of action widgets
/// can be controlled with `gtk_info_bar_set_response_sensitive()`.
/// To add widgets to the main content area of a `GtkInfoBar`, use
/// `gtk_info_bar_get_content_area()` and add your widgets to the container.
/// 
/// Similar to `GtkMessageDialog`, the contents of a `GtkInfoBar` can by
/// classified as error message, warning, informational message, etc,
/// by using `gtk_info_bar_set_message_type()`. GTK+ may use the message type
/// to determine how the message is displayed.
/// 
/// A simple example for using a `GtkInfoBar:`
/// (C Language Example):
/// ```C
/// GtkWidget *widget, *message_label, *content_area;
/// GtkWidget *grid;
/// GtkInfoBar *bar;
/// 
/// // set up info bar
/// widget = gtk_info_bar_new ();
/// bar = GTK_INFO_BAR (widget);
/// grid = gtk_grid_new ();
/// 
/// gtk_widget_set_no_show_all (widget, TRUE);
/// message_label = gtk_label_new ("");
/// content_area = gtk_info_bar_get_content_area (bar);
/// gtk_container_add (GTK_CONTAINER (content_area),
///                    message_label);
/// gtk_info_bar_add_button (bar,
///                          _("_OK"),
///                          GTK_RESPONSE_OK);
/// g_signal_connect (bar,
///                   "response",
///                   G_CALLBACK (gtk_widget_hide),
///                   NULL);
/// gtk_grid_attach (GTK_GRID (grid),
///                  widget,
///                  0, 2, 1, 1);
/// 
/// // ...
/// 
/// // show an error message
/// gtk_label_set_text (GTK_LABEL (message_label), "An error occurred!");
/// gtk_info_bar_set_message_type (bar,
///                                GTK_MESSAGE_ERROR);
/// gtk_widget_show (bar);
/// ```
/// 
/// # GtkInfoBar as GtkBuildable
/// 
/// The GtkInfoBar implementation of the GtkBuildable interface exposes
/// the content area and action area as internal children with the names
/// “content_area” and “action_area”.
/// 
/// GtkInfoBar supports a custom &lt;action-widgets&gt; element, which can contain
/// multiple &lt;action-widget&gt; elements. The “response” attribute specifies a
/// numeric response, and the content of the element is the id of widget
/// (which should be a child of the dialogs `action_area`).
/// 
/// # CSS nodes
/// 
/// GtkInfoBar has a single CSS node with name infobar. The node may get
/// one of the style classes .info, .warning, .error or .question, depending
/// on the message type.
///
/// The `InfoBarRef` type acts as a lightweight Swift reference to an underlying `GtkInfoBar` instance.
/// It exposes methods that can operate on this data type through `InfoBarProtocol` conformance.
/// Use `InfoBarRef` only as an `unowned` reference to an existing `GtkInfoBar` instance.
///
public struct InfoBarRef: InfoBarProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkInfoBar` instance.
    /// For type-safe access, use the generated, typed pointer `info_bar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InfoBarRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkInfoBar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkInfoBar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkInfoBar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkInfoBar>?) {
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

    /// Reference intialiser for a related type that implements `InfoBarProtocol`
    @inlinable init<T: InfoBarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: InfoBarProtocol>(_ other: T) -> InfoBarRef { InfoBarRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkInfoBar` object.
    @inlinable init() {
        let rv = gtk_info_bar_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newWithButtons() is not available because it has a varargs (...) parameter!


    // *** newWithButtons() is not available because it has a varargs (...) parameter!

}

/// `GtkInfoBar` is a widget that can be used to show messages to
/// the user without showing a dialog. It is often temporarily shown
/// at the top or bottom of a document. In contrast to `GtkDialog`, which
/// has a action area at the bottom, `GtkInfoBar` has an action area
/// at the side.
/// 
/// The API of `GtkInfoBar` is very similar to `GtkDialog`, allowing you
/// to add buttons to the action area with `gtk_info_bar_add_button()` or
/// `gtk_info_bar_new_with_buttons()`. The sensitivity of action widgets
/// can be controlled with `gtk_info_bar_set_response_sensitive()`.
/// To add widgets to the main content area of a `GtkInfoBar`, use
/// `gtk_info_bar_get_content_area()` and add your widgets to the container.
/// 
/// Similar to `GtkMessageDialog`, the contents of a `GtkInfoBar` can by
/// classified as error message, warning, informational message, etc,
/// by using `gtk_info_bar_set_message_type()`. GTK+ may use the message type
/// to determine how the message is displayed.
/// 
/// A simple example for using a `GtkInfoBar:`
/// (C Language Example):
/// ```C
/// GtkWidget *widget, *message_label, *content_area;
/// GtkWidget *grid;
/// GtkInfoBar *bar;
/// 
/// // set up info bar
/// widget = gtk_info_bar_new ();
/// bar = GTK_INFO_BAR (widget);
/// grid = gtk_grid_new ();
/// 
/// gtk_widget_set_no_show_all (widget, TRUE);
/// message_label = gtk_label_new ("");
/// content_area = gtk_info_bar_get_content_area (bar);
/// gtk_container_add (GTK_CONTAINER (content_area),
///                    message_label);
/// gtk_info_bar_add_button (bar,
///                          _("_OK"),
///                          GTK_RESPONSE_OK);
/// g_signal_connect (bar,
///                   "response",
///                   G_CALLBACK (gtk_widget_hide),
///                   NULL);
/// gtk_grid_attach (GTK_GRID (grid),
///                  widget,
///                  0, 2, 1, 1);
/// 
/// // ...
/// 
/// // show an error message
/// gtk_label_set_text (GTK_LABEL (message_label), "An error occurred!");
/// gtk_info_bar_set_message_type (bar,
///                                GTK_MESSAGE_ERROR);
/// gtk_widget_show (bar);
/// ```
/// 
/// # GtkInfoBar as GtkBuildable
/// 
/// The GtkInfoBar implementation of the GtkBuildable interface exposes
/// the content area and action area as internal children with the names
/// “content_area” and “action_area”.
/// 
/// GtkInfoBar supports a custom &lt;action-widgets&gt; element, which can contain
/// multiple &lt;action-widget&gt; elements. The “response” attribute specifies a
/// numeric response, and the content of the element is the id of widget
/// (which should be a child of the dialogs `action_area`).
/// 
/// # CSS nodes
/// 
/// GtkInfoBar has a single CSS node with name infobar. The node may get
/// one of the style classes .info, .warning, .error or .question, depending
/// on the message type.
///
/// The `InfoBar` type acts as a reference-counted owner of an underlying `GtkInfoBar` instance.
/// It provides the methods that can operate on this data type through `InfoBarProtocol` conformance.
/// Use `InfoBar` as a strong reference or owner of a `GtkInfoBar` instance.
///
open class InfoBar: Box, InfoBarProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InfoBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkInfoBar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InfoBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkInfoBar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InfoBar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InfoBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InfoBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkInfoBar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InfoBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkInfoBar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkInfoBar`.
    /// i.e., ownership is transferred to the `InfoBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkInfoBar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `InfoBarProtocol`
    /// Will retain `GtkInfoBar`.
    /// - Parameter other: an instance of a related type that implements `InfoBarProtocol`
    @inlinable public init<T: InfoBarProtocol>(infoBar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkInfoBar` object.
    @inlinable public init() {
        let rv = gtk_info_bar_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


    // *** newWithButtons() is not available because it has a varargs (...) parameter!



    // *** newWithButtons() is not available because it has a varargs (...) parameter!


}

public enum InfoBarPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case baselinePosition = "baseline-position"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case homogeneous = "homogeneous"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    /// The type of the message.
    /// 
    /// The type may be used to determine the appearance of the info bar.
    case messageType = "message-type"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    case revealed = "revealed"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// Whether to include a standard close button.
    case showCloseButton = "show-close-button"
    case spacing = "spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension InfoBarProtocol {
    /// Bind a `InfoBarPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: InfoBarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a InfoBar property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: InfoBarPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a InfoBar property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: InfoBarPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum InfoBarSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    case add = "add"
    /// The `button-press-event` signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button-release-event` signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    case checkResize = "check-resize"
    /// The `child-notify` signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The `close` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user uses a keybinding to dismiss
    /// the info bar.
    /// 
    /// The default binding for this signal is the Escape key.
    case close = "close"
    /// The `composited-changed` signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure-event` signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete-event` signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy-event` signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction-changed` signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag-begin` signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag-data-delete` signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag-data-get` signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag-data-received` signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag-drop` signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag-drop` signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag-data-received` handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag-end` signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag-begin`.
    case dragEnd = "drag-end"
    /// The `drag-failed` signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag-leave` signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag-motion`, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag-leave` signal is also emitted before the
    /// `drag-drop` signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag-motion` signal handler.
    case dragLeave = "drag-leave"
    /// The `drag-motion` signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag-data-received`
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag-leave` and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter-notify-event` will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key-press-event`) and finally a generic
    /// `GtkWidget::event-after` signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event-after` will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The `focus-in-event` signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus-out-event` signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab-notify` signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy-changed` signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key-press-event` signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key-release-event` signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave-notify-event` will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map-event` will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map-event` signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion-notify-event` signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent-set` signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The `property-notify-event` signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has-tooltip` is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// Emitted when an action widget is clicked or the application programmer
    /// calls `gtk_dialog_response()`. The `response_id` depends on which action
    /// widget was clicked.
    case response = "response"
    /// The `screen-changed` signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll-event` signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection-clear-event` signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection-request-event` signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The `state-changed` signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state-flags-changed` signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style-set` signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style-updated` signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style-updated` signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap-event` signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility-notify-event` will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The `window-state-event` will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBaselinePosition = "notify::baseline-position"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyHomogeneous = "notify::homogeneous"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    /// The type of the message.
    /// 
    /// The type may be used to determine the appearance of the info bar.
    case notifyMessageType = "notify::message-type"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
    case notifyRevealed = "notify::revealed"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// Whether to include a standard close button.
    case notifyShowCloseButton = "notify::show-close-button"
    case notifySpacing = "notify::spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

// MARK: InfoBar signals
public extension InfoBarProtocol {
    /// Connect a Swift signal handler to the given, typed `InfoBarSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: InfoBarSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `InfoBarSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: InfoBarSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// The `close` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user uses a keybinding to dismiss
    /// the info bar.
    /// 
    /// The default binding for this signal is the Escape key.
    /// - Note: This represents the underlying `close` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `close` signal is emitted
    @discardableResult @inlinable func onClose(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: InfoBarRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<InfoBarRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(InfoBarRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .close,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `close` signal for using the `connect(signal:)` methods
    static var closeSignal: InfoBarSignalName { .close }
    
    /// Emitted when an action widget is clicked or the application programmer
    /// calls `gtk_dialog_response()`. The `response_id` depends on which action
    /// widget was clicked.
    /// - Note: This represents the underlying `response` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter responseID: the response ID
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `response` signal is emitted
    @discardableResult @inlinable func onResponse(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: InfoBarRef, _ responseID: Int) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<InfoBarRef, Int, Void>
        let cCallback: @convention(c) (gpointer, gint, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(InfoBarRef(raw: unownedSelf), Int(arg1))
            return output
        }
        return connect(
            signal: .response,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `response` signal for using the `connect(signal:)` methods
    static var responseSignal: InfoBarSignalName { .response }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::message-type` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMessageType` signal is emitted
    @discardableResult @inlinable func onNotifyMessageType(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: InfoBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<InfoBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(InfoBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMessageType,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::message-type` signal for using the `connect(signal:)` methods
    static var notifyMessageTypeSignal: InfoBarSignalName { .notifyMessageType }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::revealed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyRevealed` signal is emitted
    @discardableResult @inlinable func onNotifyRevealed(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: InfoBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<InfoBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(InfoBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyRevealed,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::revealed` signal for using the `connect(signal:)` methods
    static var notifyRevealedSignal: InfoBarSignalName { .notifyRevealed }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::show-close-button` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyShowCloseButton` signal is emitted
    @discardableResult @inlinable func onNotifyShowCloseButton(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: InfoBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<InfoBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(InfoBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyShowCloseButton,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::show-close-button` signal for using the `connect(signal:)` methods
    static var notifyShowCloseButtonSignal: InfoBarSignalName { .notifyShowCloseButton }
    
}

// MARK: InfoBar Class: InfoBarProtocol extension (methods and fields)
public extension InfoBarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkInfoBar` instance.
    @inlinable var info_bar_ptr: UnsafeMutablePointer<GtkInfoBar>! { return ptr?.assumingMemoryBound(to: GtkInfoBar.self) }

    /// Add an activatable widget to the action area of a `GtkInfoBar`,
    /// connecting a signal handler that will emit the `GtkInfoBar::response`
    /// signal on the message area when the widget is activated. The widget
    /// is appended to the end of the message areas action area.
    @inlinable func addActionWidget<WidgetT: WidgetProtocol>(child: WidgetT, responseID: Int) {
        gtk_info_bar_add_action_widget(info_bar_ptr, child.widget_ptr, gint(responseID))
    
    }

    /// Adds a button with the given text and sets things up so that
    /// clicking the button will emit the “response” signal with the given
    /// response_id. The button is appended to the end of the info bars's
    /// action area. The button widget is returned, but usually you don't
    /// need it.
    @inlinable func addButton(buttonText: UnsafePointer<gchar>!, responseID: Int) -> ButtonRef! {
        let rv = ButtonRef(gconstpointer: gconstpointer(gtk_info_bar_add_button(info_bar_ptr, buttonText, gint(responseID))))
        return rv
    }


    // *** addButtons() is not available because it has a varargs (...) parameter!


    /// Returns the action area of `info_bar`.
    @inlinable func getActionArea() -> BoxRef! {
        let rv = BoxRef(gconstpointer: gconstpointer(gtk_info_bar_get_action_area(info_bar_ptr)))
        return rv
    }

    /// Returns the content area of `info_bar`.
    @inlinable func getContentArea() -> BoxRef! {
        let rv = BoxRef(gconstpointer: gconstpointer(gtk_info_bar_get_content_area(info_bar_ptr)))
        return rv
    }

    /// Returns the message type of the message area.
    @inlinable func getMessageType() -> GtkMessageType {
        let rv = gtk_info_bar_get_message_type(info_bar_ptr)
        return rv
    }

    @inlinable func getRevealed() -> Bool {
        let rv = ((gtk_info_bar_get_revealed(info_bar_ptr)) != 0)
        return rv
    }

    /// Returns whether the widget will display a standard close button.
    @inlinable func getShowCloseButton() -> Bool {
        let rv = ((gtk_info_bar_get_show_close_button(info_bar_ptr)) != 0)
        return rv
    }

    /// Emits the “response” signal with the given `response_id`.
    @inlinable func response(responseID: Int) {
        gtk_info_bar_response(info_bar_ptr, gint(responseID))
    
    }

    /// Sets the last widget in the info bar’s action area with
    /// the given response_id as the default widget for the dialog.
    /// Pressing “Enter” normally activates the default widget.
    /// 
    /// Note that this function currently requires `info_bar` to
    /// be added to a widget hierarchy.
    @inlinable func setDefaultResponse(responseID: Int) {
        gtk_info_bar_set_default_response(info_bar_ptr, gint(responseID))
    
    }

    /// Sets the message type of the message area.
    /// 
    /// GTK+ uses this type to determine how the message is displayed.
    @inlinable func set(messageType: GtkMessageType) {
        gtk_info_bar_set_message_type(info_bar_ptr, messageType)
    
    }

    /// Calls gtk_widget_set_sensitive (widget, setting) for each
    /// widget in the info bars’s action area with the given response_id.
    /// A convenient way to sensitize/desensitize dialog buttons.
    @inlinable func setResponseSensitive(responseID: Int, setting: Bool) {
        gtk_info_bar_set_response_sensitive(info_bar_ptr, gint(responseID), gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the GtkInfoBar:revealed property to `revealed`. This will cause
    /// `info_bar` to show up with a slide-in transition.
    /// 
    /// Note that this property does not automatically show `info_bar` and thus won’t
    /// have any effect if it is invisible.
    @inlinable func set(revealed: Bool) {
        gtk_info_bar_set_revealed(info_bar_ptr, gboolean((revealed) ? 1 : 0))
    
    }

    /// If true, a standard close button is shown. When clicked it emits
    /// the response `GTK_RESPONSE_CLOSE`.
    @inlinable func setShowCloseButton(setting: Bool) {
        gtk_info_bar_set_show_close_button(info_bar_ptr, gboolean((setting) ? 1 : 0))
    
    }
    /// Returns the action area of `info_bar`.
    @inlinable var actionArea: BoxRef! {
        /// Returns the action area of `info_bar`.
        get {
            let rv = BoxRef(gconstpointer: gconstpointer(gtk_info_bar_get_action_area(info_bar_ptr)))
            return rv
        }
    }

    /// Returns the content area of `info_bar`.
    @inlinable var contentArea: BoxRef! {
        /// Returns the content area of `info_bar`.
        get {
            let rv = BoxRef(gconstpointer: gconstpointer(gtk_info_bar_get_content_area(info_bar_ptr)))
            return rv
        }
    }

    /// Returns the message type of the message area.
    @inlinable var messageType: GtkMessageType {
        /// Returns the message type of the message area.
        get {
            let rv = gtk_info_bar_get_message_type(info_bar_ptr)
            return rv
        }
        /// Sets the message type of the message area.
        /// 
        /// GTK+ uses this type to determine how the message is displayed.
        nonmutating set {
            gtk_info_bar_set_message_type(info_bar_ptr, newValue)
        }
    }

    @inlinable var revealed: Bool {
        get {
            let rv = ((gtk_info_bar_get_revealed(info_bar_ptr)) != 0)
            return rv
        }
        /// Sets the GtkInfoBar:revealed property to `revealed`. This will cause
        /// `info_bar` to show up with a slide-in transition.
        /// 
        /// Note that this property does not automatically show `info_bar` and thus won’t
        /// have any effect if it is invisible.
        nonmutating set {
            gtk_info_bar_set_revealed(info_bar_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the widget will display a standard close button.
    @inlinable var showCloseButton: Bool {
        /// Returns whether the widget will display a standard close button.
        get {
            let rv = ((gtk_info_bar_get_show_close_button(info_bar_ptr)) != 0)
            return rv
        }
        /// If true, a standard close button is shown. When clicked it emits
        /// the response `GTK_RESPONSE_CLOSE`.
        nonmutating set {
            gtk_info_bar_set_show_close_button(info_bar_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parent: GtkBox {
        get {
            let rv = info_bar_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Invisible Class

/// The `GtkInvisible` widget is used internally in GTK+, and is probably not
/// very useful for application developers.
/// 
/// It is used for reliable pointer grabs and selection handling in the code
/// for drag-and-drop.
///
/// The `InvisibleProtocol` protocol exposes the methods and properties of an underlying `GtkInvisible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Invisible`.
/// Alternatively, use `InvisibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InvisibleProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkInvisible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkInvisible` instance.
    var invisible_ptr: UnsafeMutablePointer<GtkInvisible>! { get }

    /// Required Initialiser for types conforming to `InvisibleProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GtkInvisible` widget is used internally in GTK+, and is probably not
/// very useful for application developers.
/// 
/// It is used for reliable pointer grabs and selection handling in the code
/// for drag-and-drop.
///
/// The `InvisibleRef` type acts as a lightweight Swift reference to an underlying `GtkInvisible` instance.
/// It exposes methods that can operate on this data type through `InvisibleProtocol` conformance.
/// Use `InvisibleRef` only as an `unowned` reference to an existing `GtkInvisible` instance.
///
public struct InvisibleRef: InvisibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkInvisible` instance.
    /// For type-safe access, use the generated, typed pointer `invisible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InvisibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkInvisible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkInvisible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkInvisible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkInvisible>?) {
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

    /// Reference intialiser for a related type that implements `InvisibleProtocol`
    @inlinable init<T: InvisibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: InvisibleProtocol>(_ other: T) -> InvisibleRef { InvisibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkInvisible`.
    @inlinable init() {
        let rv = gtk_invisible_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkInvisible` object for a specified screen
    @inlinable init<ScreenT: Gdk.ScreenProtocol>(screen: ScreenT) {
        let rv = gtk_invisible_new_for_screen(screen.screen_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkInvisible` object for a specified screen
    @inlinable static func newFor<ScreenT: Gdk.ScreenProtocol>(screen: ScreenT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_invisible_new_for_screen(screen.screen_ptr))) else { return nil }
        return rv
    }
}

/// The `GtkInvisible` widget is used internally in GTK+, and is probably not
/// very useful for application developers.
/// 
/// It is used for reliable pointer grabs and selection handling in the code
/// for drag-and-drop.
///
/// The `Invisible` type acts as a reference-counted owner of an underlying `GtkInvisible` instance.
/// It provides the methods that can operate on this data type through `InvisibleProtocol` conformance.
/// Use `Invisible` as a strong reference or owner of a `GtkInvisible` instance.
///
open class Invisible: Widget, InvisibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Invisible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkInvisible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Invisible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkInvisible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Invisible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Invisible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Invisible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkInvisible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Invisible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkInvisible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkInvisible`.
    /// i.e., ownership is transferred to the `Invisible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkInvisible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `InvisibleProtocol`
    /// Will retain `GtkInvisible`.
    /// - Parameter other: an instance of a related type that implements `InvisibleProtocol`
    @inlinable public init<T: InvisibleProtocol>(invisible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkInvisible`.
    @inlinable public init() {
        let rv = gtk_invisible_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkInvisible` object for a specified screen
    @inlinable public init<ScreenT: Gdk.ScreenProtocol>(screen: ScreenT) {
        let rv = gtk_invisible_new_for_screen(screen.screen_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkInvisible` object for a specified screen
    @inlinable public static func newFor<ScreenT: Gdk.ScreenProtocol>(screen: ScreenT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_invisible_new_for_screen(screen.screen_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum InvisiblePropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case screen = "screen"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension InvisibleProtocol {
    /// Bind a `InvisiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: InvisiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a Invisible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: InvisiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Invisible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: InvisiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum InvisibleSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The `button-press-event` signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button-release-event` signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    /// The `child-notify` signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The `composited-changed` signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure-event` signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete-event` signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy-event` signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction-changed` signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag-begin` signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag-data-delete` signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag-data-get` signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag-data-received` signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag-drop` signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag-drop` signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag-data-received` handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag-end` signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag-begin`.
    case dragEnd = "drag-end"
    /// The `drag-failed` signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag-leave` signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag-motion`, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag-leave` signal is also emitted before the
    /// `drag-drop` signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag-motion` signal handler.
    case dragLeave = "drag-leave"
    /// The `drag-motion` signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag-data-received`
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag-leave` and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter-notify-event` will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key-press-event`) and finally a generic
    /// `GtkWidget::event-after` signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event-after` will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The `focus-in-event` signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus-out-event` signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab-notify` signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy-changed` signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key-press-event` signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key-release-event` signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave-notify-event` will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map-event` will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map-event` signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion-notify-event` signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent-set` signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The `property-notify-event` signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has-tooltip` is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `screen-changed` signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll-event` signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection-clear-event` signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection-request-event` signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The `state-changed` signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state-flags-changed` signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style-set` signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style-updated` signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style-updated` signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap-event` signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility-notify-event` will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The `window-state-event` will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifyScreen = "notify::screen"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

// MARK: Invisible has no signals
// MARK: Invisible Class: InvisibleProtocol extension (methods and fields)
public extension InvisibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkInvisible` instance.
    @inlinable var invisible_ptr: UnsafeMutablePointer<GtkInvisible>! { return ptr?.assumingMemoryBound(to: GtkInvisible.self) }

    /// Returns the `GdkScreen` object associated with `invisible`
    @inlinable func getScreen() -> Gdk.ScreenRef! {
        let rv = Gdk.ScreenRef(gtk_invisible_get_screen(invisible_ptr))
        return rv
    }

    /// Sets the `GdkScreen` where the `GtkInvisible` object will be displayed.
    @inlinable func set<ScreenT: Gdk.ScreenProtocol>(screen: ScreenT) {
        gtk_invisible_set_screen(invisible_ptr, screen.screen_ptr)
    
    }
    @inlinable var screen: Gdk.ScreenRef! {
        /// Returns the `GdkScreen` object associated with `invisible`
        get {
            let rv = Gdk.ScreenRef(gtk_invisible_get_screen(invisible_ptr))
            return rv
        }
        /// Sets the `GdkScreen` where the `GtkInvisible` object will be displayed.
        nonmutating set {
            gtk_invisible_set_screen(invisible_ptr, UnsafeMutablePointer<GdkScreen>(newValue?.screen_ptr))
        }
    }

    @inlinable var widget: GtkWidget {
        get {
            let rv = invisible_ptr.pointee.widget
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Label Class

/// The `GtkLabel` widget displays a small amount of text. As the name
/// implies, most labels are used to label another widget such as a
/// `GtkButton`, a `GtkMenuItem`, or a `GtkComboBox`.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// label
/// ├── [selection]
/// ├── [link]
/// ┊
/// ╰── [link]
/// ```
/// 
/// GtkLabel has a single CSS node with the name label. A wide variety
/// of style classes may be applied to labels, such as .title, .subtitle,
/// .dim-label, etc. In the `GtkShortcutsWindow`, labels are used wth the
/// .keycap style class.
/// 
/// If the label has a selection, it gets a subnode with name selection.
/// 
/// If the label has links, there is one subnode per link. These subnodes
/// carry the link or visited state depending on whether they have been
/// visited.
/// 
/// # GtkLabel as GtkBuildable
/// 
/// The GtkLabel implementation of the GtkBuildable interface supports a
/// custom &lt;attributes&gt; element, which supports any number of &lt;attribute&gt;
/// elements. The &lt;attribute&gt; element has attributes named “name“, “value“,
/// “start“ and “end“ and allows you to specify `PangoAttribute` values for
/// this label.
/// 
/// An example of a UI definition fragment specifying Pango attributes:
/// ```
/// <object class="GtkLabel">
///   <attributes>
///     <attribute name="weight" value="PANGO_WEIGHT_BOLD"/>
///     <attribute name="background" value="red" start="5" end="10"/>
///   </attributes>
/// </object>
/// ```
/// 
/// The start and end attributes specify the range of characters to which the
/// Pango attribute applies. If start and end are not specified, the attribute is
/// applied to the whole text. Note that specifying ranges does not make much
/// sense with translatable attributes. Use markup embedded in the translatable
/// content instead.
/// 
/// # Mnemonics
/// 
/// Labels may contain “mnemonics”. Mnemonics are
/// underlined characters in the label, used for keyboard navigation.
/// Mnemonics are created by providing a string with an underscore before
/// the mnemonic character, such as `"_File"`, to the
/// functions `gtk_label_new_with_mnemonic()` or
/// `gtk_label_set_text_with_mnemonic()`.
/// 
/// Mnemonics automatically activate any activatable widget the label is
/// inside, such as a `GtkButton`; if the label is not inside the
/// mnemonic’s target widget, you have to tell the label about the target
/// using `gtk_label_set_mnemonic_widget()`. Here’s a simple example where
/// the label is inside a button:
/// 
/// (C Language Example):
/// ```C
///   // Pressing Alt+H will activate this button
///   GtkWidget *button = gtk_button_new ();
///   GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
///   gtk_container_add (GTK_CONTAINER (button), label);
/// ```
/// 
/// There’s a convenience function to create buttons with a mnemonic label
/// already inside:
/// 
/// (C Language Example):
/// ```C
///   // Pressing Alt+H will activate this button
///   GtkWidget *button = gtk_button_new_with_mnemonic ("_Hello");
/// ```
/// 
/// To create a mnemonic for a widget alongside the label, such as a
/// `GtkEntry`, you have to point the label at the entry with
/// `gtk_label_set_mnemonic_widget()`:
/// 
/// (C Language Example):
/// ```C
///   // Pressing Alt+H will focus the entry
///   GtkWidget *entry = gtk_entry_new ();
///   GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
///   gtk_label_set_mnemonic_widget (GTK_LABEL (label), entry);
/// ```
/// 
/// # Markup (styled text)
/// 
/// To make it easy to format text in a label (changing colors,
/// fonts, etc.), label text can be provided in a simple
/// [markup format](#PangoMarkupFormat).
/// 
/// Here’s how to create a label with a small font:
/// (C Language Example):
/// ```C
///   GtkWidget *label = gtk_label_new (NULL);
///   gtk_label_set_markup (GTK_LABEL (label), "<small>Small text</small>");
/// ```
/// 
/// (See [complete documentation](#PangoMarkupFormat) of available
/// tags in the Pango manual.)
/// 
/// The markup passed to `gtk_label_set_markup()` must be valid; for example,
/// literal &lt;, &gt; and & characters must be escaped as &lt;, &gt;, and &amp;.
/// If you pass text obtained from the user, file, or a network to
/// `gtk_label_set_markup()`, you’ll want to escape it with
/// `g_markup_escape_text()` or `g_markup_printf_escaped()`.
/// 
/// Markup strings are just a convenient way to set the `PangoAttrList` on
/// a label; `gtk_label_set_attributes()` may be a simpler way to set
/// attributes in some cases. Be careful though; `PangoAttrList` tends to
/// cause internationalization problems, unless you’re applying attributes
/// to the entire string (i.e. unless you set the range of each attribute
/// to [0, `G_MAXINT`)). The reason is that specifying the start_index and
/// end_index for a `PangoAttribute` requires knowledge of the exact string
/// being displayed, so translations will cause problems.
/// 
/// # Selectable labels
/// 
/// Labels can be made selectable with `gtk_label_set_selectable()`.
/// Selectable labels allow the user to copy the label contents to
/// the clipboard. Only labels that contain useful-to-copy information
/// — such as error messages — should be made selectable.
/// 
/// # Text layout # <a name="label-text-layout"></a>
/// 
/// A label can contain any number of paragraphs, but will have
/// performance problems if it contains more than a small number.
/// Paragraphs are separated by newlines or other paragraph separators
/// understood by Pango.
/// 
/// Labels can automatically wrap text if you call
/// `gtk_label_set_line_wrap()`.
/// 
/// `gtk_label_set_justify()` sets how the lines in a label align
/// with one another. If you want to set how the label as a whole
/// aligns in its available space, see the `GtkWidget:halign` and
/// `GtkWidget:valign` properties.
/// 
/// The `GtkLabel:width-chars` and `GtkLabel:max-width-chars` properties
/// can be used to control the size allocation of ellipsized or wrapped
/// labels. For ellipsizing labels, if either is specified (and less
/// than the actual text size), it is used as the minimum width, and the actual
/// text size is used as the natural width of the label. For wrapping labels,
/// width-chars is used as the minimum width, if specified, and max-width-chars
/// is used as the natural width. Even if max-width-chars specified, wrapping
/// labels will be rewrapped to use all of the available width.
/// 
/// Note that the interpretation of `GtkLabel:width-chars` and
/// `GtkLabel:max-width-chars` has changed a bit with the introduction of
/// [width-for-height geometry management.](#geometry-management)
/// 
/// # Links
/// 
/// Since 2.18, GTK+ supports markup for clickable hyperlinks in addition
/// to regular Pango markup. The markup for links is borrowed from HTML,
/// using the `&lt;a&gt;` with “href“ and “title“ attributes. GTK+ renders links
/// similar to the way they appear in web browsers, with colored, underlined
/// text. The “title“ attribute is displayed as a tooltip on the link.
/// 
/// An example looks like this:
/// 
/// (C Language Example):
/// ```C
/// const gchar *text =
/// "Go to the"
/// "<a href=\"http://www.gtk.org title=\"&lt;i&gt;Our&lt;/i&gt; website\">"
/// "GTK+ website</a> for more...";
/// GtkWidget *label = gtk_label_new (NULL);
/// gtk_label_set_markup (GTK_LABEL (label), text);
/// ```
/// 
/// It is possible to implement custom handling for links and their tooltips with
/// the `GtkLabel::activate-link` signal and the `gtk_label_get_current_uri()` function.
///
/// The `LabelProtocol` protocol exposes the methods and properties of an underlying `GtkLabel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Label`.
/// Alternatively, use `LabelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol LabelProtocol: MiscProtocol {
        /// Untyped pointer to the underlying `GtkLabel` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLabel` instance.
    var label_ptr: UnsafeMutablePointer<GtkLabel>! { get }

    /// Required Initialiser for types conforming to `LabelProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GtkLabel` widget displays a small amount of text. As the name
/// implies, most labels are used to label another widget such as a
/// `GtkButton`, a `GtkMenuItem`, or a `GtkComboBox`.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// label
/// ├── [selection]
/// ├── [link]
/// ┊
/// ╰── [link]
/// ```
/// 
/// GtkLabel has a single CSS node with the name label. A wide variety
/// of style classes may be applied to labels, such as .title, .subtitle,
/// .dim-label, etc. In the `GtkShortcutsWindow`, labels are used wth the
/// .keycap style class.
/// 
/// If the label has a selection, it gets a subnode with name selection.
/// 
/// If the label has links, there is one subnode per link. These subnodes
/// carry the link or visited state depending on whether they have been
/// visited.
/// 
/// # GtkLabel as GtkBuildable
/// 
/// The GtkLabel implementation of the GtkBuildable interface supports a
/// custom &lt;attributes&gt; element, which supports any number of &lt;attribute&gt;
/// elements. The &lt;attribute&gt; element has attributes named “name“, “value“,
/// “start“ and “end“ and allows you to specify `PangoAttribute` values for
/// this label.
/// 
/// An example of a UI definition fragment specifying Pango attributes:
/// ```
/// <object class="GtkLabel">
///   <attributes>
///     <attribute name="weight" value="PANGO_WEIGHT_BOLD"/>
///     <attribute name="background" value="red" start="5" end="10"/>
///   </attributes>
/// </object>
/// ```
/// 
/// The start and end attributes specify the range of characters to which the
/// Pango attribute applies. If start and end are not specified, the attribute is
/// applied to the whole text. Note that specifying ranges does not make much
/// sense with translatable attributes. Use markup embedded in the translatable
/// content instead.
/// 
/// # Mnemonics
/// 
/// Labels may contain “mnemonics”. Mnemonics are
/// underlined characters in the label, used for keyboard navigation.
/// Mnemonics are created by providing a string with an underscore before
/// the mnemonic character, such as `"_File"`, to the
/// functions `gtk_label_new_with_mnemonic()` or
/// `gtk_label_set_text_with_mnemonic()`.
/// 
/// Mnemonics automatically activate any activatable widget the label is
/// inside, such as a `GtkButton`; if the label is not inside the
/// mnemonic’s target widget, you have to tell the label about the target
/// using `gtk_label_set_mnemonic_widget()`. Here’s a simple example where
/// the label is inside a button:
/// 
/// (C Language Example):
/// ```C
///   // Pressing Alt+H will activate this button
///   GtkWidget *button = gtk_button_new ();
///   GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
///   gtk_container_add (GTK_CONTAINER (button), label);
/// ```
/// 
/// There’s a convenience function to create buttons with a mnemonic label
/// already inside:
/// 
/// (C Language Example):
/// ```C
///   // Pressing Alt+H will activate this button
///   GtkWidget *button = gtk_button_new_with_mnemonic ("_Hello");
/// ```
/// 
/// To create a mnemonic for a widget alongside the label, such as a
/// `GtkEntry`, you have to point the label at the entry with
/// `gtk_label_set_mnemonic_widget()`:
/// 
/// (C Language Example):
/// ```C
///   // Pressing Alt+H will focus the entry
///   GtkWidget *entry = gtk_entry_new ();
///   GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
///   gtk_label_set_mnemonic_widget (GTK_LABEL (label), entry);
/// ```
/// 
/// # Markup (styled text)
/// 
/// To make it easy to format text in a label (changing colors,
/// fonts, etc.), label text can be provided in a simple
/// [markup format](#PangoMarkupFormat).
/// 
/// Here’s how to create a label with a small font:
/// (C Language Example):
/// ```C
///   GtkWidget *label = gtk_label_new (NULL);
///   gtk_label_set_markup (GTK_LABEL (label), "<small>Small text</small>");
/// ```
/// 
/// (See [complete documentation](#PangoMarkupFormat) of available
/// tags in the Pango manual.)
/// 
/// The markup passed to `gtk_label_set_markup()` must be valid; for example,
/// literal &lt;, &gt; and & characters must be escaped as &lt;, &gt;, and &amp;.
/// If you pass text obtained from the user, file, or a network to
/// `gtk_label_set_markup()`, you’ll want to escape it with
/// `g_markup_escape_text()` or `g_markup_printf_escaped()`.
/// 
/// Markup strings are just a convenient way to set the `PangoAttrList` on
/// a label; `gtk_label_set_attributes()` may be a simpler way to set
/// attributes in some cases. Be careful though; `PangoAttrList` tends to
/// cause internationalization problems, unless you’re applying attributes
/// to the entire string (i.e. unless you set the range of each attribute
/// to [0, `G_MAXINT`)). The reason is that specifying the start_index and
/// end_index for a `PangoAttribute` requires knowledge of the exact string
/// being displayed, so translations will cause problems.
/// 
/// # Selectable labels
/// 
/// Labels can be made selectable with `gtk_label_set_selectable()`.
/// Selectable labels allow the user to copy the label contents to
/// the clipboard. Only labels that contain useful-to-copy information
/// — such as error messages — should be made selectable.
/// 
/// # Text layout # <a name="label-text-layout"></a>
/// 
/// A label can contain any number of paragraphs, but will have
/// performance problems if it contains more than a small number.
/// Paragraphs are separated by newlines or other paragraph separators
/// understood by Pango.
/// 
/// Labels can automatically wrap text if you call
/// `gtk_label_set_line_wrap()`.
/// 
/// `gtk_label_set_justify()` sets how the lines in a label align
/// with one another. If you want to set how the label as a whole
/// aligns in its available space, see the `GtkWidget:halign` and
/// `GtkWidget:valign` properties.
/// 
/// The `GtkLabel:width-chars` and `GtkLabel:max-width-chars` properties
/// can be used to control the size allocation of ellipsized or wrapped
/// labels. For ellipsizing labels, if either is specified (and less
/// than the actual text size), it is used as the minimum width, and the actual
/// text size is used as the natural width of the label. For wrapping labels,
/// width-chars is used as the minimum width, if specified, and max-width-chars
/// is used as the natural width. Even if max-width-chars specified, wrapping
/// labels will be rewrapped to use all of the available width.
/// 
/// Note that the interpretation of `GtkLabel:width-chars` and
/// `GtkLabel:max-width-chars` has changed a bit with the introduction of
/// [width-for-height geometry management.](#geometry-management)
/// 
/// # Links
/// 
/// Since 2.18, GTK+ supports markup for clickable hyperlinks in addition
/// to regular Pango markup. The markup for links is borrowed from HTML,
/// using the `&lt;a&gt;` with “href“ and “title“ attributes. GTK+ renders links
/// similar to the way they appear in web browsers, with colored, underlined
/// text. The “title“ attribute is displayed as a tooltip on the link.
/// 
/// An example looks like this:
/// 
/// (C Language Example):
/// ```C
/// const gchar *text =
/// "Go to the"
/// "<a href=\"http://www.gtk.org title=\"&lt;i&gt;Our&lt;/i&gt; website\">"
/// "GTK+ website</a> for more...";
/// GtkWidget *label = gtk_label_new (NULL);
/// gtk_label_set_markup (GTK_LABEL (label), text);
/// ```
/// 
/// It is possible to implement custom handling for links and their tooltips with
/// the `GtkLabel::activate-link` signal and the `gtk_label_get_current_uri()` function.
///
/// The `LabelRef` type acts as a lightweight Swift reference to an underlying `GtkLabel` instance.
/// It exposes methods that can operate on this data type through `LabelProtocol` conformance.
/// Use `LabelRef` only as an `unowned` reference to an existing `GtkLabel` instance.
///
public struct LabelRef: LabelProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkLabel` instance.
    /// For type-safe access, use the generated, typed pointer `label_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LabelRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLabel>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLabel>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLabel>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLabel>?) {
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

    /// Reference intialiser for a related type that implements `LabelProtocol`
    @inlinable init<T: LabelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LabelProtocol>(_ other: T) -> LabelRef { LabelRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new label with the given text inside it. You can
    /// pass `nil` to get an empty label widget.
    @inlinable init( str: UnsafePointer<gchar>? = nil) {
        let rv = gtk_label_new(str)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkLabel`, containing the text in `str`.
    /// 
    /// If characters in `str` are preceded by an underscore, they are
    /// underlined. If you need a literal underscore character in a label, use
    /// '__' (two underscores). The first underlined character represents a
    /// keyboard accelerator called a mnemonic. The mnemonic key can be used
    /// to activate another widget, chosen automatically, or explicitly using
    /// `gtk_label_set_mnemonic_widget()`.
    /// 
    /// If `gtk_label_set_mnemonic_widget()` is not called, then the first
    /// activatable ancestor of the `GtkLabel` will be chosen as the mnemonic
    /// widget. For instance, if the label is inside a button or menu item,
    /// the button or menu item will automatically become the mnemonic widget
    /// and be activated by the mnemonic.
    @inlinable init(mnemonic str: UnsafePointer<gchar>? = nil) {
        let rv = gtk_label_new_with_mnemonic(str)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkLabel`, containing the text in `str`.
    /// 
    /// If characters in `str` are preceded by an underscore, they are
    /// underlined. If you need a literal underscore character in a label, use
    /// '__' (two underscores). The first underlined character represents a
    /// keyboard accelerator called a mnemonic. The mnemonic key can be used
    /// to activate another widget, chosen automatically, or explicitly using
    /// `gtk_label_set_mnemonic_widget()`.
    /// 
    /// If `gtk_label_set_mnemonic_widget()` is not called, then the first
    /// activatable ancestor of the `GtkLabel` will be chosen as the mnemonic
    /// widget. For instance, if the label is inside a button or menu item,
    /// the button or menu item will automatically become the mnemonic widget
    /// and be activated by the mnemonic.
    @inlinable static func newWith(mnemonic str: UnsafePointer<gchar>? = nil) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_label_new_with_mnemonic(str))) else { return nil }
        return rv
    }
}

/// The `GtkLabel` widget displays a small amount of text. As the name
/// implies, most labels are used to label another widget such as a
/// `GtkButton`, a `GtkMenuItem`, or a `GtkComboBox`.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// label
/// ├── [selection]
/// ├── [link]
/// ┊
/// ╰── [link]
/// ```
/// 
/// GtkLabel has a single CSS node with the name label. A wide variety
/// of style classes may be applied to labels, such as .title, .subtitle,
/// .dim-label, etc. In the `GtkShortcutsWindow`, labels are used wth the
/// .keycap style class.
/// 
/// If the label has a selection, it gets a subnode with name selection.
/// 
/// If the label has links, there is one subnode per link. These subnodes
/// carry the link or visited state depending on whether they have been
/// visited.
/// 
/// # GtkLabel as GtkBuildable
/// 
/// The GtkLabel implementation of the GtkBuildable interface supports a
/// custom &lt;attributes&gt; element, which supports any number of &lt;attribute&gt;
/// elements. The &lt;attribute&gt; element has attributes named “name“, “value“,
/// “start“ and “end“ and allows you to specify `PangoAttribute` values for
/// this label.
/// 
/// An example of a UI definition fragment specifying Pango attributes:
/// ```
/// <object class="GtkLabel">
///   <attributes>
///     <attribute name="weight" value="PANGO_WEIGHT_BOLD"/>
///     <attribute name="background" value="red" start="5" end="10"/>
///   </attributes>
/// </object>
/// ```
/// 
/// The start and end attributes specify the range of characters to which the
/// Pango attribute applies. If start and end are not specified, the attribute is
/// applied to the whole text. Note that specifying ranges does not make much
/// sense with translatable attributes. Use markup embedded in the translatable
/// content instead.
/// 
/// # Mnemonics
/// 
/// Labels may contain “mnemonics”. Mnemonics are
/// underlined characters in the label, used for keyboard navigation.
/// Mnemonics are created by providing a string with an underscore before
/// the mnemonic character, such as `"_File"`, to the
/// functions `gtk_label_new_with_mnemonic()` or
/// `gtk_label_set_text_with_mnemonic()`.
/// 
/// Mnemonics automatically activate any activatable widget the label is
/// inside, such as a `GtkButton`; if the label is not inside the
/// mnemonic’s target widget, you have to tell the label about the target
/// using `gtk_label_set_mnemonic_widget()`. Here’s a simple example where
/// the label is inside a button:
/// 
/// (C Language Example):
/// ```C
///   // Pressing Alt+H will activate this button
///   GtkWidget *button = gtk_button_new ();
///   GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
///   gtk_container_add (GTK_CONTAINER (button), label);
/// ```
/// 
/// There’s a convenience function to create buttons with a mnemonic label
/// already inside:
/// 
/// (C Language Example):
/// ```C
///   // Pressing Alt+H will activate this button
///   GtkWidget *button = gtk_button_new_with_mnemonic ("_Hello");
/// ```
/// 
/// To create a mnemonic for a widget alongside the label, such as a
/// `GtkEntry`, you have to point the label at the entry with
/// `gtk_label_set_mnemonic_widget()`:
/// 
/// (C Language Example):
/// ```C
///   // Pressing Alt+H will focus the entry
///   GtkWidget *entry = gtk_entry_new ();
///   GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
///   gtk_label_set_mnemonic_widget (GTK_LABEL (label), entry);
/// ```
/// 
/// # Markup (styled text)
/// 
/// To make it easy to format text in a label (changing colors,
/// fonts, etc.), label text can be provided in a simple
/// [markup format](#PangoMarkupFormat).
/// 
/// Here’s how to create a label with a small font:
/// (C Language Example):
/// ```C
///   GtkWidget *label = gtk_label_new (NULL);
///   gtk_label_set_markup (GTK_LABEL (label), "<small>Small text</small>");
/// ```
/// 
/// (See [complete documentation](#PangoMarkupFormat) of available
/// tags in the Pango manual.)
/// 
/// The markup passed to `gtk_label_set_markup()` must be valid; for example,
/// literal &lt;, &gt; and & characters must be escaped as &lt;, &gt;, and &amp;.
/// If you pass text obtained from the user, file, or a network to
/// `gtk_label_set_markup()`, you’ll want to escape it with
/// `g_markup_escape_text()` or `g_markup_printf_escaped()`.
/// 
/// Markup strings are just a convenient way to set the `PangoAttrList` on
/// a label; `gtk_label_set_attributes()` may be a simpler way to set
/// attributes in some cases. Be careful though; `PangoAttrList` tends to
/// cause internationalization problems, unless you’re applying attributes
/// to the entire string (i.e. unless you set the range of each attribute
/// to [0, `G_MAXINT`)). The reason is that specifying the start_index and
/// end_index for a `PangoAttribute` requires knowledge of the exact string
/// being displayed, so translations will cause problems.
/// 
/// # Selectable labels
/// 
/// Labels can be made selectable with `gtk_label_set_selectable()`.
/// Selectable labels allow the user to copy the label contents to
/// the clipboard. Only labels that contain useful-to-copy information
/// — such as error messages — should be made selectable.
/// 
/// # Text layout # <a name="label-text-layout"></a>
/// 
/// A label can contain any number of paragraphs, but will have
/// performance problems if it contains more than a small number.
/// Paragraphs are separated by newlines or other paragraph separators
/// understood by Pango.
/// 
/// Labels can automatically wrap text if you call
/// `gtk_label_set_line_wrap()`.
/// 
/// `gtk_label_set_justify()` sets how the lines in a label align
/// with one another. If you want to set how the label as a whole
/// aligns in its available space, see the `GtkWidget:halign` and
/// `GtkWidget:valign` properties.
/// 
/// The `GtkLabel:width-chars` and `GtkLabel:max-width-chars` properties
/// can be used to control the size allocation of ellipsized or wrapped
/// labels. For ellipsizing labels, if either is specified (and less
/// than the actual text size), it is used as the minimum width, and the actual
/// text size is used as the natural width of the label. For wrapping labels,
/// width-chars is used as the minimum width, if specified, and max-width-chars
/// is used as the natural width. Even if max-width-chars specified, wrapping
/// labels will be rewrapped to use all of the available width.
/// 
/// Note that the interpretation of `GtkLabel:width-chars` and
/// `GtkLabel:max-width-chars` has changed a bit with the introduction of
/// [width-for-height geometry management.](#geometry-management)
/// 
/// # Links
/// 
/// Since 2.18, GTK+ supports markup for clickable hyperlinks in addition
/// to regular Pango markup. The markup for links is borrowed from HTML,
/// using the `&lt;a&gt;` with “href“ and “title“ attributes. GTK+ renders links
/// similar to the way they appear in web browsers, with colored, underlined
/// text. The “title“ attribute is displayed as a tooltip on the link.
/// 
/// An example looks like this:
/// 
/// (C Language Example):
/// ```C
/// const gchar *text =
/// "Go to the"
/// "<a href=\"http://www.gtk.org title=\"&lt;i&gt;Our&lt;/i&gt; website\">"
/// "GTK+ website</a> for more...";
/// GtkWidget *label = gtk_label_new (NULL);
/// gtk_label_set_markup (GTK_LABEL (label), text);
/// ```
/// 
/// It is possible to implement custom handling for links and their tooltips with
/// the `GtkLabel::activate-link` signal and the `gtk_label_get_current_uri()` function.
///
/// The `Label` type acts as a reference-counted owner of an underlying `GtkLabel` instance.
/// It provides the methods that can operate on this data type through `LabelProtocol` conformance.
/// Use `Label` as a strong reference or owner of a `GtkLabel` instance.
///
open class Label: Misc, LabelProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Label` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLabel>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Label` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLabel>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Label` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Label` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Label` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLabel>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Label` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLabel>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkLabel`.
    /// i.e., ownership is transferred to the `Label` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLabel>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LabelProtocol`
    /// Will retain `GtkLabel`.
    /// - Parameter other: an instance of a related type that implements `LabelProtocol`
    @inlinable public init<T: LabelProtocol>(label other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new label with the given text inside it. You can
    /// pass `nil` to get an empty label widget.
    @inlinable public init( str: UnsafePointer<gchar>? = nil) {
        let rv = gtk_label_new(str)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkLabel`, containing the text in `str`.
    /// 
    /// If characters in `str` are preceded by an underscore, they are
    /// underlined. If you need a literal underscore character in a label, use
    /// '__' (two underscores). The first underlined character represents a
    /// keyboard accelerator called a mnemonic. The mnemonic key can be used
    /// to activate another widget, chosen automatically, or explicitly using
    /// `gtk_label_set_mnemonic_widget()`.
    /// 
    /// If `gtk_label_set_mnemonic_widget()` is not called, then the first
    /// activatable ancestor of the `GtkLabel` will be chosen as the mnemonic
    /// widget. For instance, if the label is inside a button or menu item,
    /// the button or menu item will automatically become the mnemonic widget
    /// and be activated by the mnemonic.
    @inlinable public init(mnemonic str: UnsafePointer<gchar>? = nil) {
        let rv = gtk_label_new_with_mnemonic(str)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkLabel`, containing the text in `str`.
    /// 
    /// If characters in `str` are preceded by an underscore, they are
    /// underlined. If you need a literal underscore character in a label, use
    /// '__' (two underscores). The first underlined character represents a
    /// keyboard accelerator called a mnemonic. The mnemonic key can be used
    /// to activate another widget, chosen automatically, or explicitly using
    /// `gtk_label_set_mnemonic_widget()`.
    /// 
    /// If `gtk_label_set_mnemonic_widget()` is not called, then the first
    /// activatable ancestor of the `GtkLabel` will be chosen as the mnemonic
    /// widget. For instance, if the label is inside a button or menu item,
    /// the button or menu item will automatically become the mnemonic widget
    /// and be activated by the mnemonic.
    @inlinable public static func newWith(mnemonic str: UnsafePointer<gchar>? = nil) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_label_new_with_mnemonic(str))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum LabelPropertyName: String, PropertyNameProtocol {
    /// The angle that the baseline of the label makes with the horizontal,
    /// in degrees, measured counterclockwise. An angle of 90 reads from
    /// from bottom to top, an angle of 270, from top to bottom. Ignored
    /// if the label is selectable.
    case angle = "angle"
    case appPaintable = "app-paintable"
    case attributes = "attributes"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case compositeChild = "composite-child"
    case cursorPosition = "cursor-position"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    /// The preferred place to ellipsize the string, if the label does
    /// not have enough room to display the entire string, specified as a
    /// `PangoEllipsizeMode`.
    /// 
    /// Note that setting this property to a value other than
    /// `PANGO_ELLIPSIZE_NONE` has the side-effect that the label requests
    /// only enough space to display the ellipsis "...". In particular, this
    /// means that ellipsizing labels do not work well in notebook tabs, unless
    /// the `GtkNotebook` tab-expand child property is set to `true`. Other ways
    /// to set a label's width are `gtk_widget_set_size_request()` and
    /// `gtk_label_set_width_chars()`.
    case ellipsize = "ellipsize"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    case justify = "justify"
    /// The contents of the label.
    /// 
    /// If the string contains [Pango XML markup](#PangoMarkupFormat), you will
    /// have to set the `GtkLabel:use-markup` property to `true` in order for the
    /// label to display the markup attributes. See also `gtk_label_set_markup()`
    /// for a convenience function that sets both this property and the
    /// `GtkLabel:use-markup` property at the same time.
    /// 
    /// If the string contains underlines acting as mnemonics, you will have to
    /// set the `GtkLabel:use-underline` property to `true` in order for the label
    /// to display them.
    case label = "label"
    /// The number of lines to which an ellipsized, wrapping label
    /// should be limited. This property has no effect if the
    /// label is not wrapping or ellipsized. Set this property to
    /// -1 if you don't want to limit the number of lines.
    case lines = "lines"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    /// The desired maximum width of the label, in characters. If this property
    /// is set to -1, the width will be calculated automatically.
    /// 
    /// See the section on [text layout](#label-text-layout)
    /// for details of how `GtkLabel:width-chars` and `GtkLabel:max-width-chars`
    /// determine the width of ellipsized and wrapped labels.
    case maxWidthChars = "max-width-chars"
    case mnemonicKeyval = "mnemonic-keyval"
    case mnemonicWidget = "mnemonic-widget"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case pattern = "pattern"
    case receivesDefault = "receives-default"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case selectable = "selectable"
    case selectionBound = "selection-bound"
    case sensitive = "sensitive"
    /// Whether the label is in single line mode. In single line mode,
    /// the height of the label does not depend on the actual text, it
    /// is always set to ascent + descent of the font. This can be an
    /// advantage in situations where resizing the label because of text
    /// changes would be distracting, e.g. in a statusbar.
    case singleLineMode = "single-line-mode"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// Set this property to `true` to make the label track which links
    /// have been visited. It will then apply the `GTK_STATE_FLAG_VISITED`
    /// when rendering this link, in addition to `GTK_STATE_FLAG_LINK`.
    case trackVisitedLinks = "track-visited-links"
    case useMarkup = "use-markup"
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    /// The desired width of the label, in characters. If this property is set to
    /// -1, the width will be calculated automatically.
    /// 
    /// See the section on [text layout](#label-text-layout)
    /// for details of how `GtkLabel:width-chars` and `GtkLabel:max-width-chars`
    /// determine the width of ellipsized and wrapped labels.
    case widthChars = "width-chars"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
    case wrap = "wrap"
    /// If line wrapping is on (see the `GtkLabel:wrap` property) this controls
    /// how the line wrapping is done. The default is `PANGO_WRAP_WORD`, which
    /// means wrap on word boundaries.
    case wrapMode = "wrap-mode"
    /// The xalign property determines the horizontal aligment of the label text
    /// inside the labels size allocation. Compare this to `GtkWidget:halign`,
    /// which determines how the labels size allocation is positioned in the
    /// space available for the label.
    case xalign = "xalign"
    /// The amount of space to add on the left and right of the widget, in
    /// pixels.
    ///
    /// **xpad is deprecated:**
    /// Use gtk_widget_set_margin_start() and
    ///   gtk_widget_set_margin_end() instead
    case xpad = "xpad"
    /// The yalign property determines the vertical aligment of the label text
    /// inside the labels size allocation. Compare this to `GtkWidget:valign`,
    /// which determines how the labels size allocation is positioned in the
    /// space available for the label.
    case yalign = "yalign"
    /// The amount of space to add on the top and bottom of the widget, in
    /// pixels.
    ///
    /// **ypad is deprecated:**
    /// Use gtk_widget_set_margin_top() and
    ///   gtk_widget_set_margin_bottom() instead
    case ypad = "ypad"
}

public extension LabelProtocol {
    /// Bind a `LabelPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LabelPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a Label property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: LabelPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Label property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: LabelPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum LabelSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// A [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user activates a link in the label.
    /// 
    /// Applications may also emit the signal with `g_signal_emit_by_name()`
    /// if they need to control activation of URIs programmatically.
    /// 
    /// The default bindings for this signal are all forms of the Enter key.
    case activateCurrentLink = "activate-current-link"
    /// The signal which gets emitted to activate a URI.
    /// Applications may connect to it to override the default behaviour,
    /// which is to call `gtk_show_uri_on_window()`.
    case activateLink = "activate-link"
    /// The `button-press-event` signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button-release-event` signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    /// The `child-notify` signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The `composited-changed` signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure-event` signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// The `copy-clipboard` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to copy the selection to the clipboard.
    /// 
    /// The default binding for this signal is Ctrl-c.
    case copyClipboard = "copy-clipboard"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete-event` signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy-event` signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction-changed` signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag-begin` signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag-data-delete` signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag-data-get` signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag-data-received` signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag-drop` signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag-drop` signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag-data-received` handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag-end` signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag-begin`.
    case dragEnd = "drag-end"
    /// The `drag-failed` signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag-leave` signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag-motion`, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag-leave` signal is also emitted before the
    /// `drag-drop` signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag-motion` signal handler.
    case dragLeave = "drag-leave"
    /// The `drag-motion` signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag-data-received`
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag-leave` and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter-notify-event` will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key-press-event`) and finally a generic
    /// `GtkWidget::event-after` signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event-after` will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The `focus-in-event` signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus-out-event` signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab-notify` signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy-changed` signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key-press-event` signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key-release-event` signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave-notify-event` will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map-event` will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map-event` signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion-notify-event` signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    /// The `move-cursor` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user initiates a cursor movement.
    /// If the cursor is not visible in `entry`, this signal causes
    /// the viewport to be moved instead.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control the cursor
    /// programmatically.
    /// 
    /// The default bindings for this signal come in two variants,
    /// the variant with the Shift modifier extends the selection,
    /// the variant without the Shift modifer does not.
    /// There are too many key combinations to list them all here.
    /// - Arrow keys move by individual characters/lines
    /// - Ctrl-arrow key combinations move by words/paragraphs
    /// - Home/End keys move to the ends of the buffer
    case moveCursor = "move-cursor"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent-set` signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// The `populate-popup` signal gets emitted before showing the
    /// context menu of the label. Note that only selectable labels
    /// have context menus.
    /// 
    /// If you need to add items to the context menu, connect
    /// to this signal and append your menuitems to the `menu`.
    case populatePopup = "populate-popup"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The `property-notify-event` signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has-tooltip` is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `screen-changed` signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll-event` signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection-clear-event` signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection-request-event` signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The `state-changed` signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state-flags-changed` signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style-set` signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style-updated` signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style-updated` signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap-event` signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility-notify-event` will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The `window-state-event` will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    /// The angle that the baseline of the label makes with the horizontal,
    /// in degrees, measured counterclockwise. An angle of 90 reads from
    /// from bottom to top, an angle of 270, from top to bottom. Ignored
    /// if the label is selectable.
    case notifyAngle = "notify::angle"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyAttributes = "notify::attributes"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyCompositeChild = "notify::composite-child"
    case notifyCursorPosition = "notify::cursor-position"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    /// The preferred place to ellipsize the string, if the label does
    /// not have enough room to display the entire string, specified as a
    /// `PangoEllipsizeMode`.
    /// 
    /// Note that setting this property to a value other than
    /// `PANGO_ELLIPSIZE_NONE` has the side-effect that the label requests
    /// only enough space to display the ellipsis "...". In particular, this
    /// means that ellipsizing labels do not work well in notebook tabs, unless
    /// the `GtkNotebook` tab-expand child property is set to `true`. Other ways
    /// to set a label's width are `gtk_widget_set_size_request()` and
    /// `gtk_label_set_width_chars()`.
    case notifyEllipsize = "notify::ellipsize"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    case notifyJustify = "notify::justify"
    /// The contents of the label.
    /// 
    /// If the string contains [Pango XML markup](#PangoMarkupFormat), you will
    /// have to set the `GtkLabel:use-markup` property to `true` in order for the
    /// label to display the markup attributes. See also `gtk_label_set_markup()`
    /// for a convenience function that sets both this property and the
    /// `GtkLabel:use-markup` property at the same time.
    /// 
    /// If the string contains underlines acting as mnemonics, you will have to
    /// set the `GtkLabel:use-underline` property to `true` in order for the label
    /// to display them.
    case notifyLabel = "notify::label"
    /// The number of lines to which an ellipsized, wrapping label
    /// should be limited. This property has no effect if the
    /// label is not wrapping or ellipsized. Set this property to
    /// -1 if you don't want to limit the number of lines.
    case notifyLines = "notify::lines"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    /// The desired maximum width of the label, in characters. If this property
    /// is set to -1, the width will be calculated automatically.
    /// 
    /// See the section on [text layout](#label-text-layout)
    /// for details of how `GtkLabel:width-chars` and `GtkLabel:max-width-chars`
    /// determine the width of ellipsized and wrapped labels.
    case notifyMaxWidthChars = "notify::max-width-chars"
    case notifyMnemonicKeyval = "notify::mnemonic-keyval"
    case notifyMnemonicWidget = "notify::mnemonic-widget"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyPattern = "notify::pattern"
    case notifyReceivesDefault = "notify::receives-default"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySelectable = "notify::selectable"
    case notifySelectionBound = "notify::selection-bound"
    case notifySensitive = "notify::sensitive"
    /// Whether the label is in single line mode. In single line mode,
    /// the height of the label does not depend on the actual text, it
    /// is always set to ascent + descent of the font. This can be an
    /// advantage in situations where resizing the label because of text
    /// changes would be distracting, e.g. in a statusbar.
    case notifySingleLineMode = "notify::single-line-mode"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// Set this property to `true` to make the label track which links
    /// have been visited. It will then apply the `GTK_STATE_FLAG_VISITED`
    /// when rendering this link, in addition to `GTK_STATE_FLAG_LINK`.
    case notifyTrackVisitedLinks = "notify::track-visited-links"
    case notifyUseMarkup = "notify::use-markup"
    case notifyUseUnderline = "notify::use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    /// The desired width of the label, in characters. If this property is set to
    /// -1, the width will be calculated automatically.
    /// 
    /// See the section on [text layout](#label-text-layout)
    /// for details of how `GtkLabel:width-chars` and `GtkLabel:max-width-chars`
    /// determine the width of ellipsized and wrapped labels.
    case notifyWidthChars = "notify::width-chars"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
    case notifyWrap = "notify::wrap"
    /// If line wrapping is on (see the `GtkLabel:wrap` property) this controls
    /// how the line wrapping is done. The default is `PANGO_WRAP_WORD`, which
    /// means wrap on word boundaries.
    case notifyWrapMode = "notify::wrap-mode"
    /// The xalign property determines the horizontal aligment of the label text
    /// inside the labels size allocation. Compare this to `GtkWidget:halign`,
    /// which determines how the labels size allocation is positioned in the
    /// space available for the label.
    case notifyXalign = "notify::xalign"
    /// The amount of space to add on the left and right of the widget, in
    /// pixels.
    ///
    /// **xpad is deprecated:**
    /// Use gtk_widget_set_margin_start() and
    ///   gtk_widget_set_margin_end() instead
    case notifyXpad = "notify::xpad"
    /// The yalign property determines the vertical aligment of the label text
    /// inside the labels size allocation. Compare this to `GtkWidget:valign`,
    /// which determines how the labels size allocation is positioned in the
    /// space available for the label.
    case notifyYalign = "notify::yalign"
    /// The amount of space to add on the top and bottom of the widget, in
    /// pixels.
    ///
    /// **ypad is deprecated:**
    /// Use gtk_widget_set_margin_top() and
    ///   gtk_widget_set_margin_bottom() instead
    case notifyYpad = "notify::ypad"
}

// MARK: Label signals
public extension LabelProtocol {
    /// Connect a Swift signal handler to the given, typed `LabelSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: LabelSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `LabelSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: LabelSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// A [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user activates a link in the label.
    /// 
    /// Applications may also emit the signal with `g_signal_emit_by_name()`
    /// if they need to control activation of URIs programmatically.
    /// 
    /// The default bindings for this signal are all forms of the Enter key.
    /// - Note: This represents the underlying `activate-current-link` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `activateCurrentLink` signal is emitted
    @discardableResult @inlinable func onActivateCurrentLink(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<LabelRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .activateCurrentLink,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate-current-link` signal for using the `connect(signal:)` methods
    static var activateCurrentLinkSignal: LabelSignalName { .activateCurrentLink }
    
    /// The signal which gets emitted to activate a URI.
    /// Applications may connect to it to override the default behaviour,
    /// which is to call `gtk_show_uri_on_window()`.
    /// - Note: This represents the underlying `activate-link` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter uri: the URI that is activated
    /// - Parameter handler: `true` if the link has been activated
    /// Run the given callback whenever the `activateLink` signal is emitted
    @discardableResult @inlinable func onActivateLink(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ uri: String) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, String, Bool>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(LabelRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .activateLink,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate-link` signal for using the `connect(signal:)` methods
    static var activateLinkSignal: LabelSignalName { .activateLink }
    
    /// The `copy-clipboard` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to copy the selection to the clipboard.
    /// 
    /// The default binding for this signal is Ctrl-c.
    /// - Note: This represents the underlying `copy-clipboard` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `copyClipboard` signal is emitted
    @discardableResult @inlinable func onCopyClipboard(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<LabelRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .copyClipboard,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `copy-clipboard` signal for using the `connect(signal:)` methods
    static var copyClipboardSignal: LabelSignalName { .copyClipboard }
    
    /// The `move-cursor` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user initiates a cursor movement.
    /// If the cursor is not visible in `entry`, this signal causes
    /// the viewport to be moved instead.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control the cursor
    /// programmatically.
    /// 
    /// The default bindings for this signal come in two variants,
    /// the variant with the Shift modifier extends the selection,
    /// the variant without the Shift modifer does not.
    /// There are too many key combinations to list them all here.
    /// - Arrow keys move by individual characters/lines
    /// - Ctrl-arrow key combinations move by words/paragraphs
    /// - Home/End keys move to the ends of the buffer
    /// - Note: This represents the underlying `move-cursor` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter step: the granularity of the move, as a `GtkMovementStep`
    /// - Parameter count: the number of `step` units to move
    /// - Parameter extendSelection: `true` if the move should extend the selection
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `moveCursor` signal is emitted
    @discardableResult @inlinable func onMoveCursor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ step: MovementStep, _ count: Int, _ extendSelection: Bool) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<LabelRef, MovementStep, Int, Bool, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gint, gboolean, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), MovementStep(arg1), Int(arg2), ((arg3) != 0))
            return output
        }
        return connect(
            signal: .moveCursor,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `move-cursor` signal for using the `connect(signal:)` methods
    static var moveCursorSignal: LabelSignalName { .moveCursor }
    
    /// The `populate-popup` signal gets emitted before showing the
    /// context menu of the label. Note that only selectable labels
    /// have context menus.
    /// 
    /// If you need to add items to the context menu, connect
    /// to this signal and append your menuitems to the `menu`.
    /// - Note: This represents the underlying `populate-popup` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter menu: the menu that is being populated
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `populatePopup` signal is emitted
    @discardableResult @inlinable func onPopulatePopup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ menu: MenuRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, MenuRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), MenuRef(raw: arg1))
            return output
        }
        return connect(
            signal: .populatePopup,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `populate-popup` signal for using the `connect(signal:)` methods
    static var populatePopupSignal: LabelSignalName { .populatePopup }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::angle` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyAngle` signal is emitted
    @discardableResult @inlinable func onNotifyAngle(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyAngle,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::angle` signal for using the `connect(signal:)` methods
    static var notifyAngleSignal: LabelSignalName { .notifyAngle }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::attributes` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyAttributes` signal is emitted
    @discardableResult @inlinable func onNotifyAttributes(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyAttributes,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::attributes` signal for using the `connect(signal:)` methods
    static var notifyAttributesSignal: LabelSignalName { .notifyAttributes }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::cursor-position` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyCursorPosition` signal is emitted
    @discardableResult @inlinable func onNotifyCursorPosition(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyCursorPosition,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::cursor-position` signal for using the `connect(signal:)` methods
    static var notifyCursorPositionSignal: LabelSignalName { .notifyCursorPosition }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::ellipsize` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyEllipsize` signal is emitted
    @discardableResult @inlinable func onNotifyEllipsize(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyEllipsize,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::ellipsize` signal for using the `connect(signal:)` methods
    static var notifyEllipsizeSignal: LabelSignalName { .notifyEllipsize }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::justify` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyJustify` signal is emitted
    @discardableResult @inlinable func onNotifyJustify(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyJustify,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::justify` signal for using the `connect(signal:)` methods
    static var notifyJustifySignal: LabelSignalName { .notifyJustify }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::label` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyLabel` signal is emitted
    @discardableResult @inlinable func onNotifyLabel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyLabel,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::label` signal for using the `connect(signal:)` methods
    static var notifyLabelSignal: LabelSignalName { .notifyLabel }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::lines` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyLines` signal is emitted
    @discardableResult @inlinable func onNotifyLines(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyLines,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::lines` signal for using the `connect(signal:)` methods
    static var notifyLinesSignal: LabelSignalName { .notifyLines }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::max-width-chars` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMaxWidthChars` signal is emitted
    @discardableResult @inlinable func onNotifyMaxWidthChars(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMaxWidthChars,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::max-width-chars` signal for using the `connect(signal:)` methods
    static var notifyMaxWidthCharsSignal: LabelSignalName { .notifyMaxWidthChars }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::mnemonic-keyval` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMnemonicKeyval` signal is emitted
    @discardableResult @inlinable func onNotifyMnemonicKeyval(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMnemonicKeyval,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::mnemonic-keyval` signal for using the `connect(signal:)` methods
    static var notifyMnemonicKeyvalSignal: LabelSignalName { .notifyMnemonicKeyval }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::mnemonic-widget` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMnemonicWidget` signal is emitted
    @discardableResult @inlinable func onNotifyMnemonicWidget(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMnemonicWidget,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::mnemonic-widget` signal for using the `connect(signal:)` methods
    static var notifyMnemonicWidgetSignal: LabelSignalName { .notifyMnemonicWidget }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::pattern` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPattern` signal is emitted
    @discardableResult @inlinable func onNotifyPattern(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPattern,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::pattern` signal for using the `connect(signal:)` methods
    static var notifyPatternSignal: LabelSignalName { .notifyPattern }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::selectable` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySelectable` signal is emitted
    @discardableResult @inlinable func onNotifySelectable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySelectable,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::selectable` signal for using the `connect(signal:)` methods
    static var notifySelectableSignal: LabelSignalName { .notifySelectable }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::selection-bound` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySelectionBound` signal is emitted
    @discardableResult @inlinable func onNotifySelectionBound(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySelectionBound,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::selection-bound` signal for using the `connect(signal:)` methods
    static var notifySelectionBoundSignal: LabelSignalName { .notifySelectionBound }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::single-line-mode` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySingleLineMode` signal is emitted
    @discardableResult @inlinable func onNotifySingleLineMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySingleLineMode,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::single-line-mode` signal for using the `connect(signal:)` methods
    static var notifySingleLineModeSignal: LabelSignalName { .notifySingleLineMode }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::track-visited-links` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTrackVisitedLinks` signal is emitted
    @discardableResult @inlinable func onNotifyTrackVisitedLinks(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTrackVisitedLinks,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::track-visited-links` signal for using the `connect(signal:)` methods
    static var notifyTrackVisitedLinksSignal: LabelSignalName { .notifyTrackVisitedLinks }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::use-markup` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyUseMarkup` signal is emitted
    @discardableResult @inlinable func onNotifyUseMarkup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyUseMarkup,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::use-markup` signal for using the `connect(signal:)` methods
    static var notifyUseMarkupSignal: LabelSignalName { .notifyUseMarkup }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::use-underline` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyUseUnderline` signal is emitted
    @discardableResult @inlinable func onNotifyUseUnderline(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyUseUnderline,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::use-underline` signal for using the `connect(signal:)` methods
    static var notifyUseUnderlineSignal: LabelSignalName { .notifyUseUnderline }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::width-chars` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyWidthChars` signal is emitted
    @discardableResult @inlinable func onNotifyWidthChars(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyWidthChars,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::width-chars` signal for using the `connect(signal:)` methods
    static var notifyWidthCharsSignal: LabelSignalName { .notifyWidthChars }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::wrap` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyWrap` signal is emitted
    @discardableResult @inlinable func onNotifyWrap(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyWrap,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::wrap` signal for using the `connect(signal:)` methods
    static var notifyWrapSignal: LabelSignalName { .notifyWrap }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::wrap-mode` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyWrapMode` signal is emitted
    @discardableResult @inlinable func onNotifyWrapMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyWrapMode,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::wrap-mode` signal for using the `connect(signal:)` methods
    static var notifyWrapModeSignal: LabelSignalName { .notifyWrapMode }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::xalign` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyXalign` signal is emitted
    @discardableResult @inlinable func onNotifyXalign(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyXalign,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::xalign` signal for using the `connect(signal:)` methods
    static var notifyXalignSignal: LabelSignalName { .notifyXalign }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::yalign` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyYalign` signal is emitted
    @discardableResult @inlinable func onNotifyYalign(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyYalign,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::yalign` signal for using the `connect(signal:)` methods
    static var notifyYalignSignal: LabelSignalName { .notifyYalign }
    
}

// MARK: Label Class: LabelProtocol extension (methods and fields)
public extension LabelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLabel` instance.
    @inlinable var label_ptr: UnsafeMutablePointer<GtkLabel>! { return ptr?.assumingMemoryBound(to: GtkLabel.self) }

    /// Gets the angle of rotation for the label. See
    /// `gtk_label_set_angle()`.
    @inlinable func getAngle() -> Double {
        let rv = Double(gtk_label_get_angle(label_ptr))
        return rv
    }

    /// Gets the attribute list that was set on the label using
    /// `gtk_label_set_attributes()`, if any. This function does
    /// not reflect attributes that come from the labels markup
    /// (see `gtk_label_set_markup()`). If you want to get the
    /// effective attributes for the label, use
    /// pango_layout_get_attribute (gtk_label_get_layout (label)).
    @inlinable func getAttributes() -> Pango.AttrListRef! {
        let rv = Pango.AttrListRef(gtk_label_get_attributes(label_ptr))
        return rv
    }

    /// Returns the URI for the currently active link in the label.
    /// The active link is the one under the mouse pointer or, in a
    /// selectable label, the link in which the text cursor is currently
    /// positioned.
    /// 
    /// This function is intended for use in a `GtkLabel::activate-link` handler
    /// or for use in a `GtkWidget::query-tooltip` handler.
    @inlinable func getCurrentURI() -> String! {
        let rv = gtk_label_get_current_uri(label_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the ellipsizing position of the label. See `gtk_label_set_ellipsize()`.
    @inlinable func getEllipsize() -> PangoEllipsizeMode {
        let rv = gtk_label_get_ellipsize(label_ptr)
        return rv
    }

    /// Returns the justification of the label. See `gtk_label_set_justify()`.
    @inlinable func getJustify() -> GtkJustification {
        let rv = gtk_label_get_justify(label_ptr)
        return rv
    }

    /// Fetches the text from a label widget including any embedded
    /// underlines indicating mnemonics and Pango markup. (See
    /// `gtk_label_get_text()`).
    @inlinable func getLabel() -> String! {
        let rv = gtk_label_get_label(label_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the `PangoLayout` used to display the label.
    /// The layout is useful to e.g. convert text positions to
    /// pixel positions, in combination with `gtk_label_get_layout_offsets()`.
    /// The returned layout is owned by the `label` so need not be
    /// freed by the caller. The `label` is free to recreate its layout at
    /// any time, so it should be considered read-only.
    @inlinable func getLayout() -> Pango.LayoutRef! {
        let rv = Pango.LayoutRef(gtk_label_get_layout(label_ptr))
        return rv
    }

    /// Obtains the coordinates where the label will draw the `PangoLayout`
    /// representing the text in the label; useful to convert mouse events
    /// into coordinates inside the `PangoLayout`, e.g. to take some action
    /// if some part of the label is clicked. Of course you will need to
    /// create a `GtkEventBox` to receive the events, and pack the label
    /// inside it, since labels are windowless (they return `false` from
    /// `gtk_widget_get_has_window()`). Remember
    /// when using the `PangoLayout` functions you need to convert to
    /// and from pixels using `PANGO_PIXELS()` or `PANGO_SCALE`.
    @inlinable func getLayoutOffsets(x: UnsafeMutablePointer<gint>! = nil, y: UnsafeMutablePointer<gint>! = nil) {
        gtk_label_get_layout_offsets(label_ptr, x, y)
    
    }

    /// Returns whether lines in the label are automatically wrapped.
    /// See `gtk_label_set_line_wrap()`.
    @inlinable func getLineWrap() -> Bool {
        let rv = ((gtk_label_get_line_wrap(label_ptr)) != 0)
        return rv
    }

    /// Returns line wrap mode used by the label. See `gtk_label_set_line_wrap_mode()`.
    @inlinable func getLineWrapMode() -> PangoWrapMode {
        let rv = gtk_label_get_line_wrap_mode(label_ptr)
        return rv
    }

    /// Gets the number of lines to which an ellipsized, wrapping
    /// label should be limited. See `gtk_label_set_lines()`.
    @inlinable func getLines() -> Int {
        let rv = Int(gtk_label_get_lines(label_ptr))
        return rv
    }

    /// Retrieves the desired maximum width of `label`, in characters. See
    /// `gtk_label_set_width_chars()`.
    @inlinable func getMaxWidthChars() -> Int {
        let rv = Int(gtk_label_get_max_width_chars(label_ptr))
        return rv
    }

    /// If the label has been set so that it has an mnemonic key this function
    /// returns the keyval used for the mnemonic accelerator. If there is no
    /// mnemonic set up it returns `GDK_KEY_VoidSymbol`.
    @inlinable func getMnemonicKeyval() -> Int {
        let rv = Int(gtk_label_get_mnemonic_keyval(label_ptr))
        return rv
    }

    /// Retrieves the target of the mnemonic (keyboard shortcut) of this
    /// label. See `gtk_label_set_mnemonic_widget()`.
    @inlinable func getMnemonicWidget() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_label_get_mnemonic_widget(label_ptr))) else { return nil }
        return rv
    }

    /// Gets the value set by `gtk_label_set_selectable()`.
    @inlinable func getSelectable() -> Bool {
        let rv = ((gtk_label_get_selectable(label_ptr)) != 0)
        return rv
    }

    /// Gets the selected range of characters in the label, returning `true`
    /// if there’s a selection.
    @inlinable func getSelectionBounds(start: UnsafeMutablePointer<gint>!, end: UnsafeMutablePointer<gint>!) -> Bool {
        let rv = ((gtk_label_get_selection_bounds(label_ptr, start, end)) != 0)
        return rv
    }

    /// Returns whether the label is in single line mode.
    @inlinable func getSingleLineMode() -> Bool {
        let rv = ((gtk_label_get_single_line_mode(label_ptr)) != 0)
        return rv
    }

    /// Fetches the text from a label widget, as displayed on the
    /// screen. This does not include any embedded underlines
    /// indicating mnemonics or Pango markup. (See `gtk_label_get_label()`)
    @inlinable func getText() -> String! {
        let rv = gtk_label_get_text(label_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns whether the label is currently keeping track
    /// of clicked links.
    @inlinable func getTrackVisitedLinks() -> Bool {
        let rv = ((gtk_label_get_track_visited_links(label_ptr)) != 0)
        return rv
    }

    /// Returns whether the label’s text is interpreted as marked up with
    /// the [Pango text markup language](#PangoMarkupFormat).
    /// See gtk_label_set_use_markup ().
    @inlinable func getUseMarkup() -> Bool {
        let rv = ((gtk_label_get_use_markup(label_ptr)) != 0)
        return rv
    }

    /// Returns whether an embedded underline in the label indicates a
    /// mnemonic. See `gtk_label_set_use_underline()`.
    @inlinable func getUseUnderline() -> Bool {
        let rv = ((gtk_label_get_use_underline(label_ptr)) != 0)
        return rv
    }

    /// Retrieves the desired width of `label`, in characters. See
    /// `gtk_label_set_width_chars()`.
    @inlinable func getWidthChars() -> Int {
        let rv = Int(gtk_label_get_width_chars(label_ptr))
        return rv
    }

    /// Gets the `GtkLabel:xalign` property for `label`.
    @inlinable func getXalign() -> Double {
        let rv = Double(gtk_label_get_xalign(label_ptr))
        return rv
    }

    /// Gets the `GtkLabel:yalign` property for `label`.
    @inlinable func getYalign() -> Double {
        let rv = Double(gtk_label_get_yalign(label_ptr))
        return rv
    }

    /// Selects a range of characters in the label, if the label is selectable.
    /// See `gtk_label_set_selectable()`. If the label is not selectable,
    /// this function has no effect. If `start_offset` or
    /// `end_offset` are -1, then the end of the label will be substituted.
    @inlinable func selectRegion(startOffset: Int, endOffset: Int) {
        gtk_label_select_region(label_ptr, gint(startOffset), gint(endOffset))
    
    }

    /// Sets the angle of rotation for the label. An angle of 90 reads from
    /// from bottom to top, an angle of 270, from top to bottom. The angle
    /// setting for the label is ignored if the label is selectable,
    /// wrapped, or ellipsized.
    @inlinable func set(angle: Double) {
        gtk_label_set_angle(label_ptr, gdouble(angle))
    
    }

    /// Sets a `PangoAttrList`; the attributes in the list are applied to the
    /// label text.
    /// 
    /// The attributes set with this function will be applied
    /// and merged with any other attributes previously effected by way
    /// of the `GtkLabel:use-underline` or `GtkLabel:use-markup` properties.
    /// While it is not recommended to mix markup strings with manually set
    /// attributes, if you must; know that the attributes will be applied
    /// to the label after the markup string is parsed.
    @inlinable func setAttributes(attrs: Pango.AttrListRef? = nil) {
        gtk_label_set_attributes(label_ptr, attrs?.attr_list_ptr)
    
    }
    /// Sets a `PangoAttrList`; the attributes in the list are applied to the
    /// label text.
    /// 
    /// The attributes set with this function will be applied
    /// and merged with any other attributes previously effected by way
    /// of the `GtkLabel:use-underline` or `GtkLabel:use-markup` properties.
    /// While it is not recommended to mix markup strings with manually set
    /// attributes, if you must; know that the attributes will be applied
    /// to the label after the markup string is parsed.
    @inlinable func setAttributes<AttrListT: Pango.AttrListProtocol>(attrs: AttrListT?) {
        gtk_label_set_attributes(label_ptr, attrs?.attr_list_ptr)
    
    }

    /// Sets the mode used to ellipsize (add an ellipsis: "...") to the text
    /// if there is not enough space to render the entire string.
    @inlinable func setEllipsize(mode: PangoEllipsizeMode) {
        gtk_label_set_ellipsize(label_ptr, mode)
    
    }

    /// Sets the alignment of the lines in the text of the label relative to
    /// each other. `GTK_JUSTIFY_LEFT` is the default value when the widget is
    /// first created with `gtk_label_new()`. If you instead want to set the
    /// alignment of the label as a whole, use `gtk_widget_set_halign()` instead.
    /// `gtk_label_set_justify()` has no effect on labels containing only a
    /// single line.
    @inlinable func setJustify(jtype: GtkJustification) {
        gtk_label_set_justify(label_ptr, jtype)
    
    }

    /// Sets the text of the label. The label is interpreted as
    /// including embedded underlines and/or Pango markup depending
    /// on the values of the `GtkLabel:use-underline` and
    /// `GtkLabel:use-markup` properties.
    @inlinable func set(label str: UnsafePointer<gchar>!) {
        gtk_label_set_label(label_ptr, str)
    
    }

    /// Toggles line wrapping within the `GtkLabel` widget. `true` makes it break
    /// lines if text exceeds the widget’s size. `false` lets the text get cut off
    /// by the edge of the widget if it exceeds the widget size.
    /// 
    /// Note that setting line wrapping to `true` does not make the label
    /// wrap at its parent container’s width, because GTK+ widgets
    /// conceptually can’t make their requisition depend on the parent
    /// container’s size. For a label that wraps at a specific position,
    /// set the label’s width using `gtk_widget_set_size_request()`.
    @inlinable func setLine(wrap: Bool) {
        gtk_label_set_line_wrap(label_ptr, gboolean((wrap) ? 1 : 0))
    
    }

    /// If line wrapping is on (see `gtk_label_set_line_wrap()`) this controls how
    /// the line wrapping is done. The default is `PANGO_WRAP_WORD` which means
    /// wrap on word boundaries.
    @inlinable func setLine(wrapMode: PangoWrapMode) {
        gtk_label_set_line_wrap_mode(label_ptr, wrapMode)
    
    }

    /// Sets the number of lines to which an ellipsized, wrapping label
    /// should be limited. This has no effect if the label is not wrapping
    /// or ellipsized. Set this to -1 if you don’t want to limit the
    /// number of lines.
    @inlinable func set(lines: Int) {
        gtk_label_set_lines(label_ptr, gint(lines))
    
    }

    /// Parses `str` which is marked up with the
    /// [Pango text markup language](#PangoMarkupFormat), setting the
    /// label’s text and attribute list based on the parse results.
    /// 
    /// If the `str` is external data, you may need to escape it with
    /// `g_markup_escape_text()` or `g_markup_printf_escaped()`:
    /// 
    /// (C Language Example):
    /// ```C
    /// GtkWidget *label = gtk_label_new (NULL);
    /// const char *str = "some text";
    /// const char *format = "<span style=\"italic\">\%s</span>";
    /// char *markup;
    /// 
    /// markup = g_markup_printf_escaped (format, str);
    /// gtk_label_set_markup (GTK_LABEL (label), markup);
    /// g_free (markup);
    /// ```
    /// 
    /// This function will set the `GtkLabel:use-markup` property to `true` as
    /// a side effect.
    /// 
    /// If you set the label contents using the `GtkLabel:label` property you
    /// should also ensure that you set the `GtkLabel:use-markup` property
    /// accordingly.
    /// 
    /// See also: `gtk_label_set_text()`
    @inlinable func set(markup str: UnsafePointer<gchar>!) {
        gtk_label_set_markup(label_ptr, str)
    
    }

    /// Parses `str` which is marked up with the
    /// [Pango text markup language](#PangoMarkupFormat),
    /// setting the label’s text and attribute list based on the parse results.
    /// If characters in `str` are preceded by an underscore, they are underlined
    /// indicating that they represent a keyboard accelerator called a mnemonic.
    /// 
    /// The mnemonic key can be used to activate another widget, chosen
    /// automatically, or explicitly using `gtk_label_set_mnemonic_widget()`.
    @inlinable func setMarkupWith(mnemonic str: UnsafePointer<gchar>!) {
        gtk_label_set_markup_with_mnemonic(label_ptr, str)
    
    }

    /// Sets the desired maximum width in characters of `label` to `n_chars`.
    @inlinable func setMaxWidthChars(nChars: Int) {
        gtk_label_set_max_width_chars(label_ptr, gint(nChars))
    
    }

    /// If the label has been set so that it has an mnemonic key (using
    /// i.e. `gtk_label_set_markup_with_mnemonic()`,
    /// `gtk_label_set_text_with_mnemonic()`, `gtk_label_new_with_mnemonic()`
    /// or the “use_underline” property) the label can be associated with a
    /// widget that is the target of the mnemonic. When the label is inside
    /// a widget (like a `GtkButton` or a `GtkNotebook` tab) it is
    /// automatically associated with the correct widget, but sometimes
    /// (i.e. when the target is a `GtkEntry` next to the label) you need to
    /// set it explicitly using this function.
    /// 
    /// The target widget will be accelerated by emitting the
    /// GtkWidget`mnemonic-activate` signal on it. The default handler for
    /// this signal will activate the widget if there are no mnemonic collisions
    /// and toggle focus between the colliding widgets otherwise.
    @inlinable func setMnemonic(widget: WidgetRef? = nil) {
        gtk_label_set_mnemonic_widget(label_ptr, widget?.widget_ptr)
    
    }
    /// If the label has been set so that it has an mnemonic key (using
    /// i.e. `gtk_label_set_markup_with_mnemonic()`,
    /// `gtk_label_set_text_with_mnemonic()`, `gtk_label_new_with_mnemonic()`
    /// or the “use_underline” property) the label can be associated with a
    /// widget that is the target of the mnemonic. When the label is inside
    /// a widget (like a `GtkButton` or a `GtkNotebook` tab) it is
    /// automatically associated with the correct widget, but sometimes
    /// (i.e. when the target is a `GtkEntry` next to the label) you need to
    /// set it explicitly using this function.
    /// 
    /// The target widget will be accelerated by emitting the
    /// GtkWidget`mnemonic-activate` signal on it. The default handler for
    /// this signal will activate the widget if there are no mnemonic collisions
    /// and toggle focus between the colliding widgets otherwise.
    @inlinable func setMnemonic<WidgetT: WidgetProtocol>(widget: WidgetT?) {
        gtk_label_set_mnemonic_widget(label_ptr, widget?.widget_ptr)
    
    }

    /// The pattern of underlines you want under the existing text within the
    /// `GtkLabel` widget.  For example if the current text of the label says
    /// “FooBarBaz” passing a pattern of “___   ___” will underline
    /// “Foo” and “Baz” but not “Bar”.
    @inlinable func set(pattern: UnsafePointer<gchar>!) {
        gtk_label_set_pattern(label_ptr, pattern)
    
    }

    /// Selectable labels allow the user to select text from the label, for
    /// copy-and-paste.
    @inlinable func set(selectable setting: Bool) {
        gtk_label_set_selectable(label_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets whether the label is in single line mode.
    @inlinable func set(singleLineMode: Bool) {
        gtk_label_set_single_line_mode(label_ptr, gboolean((singleLineMode) ? 1 : 0))
    
    }

    /// Sets the text within the `GtkLabel` widget. It overwrites any text that
    /// was there before.
    /// 
    /// This function will clear any previously set mnemonic accelerators, and
    /// set the `GtkLabel:use-underline` property to `false` as a side effect.
    /// 
    /// This function will set the `GtkLabel:use-markup` property to `false`
    /// as a side effect.
    /// 
    /// See also: `gtk_label_set_markup()`
    @inlinable func set(text str: UnsafePointer<gchar>!) {
        gtk_label_set_text(label_ptr, str)
    
    }

    /// Sets the label’s text from the string `str`.
    /// If characters in `str` are preceded by an underscore, they are underlined
    /// indicating that they represent a keyboard accelerator called a mnemonic.
    /// The mnemonic key can be used to activate another widget, chosen
    /// automatically, or explicitly using `gtk_label_set_mnemonic_widget()`.
    @inlinable func setTextWith(mnemonic str: UnsafePointer<gchar>!) {
        gtk_label_set_text_with_mnemonic(label_ptr, str)
    
    }

    /// Sets whether the label should keep track of clicked
    /// links (and use a different color for them).
    @inlinable func setTrackVisitedLinks(trackLinks: Bool) {
        gtk_label_set_track_visited_links(label_ptr, gboolean((trackLinks) ? 1 : 0))
    
    }

    /// Sets whether the text of the label contains markup in
    /// [Pango’s text markup language](#PangoMarkupFormat).
    /// See `gtk_label_set_markup()`.
    @inlinable func set(useMarkup setting: Bool) {
        gtk_label_set_use_markup(label_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// If true, an underline in the text indicates the next character should be
    /// used for the mnemonic accelerator key.
    @inlinable func set(useUnderline setting: Bool) {
        gtk_label_set_use_underline(label_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the desired width in characters of `label` to `n_chars`.
    @inlinable func setWidthChars(nChars: Int) {
        gtk_label_set_width_chars(label_ptr, gint(nChars))
    
    }

    /// Sets the `GtkLabel:xalign` property for `label`.
    @inlinable func set(xalign: Double) {
        gtk_label_set_xalign(label_ptr, gfloat(xalign))
    
    }

    /// Sets the `GtkLabel:yalign` property for `label`.
    @inlinable func set(yalign: Double) {
        gtk_label_set_yalign(label_ptr, gfloat(yalign))
    
    }
    /// The angle that the baseline of the label makes with the horizontal,
    /// in degrees, measured counterclockwise. An angle of 90 reads from
    /// from bottom to top, an angle of 270, from top to bottom. Ignored
    /// if the label is selectable.
    @inlinable var angle: Double {
        /// Gets the angle of rotation for the label. See
        /// `gtk_label_set_angle()`.
        get {
            let rv = Double(gtk_label_get_angle(label_ptr))
            return rv
        }
        /// Sets the angle of rotation for the label. An angle of 90 reads from
        /// from bottom to top, an angle of 270, from top to bottom. The angle
        /// setting for the label is ignored if the label is selectable,
        /// wrapped, or ellipsized.
        nonmutating set {
            gtk_label_set_angle(label_ptr, gdouble(newValue))
        }
    }

    @inlinable var attributes: Pango.AttrListRef! {
        /// Gets the attribute list that was set on the label using
        /// `gtk_label_set_attributes()`, if any. This function does
        /// not reflect attributes that come from the labels markup
        /// (see `gtk_label_set_markup()`). If you want to get the
        /// effective attributes for the label, use
        /// pango_layout_get_attribute (gtk_label_get_layout (label)).
        get {
            let rv = Pango.AttrListRef(gtk_label_get_attributes(label_ptr))
            return rv
        }
        /// Sets a `PangoAttrList`; the attributes in the list are applied to the
        /// label text.
        /// 
        /// The attributes set with this function will be applied
        /// and merged with any other attributes previously effected by way
        /// of the `GtkLabel:use-underline` or `GtkLabel:use-markup` properties.
        /// While it is not recommended to mix markup strings with manually set
        /// attributes, if you must; know that the attributes will be applied
        /// to the label after the markup string is parsed.
        nonmutating set {
            gtk_label_set_attributes(label_ptr, UnsafeMutablePointer<PangoAttrList>(newValue?.attr_list_ptr))
        }
    }

    /// Returns the URI for the currently active link in the label.
    /// The active link is the one under the mouse pointer or, in a
    /// selectable label, the link in which the text cursor is currently
    /// positioned.
    /// 
    /// This function is intended for use in a `GtkLabel::activate-link` handler
    /// or for use in a `GtkWidget::query-tooltip` handler.
    @inlinable var currentURI: String! {
        /// Returns the URI for the currently active link in the label.
        /// The active link is the one under the mouse pointer or, in a
        /// selectable label, the link in which the text cursor is currently
        /// positioned.
        /// 
        /// This function is intended for use in a `GtkLabel::activate-link` handler
        /// or for use in a `GtkWidget::query-tooltip` handler.
        get {
            let rv = gtk_label_get_current_uri(label_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// The preferred place to ellipsize the string, if the label does
    /// not have enough room to display the entire string, specified as a
    /// `PangoEllipsizeMode`.
    /// 
    /// Note that setting this property to a value other than
    /// `PANGO_ELLIPSIZE_NONE` has the side-effect that the label requests
    /// only enough space to display the ellipsis "...". In particular, this
    /// means that ellipsizing labels do not work well in notebook tabs, unless
    /// the `GtkNotebook` tab-expand child property is set to `true`. Other ways
    /// to set a label's width are `gtk_widget_set_size_request()` and
    /// `gtk_label_set_width_chars()`.
    @inlinable var ellipsize: PangoEllipsizeMode {
        /// Returns the ellipsizing position of the label. See `gtk_label_set_ellipsize()`.
        get {
            let rv = gtk_label_get_ellipsize(label_ptr)
            return rv
        }
        /// Sets the mode used to ellipsize (add an ellipsis: "...") to the text
        /// if there is not enough space to render the entire string.
        nonmutating set {
            gtk_label_set_ellipsize(label_ptr, newValue)
        }
    }

    @inlinable var justify: GtkJustification {
        /// Returns the justification of the label. See `gtk_label_set_justify()`.
        get {
            let rv = gtk_label_get_justify(label_ptr)
            return rv
        }
        /// Sets the alignment of the lines in the text of the label relative to
        /// each other. `GTK_JUSTIFY_LEFT` is the default value when the widget is
        /// first created with `gtk_label_new()`. If you instead want to set the
        /// alignment of the label as a whole, use `gtk_widget_set_halign()` instead.
        /// `gtk_label_set_justify()` has no effect on labels containing only a
        /// single line.
        nonmutating set {
            gtk_label_set_justify(label_ptr, newValue)
        }
    }

    /// The contents of the label.
    /// 
    /// If the string contains [Pango XML markup](#PangoMarkupFormat), you will
    /// have to set the `GtkLabel:use-markup` property to `true` in order for the
    /// label to display the markup attributes. See also `gtk_label_set_markup()`
    /// for a convenience function that sets both this property and the
    /// `GtkLabel:use-markup` property at the same time.
    /// 
    /// If the string contains underlines acting as mnemonics, you will have to
    /// set the `GtkLabel:use-underline` property to `true` in order for the label
    /// to display them.
    @inlinable var label: String! {
        /// Fetches the text from a label widget including any embedded
        /// underlines indicating mnemonics and Pango markup. (See
        /// `gtk_label_get_text()`).
        get {
            let rv = gtk_label_get_label(label_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the text of the label. The label is interpreted as
        /// including embedded underlines and/or Pango markup depending
        /// on the values of the `GtkLabel:use-underline` and
        /// `GtkLabel:use-markup` properties.
        nonmutating set {
            gtk_label_set_label(label_ptr, newValue)
        }
    }

    /// Gets the `PangoLayout` used to display the label.
    /// The layout is useful to e.g. convert text positions to
    /// pixel positions, in combination with `gtk_label_get_layout_offsets()`.
    /// The returned layout is owned by the `label` so need not be
    /// freed by the caller. The `label` is free to recreate its layout at
    /// any time, so it should be considered read-only.
    @inlinable var layout: Pango.LayoutRef! {
        /// Gets the `PangoLayout` used to display the label.
        /// The layout is useful to e.g. convert text positions to
        /// pixel positions, in combination with `gtk_label_get_layout_offsets()`.
        /// The returned layout is owned by the `label` so need not be
        /// freed by the caller. The `label` is free to recreate its layout at
        /// any time, so it should be considered read-only.
        get {
            let rv = Pango.LayoutRef(gtk_label_get_layout(label_ptr))
            return rv
        }
    }

    /// Returns whether lines in the label are automatically wrapped.
    /// See `gtk_label_set_line_wrap()`.
    @inlinable var lineWrap: Bool {
        /// Returns whether lines in the label are automatically wrapped.
        /// See `gtk_label_set_line_wrap()`.
        get {
            let rv = ((gtk_label_get_line_wrap(label_ptr)) != 0)
            return rv
        }
        /// Toggles line wrapping within the `GtkLabel` widget. `true` makes it break
        /// lines if text exceeds the widget’s size. `false` lets the text get cut off
        /// by the edge of the widget if it exceeds the widget size.
        /// 
        /// Note that setting line wrapping to `true` does not make the label
        /// wrap at its parent container’s width, because GTK+ widgets
        /// conceptually can’t make their requisition depend on the parent
        /// container’s size. For a label that wraps at a specific position,
        /// set the label’s width using `gtk_widget_set_size_request()`.
        nonmutating set {
            gtk_label_set_line_wrap(label_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns line wrap mode used by the label. See `gtk_label_set_line_wrap_mode()`.
    @inlinable var lineWrapMode: PangoWrapMode {
        /// Returns line wrap mode used by the label. See `gtk_label_set_line_wrap_mode()`.
        get {
            let rv = gtk_label_get_line_wrap_mode(label_ptr)
            return rv
        }
        /// If line wrapping is on (see `gtk_label_set_line_wrap()`) this controls how
        /// the line wrapping is done. The default is `PANGO_WRAP_WORD` which means
        /// wrap on word boundaries.
        nonmutating set {
            gtk_label_set_line_wrap_mode(label_ptr, newValue)
        }
    }

    /// The number of lines to which an ellipsized, wrapping label
    /// should be limited. This property has no effect if the
    /// label is not wrapping or ellipsized. Set this property to
    /// -1 if you don't want to limit the number of lines.
    @inlinable var lines: Int {
        /// Gets the number of lines to which an ellipsized, wrapping
        /// label should be limited. See `gtk_label_set_lines()`.
        get {
            let rv = Int(gtk_label_get_lines(label_ptr))
            return rv
        }
        /// Sets the number of lines to which an ellipsized, wrapping label
        /// should be limited. This has no effect if the label is not wrapping
        /// or ellipsized. Set this to -1 if you don’t want to limit the
        /// number of lines.
        nonmutating set {
            gtk_label_set_lines(label_ptr, gint(newValue))
        }
    }

    /// Retrieves the desired maximum width of `label`, in characters. See
    /// `gtk_label_set_width_chars()`.
    @inlinable var maxWidthChars: Int {
        /// Retrieves the desired maximum width of `label`, in characters. See
        /// `gtk_label_set_width_chars()`.
        get {
            let rv = Int(gtk_label_get_max_width_chars(label_ptr))
            return rv
        }
        /// Sets the desired maximum width in characters of `label` to `n_chars`.
        nonmutating set {
            gtk_label_set_max_width_chars(label_ptr, gint(newValue))
        }
    }

    /// If the label has been set so that it has an mnemonic key this function
    /// returns the keyval used for the mnemonic accelerator. If there is no
    /// mnemonic set up it returns `GDK_KEY_VoidSymbol`.
    @inlinable var mnemonicKeyval: Int {
        /// If the label has been set so that it has an mnemonic key this function
        /// returns the keyval used for the mnemonic accelerator. If there is no
        /// mnemonic set up it returns `GDK_KEY_VoidSymbol`.
        get {
            let rv = Int(gtk_label_get_mnemonic_keyval(label_ptr))
            return rv
        }
    }

    /// Retrieves the target of the mnemonic (keyboard shortcut) of this
    /// label. See `gtk_label_set_mnemonic_widget()`.
    @inlinable var mnemonicWidget: WidgetRef! {
        /// Retrieves the target of the mnemonic (keyboard shortcut) of this
        /// label. See `gtk_label_set_mnemonic_widget()`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_label_get_mnemonic_widget(label_ptr))) else { return nil }
            return rv
        }
        /// If the label has been set so that it has an mnemonic key (using
        /// i.e. `gtk_label_set_markup_with_mnemonic()`,
        /// `gtk_label_set_text_with_mnemonic()`, `gtk_label_new_with_mnemonic()`
        /// or the “use_underline” property) the label can be associated with a
        /// widget that is the target of the mnemonic. When the label is inside
        /// a widget (like a `GtkButton` or a `GtkNotebook` tab) it is
        /// automatically associated with the correct widget, but sometimes
        /// (i.e. when the target is a `GtkEntry` next to the label) you need to
        /// set it explicitly using this function.
        /// 
        /// The target widget will be accelerated by emitting the
        /// GtkWidget`mnemonic-activate` signal on it. The default handler for
        /// this signal will activate the widget if there are no mnemonic collisions
        /// and toggle focus between the colliding widgets otherwise.
        nonmutating set {
            gtk_label_set_mnemonic_widget(label_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    @inlinable var selectable: Bool {
        /// Gets the value set by `gtk_label_set_selectable()`.
        get {
            let rv = ((gtk_label_get_selectable(label_ptr)) != 0)
            return rv
        }
        /// Selectable labels allow the user to select text from the label, for
        /// copy-and-paste.
        nonmutating set {
            gtk_label_set_selectable(label_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the label is in single line mode.
    @inlinable var singleLineMode: Bool {
        /// Returns whether the label is in single line mode.
        get {
            let rv = ((gtk_label_get_single_line_mode(label_ptr)) != 0)
            return rv
        }
        /// Sets whether the label is in single line mode.
        nonmutating set {
            gtk_label_set_single_line_mode(label_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Fetches the text from a label widget, as displayed on the
    /// screen. This does not include any embedded underlines
    /// indicating mnemonics or Pango markup. (See `gtk_label_get_label()`)
    @inlinable var text: String! {
        /// Fetches the text from a label widget, as displayed on the
        /// screen. This does not include any embedded underlines
        /// indicating mnemonics or Pango markup. (See `gtk_label_get_label()`)
        get {
            let rv = gtk_label_get_text(label_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the text within the `GtkLabel` widget. It overwrites any text that
        /// was there before.
        /// 
        /// This function will clear any previously set mnemonic accelerators, and
        /// set the `GtkLabel:use-underline` property to `false` as a side effect.
        /// 
        /// This function will set the `GtkLabel:use-markup` property to `false`
        /// as a side effect.
        /// 
        /// See also: `gtk_label_set_markup()`
        nonmutating set {
            gtk_label_set_text(label_ptr, newValue)
        }
    }

    /// Returns whether the label is currently keeping track
    /// of clicked links.
    @inlinable var trackVisitedLinks: Bool {
        /// Returns whether the label is currently keeping track
        /// of clicked links.
        get {
            let rv = ((gtk_label_get_track_visited_links(label_ptr)) != 0)
            return rv
        }
        /// Sets whether the label should keep track of clicked
        /// links (and use a different color for them).
        nonmutating set {
            gtk_label_set_track_visited_links(label_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the label’s text is interpreted as marked up with
    /// the [Pango text markup language](#PangoMarkupFormat).
    /// See gtk_label_set_use_markup ().
    @inlinable var useMarkup: Bool {
        /// Returns whether the label’s text is interpreted as marked up with
        /// the [Pango text markup language](#PangoMarkupFormat).
        /// See gtk_label_set_use_markup ().
        get {
            let rv = ((gtk_label_get_use_markup(label_ptr)) != 0)
            return rv
        }
        /// Sets whether the text of the label contains markup in
        /// [Pango’s text markup language](#PangoMarkupFormat).
        /// See `gtk_label_set_markup()`.
        nonmutating set {
            gtk_label_set_use_markup(label_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether an embedded underline in the label indicates a
    /// mnemonic. See `gtk_label_set_use_underline()`.
    @inlinable var useUnderline: Bool {
        /// Returns whether an embedded underline in the label indicates a
        /// mnemonic. See `gtk_label_set_use_underline()`.
        get {
            let rv = ((gtk_label_get_use_underline(label_ptr)) != 0)
            return rv
        }
        /// If true, an underline in the text indicates the next character should be
        /// used for the mnemonic accelerator key.
        nonmutating set {
            gtk_label_set_use_underline(label_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the desired width of `label`, in characters. See
    /// `gtk_label_set_width_chars()`.
    @inlinable var widthChars: Int {
        /// Retrieves the desired width of `label`, in characters. See
        /// `gtk_label_set_width_chars()`.
        get {
            let rv = Int(gtk_label_get_width_chars(label_ptr))
            return rv
        }
        /// Sets the desired width in characters of `label` to `n_chars`.
        nonmutating set {
            gtk_label_set_width_chars(label_ptr, gint(newValue))
        }
    }

    /// The xalign property determines the horizontal aligment of the label text
    /// inside the labels size allocation. Compare this to `GtkWidget:halign`,
    /// which determines how the labels size allocation is positioned in the
    /// space available for the label.
    @inlinable var xalign: Double {
        /// Gets the `GtkLabel:xalign` property for `label`.
        get {
            let rv = Double(gtk_label_get_xalign(label_ptr))
            return rv
        }
        /// Sets the `GtkLabel:xalign` property for `label`.
        nonmutating set {
            gtk_label_set_xalign(label_ptr, gfloat(newValue))
        }
    }

    /// The yalign property determines the vertical aligment of the label text
    /// inside the labels size allocation. Compare this to `GtkWidget:valign`,
    /// which determines how the labels size allocation is positioned in the
    /// space available for the label.
    @inlinable var yalign: Double {
        /// Gets the `GtkLabel:yalign` property for `label`.
        get {
            let rv = Double(gtk_label_get_yalign(label_ptr))
            return rv
        }
        /// Sets the `GtkLabel:yalign` property for `label`.
        nonmutating set {
            gtk_label_set_yalign(label_ptr, gfloat(newValue))
        }
    }

    @inlinable var misc: GtkMisc {
        get {
            let rv = label_ptr.pointee.misc
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



