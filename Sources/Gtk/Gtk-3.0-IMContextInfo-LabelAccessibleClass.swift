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

// MARK: - IMContextInfo Record

/// The `IMContextInfoProtocol` protocol exposes the methods and properties of an underlying `GtkIMContextInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMContextInfo`.
/// Alternatively, use `IMContextInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Bookkeeping information about a loadable input method.
public protocol IMContextInfoProtocol {
        /// Untyped pointer to the underlying `GtkIMContextInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIMContextInfo` instance.
    var _ptr: UnsafeMutablePointer<GtkIMContextInfo>! { get }

    /// Required Initialiser for types conforming to `IMContextInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IMContextInfoRef` type acts as a lightweight Swift reference to an underlying `GtkIMContextInfo` instance.
/// It exposes methods that can operate on this data type through `IMContextInfoProtocol` conformance.
/// Use `IMContextInfoRef` only as an `unowned` reference to an existing `GtkIMContextInfo` instance.
///
/// Bookkeeping information about a loadable input method.
public struct IMContextInfoRef: IMContextInfoProtocol {
        /// Untyped pointer to the underlying `GtkIMContextInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IMContextInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIMContextInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIMContextInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIMContextInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIMContextInfo>?) {
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

    /// Reference intialiser for a related type that implements `IMContextInfoProtocol`
    @inlinable init<T: IMContextInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IMContextInfo` type acts as an owner of an underlying `GtkIMContextInfo` instance.
/// It provides the methods that can operate on this data type through `IMContextInfoProtocol` conformance.
/// Use `IMContextInfo` as a strong reference or owner of a `GtkIMContextInfo` instance.
///
/// Bookkeeping information about a loadable input method.
open class IMContextInfo: IMContextInfoProtocol {
        /// Untyped pointer to the underlying `GtkIMContextInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIMContextInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIMContextInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIMContextInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContextInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIMContextInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkIMContextInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `IMContextInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIMContextInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkIMContextInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `IMContextInfoProtocol`
    /// `GtkIMContextInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `IMContextInfoProtocol`
    @inlinable public init<T: IMContextInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkIMContextInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkIMContextInfo`.
    deinit {
        // no reference counting for GtkIMContextInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkIMContextInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkIMContextInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkIMContextInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkIMContextInfo, cannot ref(_ptr)
    }



}

// MARK: no IMContextInfo properties

// MARK: no IMContextInfo signals

// MARK: IMContextInfo has no signals
// MARK: IMContextInfo Record: IMContextInfoProtocol extension (methods and fields)
public extension IMContextInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMContextInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkIMContextInfo>! { return ptr?.assumingMemoryBound(to: GtkIMContextInfo.self) }


    /// The unique identification string of the input method.
    @inlinable var contextID: UnsafePointer<gchar>! {
        /// The unique identification string of the input method.
        get {
            let rv = _ptr.pointee.context_id
            return rv
        }
        /// The unique identification string of the input method.
         set {
            _ptr.pointee.context_id = newValue
        }
    }

    /// The human-readable name of the input method.
    @inlinable var contextName: UnsafePointer<gchar>! {
        /// The human-readable name of the input method.
        get {
            let rv = _ptr.pointee.context_name
            return rv
        }
        /// The human-readable name of the input method.
         set {
            _ptr.pointee.context_name = newValue
        }
    }

    /// Translation domain to be used with `dgettext()`
    @inlinable var domain: UnsafePointer<gchar>! {
        /// Translation domain to be used with `dgettext()`
        get {
            let rv = _ptr.pointee.domain
            return rv
        }
        /// Translation domain to be used with `dgettext()`
         set {
            _ptr.pointee.domain = newValue
        }
    }

    /// Name of locale directory for use with `bindtextdomain()`
    @inlinable var domainDirname: UnsafePointer<gchar>! {
        /// Name of locale directory for use with `bindtextdomain()`
        get {
            let rv = _ptr.pointee.domain_dirname
            return rv
        }
        /// Name of locale directory for use with `bindtextdomain()`
         set {
            _ptr.pointee.domain_dirname = newValue
        }
    }

    /// A colon-separated list of locales where this input method
    ///   should be the default. The asterisk “*” sets the default for all locales.
    @inlinable var defaultLocales: UnsafePointer<gchar>! {
        /// A colon-separated list of locales where this input method
        ///   should be the default. The asterisk “*” sets the default for all locales.
        get {
            let rv = _ptr.pointee.default_locales
            return rv
        }
        /// A colon-separated list of locales where this input method
        ///   should be the default. The asterisk “*” sets the default for all locales.
         set {
            _ptr.pointee.default_locales = newValue
        }
    }

}



/// Metatype/GType declaration for IMContextSimple
public extension IMContextSimpleClassRef {
    
    /// This getter returns the GLib type identifier registered for `IMContextSimple`
    static var metatypeReference: GType { gtk_im_context_simple_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkIMContextSimpleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkIMContextSimpleClass.self) }
    
    static var metatype: GtkIMContextSimpleClass? { metatypePointer?.pointee } 
    
    static var wrapper: IMContextSimpleClassRef? { IMContextSimpleClassRef(metatypePointer) }
    
    
}

// MARK: - IMContextSimpleClass Record

/// The `IMContextSimpleClassProtocol` protocol exposes the methods and properties of an underlying `GtkIMContextSimpleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMContextSimpleClass`.
/// Alternatively, use `IMContextSimpleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IMContextSimpleClassProtocol {
        /// Untyped pointer to the underlying `GtkIMContextSimpleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIMContextSimpleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIMContextSimpleClass>! { get }

    /// Required Initialiser for types conforming to `IMContextSimpleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IMContextSimpleClassRef` type acts as a lightweight Swift reference to an underlying `GtkIMContextSimpleClass` instance.
/// It exposes methods that can operate on this data type through `IMContextSimpleClassProtocol` conformance.
/// Use `IMContextSimpleClassRef` only as an `unowned` reference to an existing `GtkIMContextSimpleClass` instance.
///

public struct IMContextSimpleClassRef: IMContextSimpleClassProtocol {
        /// Untyped pointer to the underlying `GtkIMContextSimpleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IMContextSimpleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIMContextSimpleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIMContextSimpleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIMContextSimpleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIMContextSimpleClass>?) {
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

    /// Reference intialiser for a related type that implements `IMContextSimpleClassProtocol`
    @inlinable init<T: IMContextSimpleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: IMContextSimpleClass Record: IMContextSimpleClassProtocol extension (methods and fields)
public extension IMContextSimpleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMContextSimpleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkIMContextSimpleClass>! { return ptr?.assumingMemoryBound(to: GtkIMContextSimpleClass.self) }


    @inlinable var parentClass: GtkIMContextClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for IMMulticontext
public extension IMMulticontextClassRef {
    
    /// This getter returns the GLib type identifier registered for `IMMulticontext`
    static var metatypeReference: GType { gtk_im_multicontext_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkIMMulticontextClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkIMMulticontextClass.self) }
    
    static var metatype: GtkIMMulticontextClass? { metatypePointer?.pointee } 
    
    static var wrapper: IMMulticontextClassRef? { IMMulticontextClassRef(metatypePointer) }
    
    
}

// MARK: - IMMulticontextClass Record

/// The `IMMulticontextClassProtocol` protocol exposes the methods and properties of an underlying `GtkIMMulticontextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMMulticontextClass`.
/// Alternatively, use `IMMulticontextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IMMulticontextClassProtocol {
        /// Untyped pointer to the underlying `GtkIMMulticontextClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIMMulticontextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIMMulticontextClass>! { get }

    /// Required Initialiser for types conforming to `IMMulticontextClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IMMulticontextClassRef` type acts as a lightweight Swift reference to an underlying `GtkIMMulticontextClass` instance.
/// It exposes methods that can operate on this data type through `IMMulticontextClassProtocol` conformance.
/// Use `IMMulticontextClassRef` only as an `unowned` reference to an existing `GtkIMMulticontextClass` instance.
///

public struct IMMulticontextClassRef: IMMulticontextClassProtocol {
        /// Untyped pointer to the underlying `GtkIMMulticontextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IMMulticontextClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIMMulticontextClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIMMulticontextClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIMMulticontextClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIMMulticontextClass>?) {
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

    /// Reference intialiser for a related type that implements `IMMulticontextClassProtocol`
    @inlinable init<T: IMMulticontextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: IMMulticontextClass Record: IMMulticontextClassProtocol extension (methods and fields)
public extension IMMulticontextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMMulticontextClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkIMMulticontextClass>! { return ptr?.assumingMemoryBound(to: GtkIMMulticontextClass.self) }


    @inlinable var parentClass: GtkIMContextClass {
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



/// Metatype/GType declaration for IconFactory
public extension IconFactoryClassRef {
    
    /// This getter returns the GLib type identifier registered for `IconFactory`
    static var metatypeReference: GType { gtk_icon_factory_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkIconFactoryClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkIconFactoryClass.self) }
    
    static var metatype: GtkIconFactoryClass? { metatypePointer?.pointee } 
    
    static var wrapper: IconFactoryClassRef? { IconFactoryClassRef(metatypePointer) }
    
    
}

// MARK: - IconFactoryClass Record

/// The `IconFactoryClassProtocol` protocol exposes the methods and properties of an underlying `GtkIconFactoryClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconFactoryClass`.
/// Alternatively, use `IconFactoryClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconFactoryClassProtocol {
        /// Untyped pointer to the underlying `GtkIconFactoryClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIconFactoryClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIconFactoryClass>! { get }

    /// Required Initialiser for types conforming to `IconFactoryClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IconFactoryClassRef` type acts as a lightweight Swift reference to an underlying `GtkIconFactoryClass` instance.
/// It exposes methods that can operate on this data type through `IconFactoryClassProtocol` conformance.
/// Use `IconFactoryClassRef` only as an `unowned` reference to an existing `GtkIconFactoryClass` instance.
///

public struct IconFactoryClassRef: IconFactoryClassProtocol {
        /// Untyped pointer to the underlying `GtkIconFactoryClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconFactoryClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIconFactoryClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIconFactoryClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIconFactoryClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIconFactoryClass>?) {
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

    /// Reference intialiser for a related type that implements `IconFactoryClassProtocol`
    @inlinable init<T: IconFactoryClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: IconFactoryClass Record: IconFactoryClassProtocol extension (methods and fields)
public extension IconFactoryClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconFactoryClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkIconFactoryClass>! { return ptr?.assumingMemoryBound(to: GtkIconFactoryClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
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



/// Metatype/GType declaration for IconInfo
public extension IconInfoClassRef {
    
    /// This getter returns the GLib type identifier registered for `IconInfo`
    static var metatypeReference: GType { gtk_icon_info_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkIconInfoClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkIconInfoClass.self) }
    
    static var metatype: GtkIconInfoClass? { metatypePointer?.pointee } 
    
    static var wrapper: IconInfoClassRef? { IconInfoClassRef(metatypePointer) }
    
    
}

// MARK: - IconInfoClass Record

/// The `IconInfoClassProtocol` protocol exposes the methods and properties of an underlying `GtkIconInfoClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconInfoClass`.
/// Alternatively, use `IconInfoClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconInfoClassProtocol {
        /// Untyped pointer to the underlying `GtkIconInfoClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIconInfoClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIconInfoClass>! { get }

    /// Required Initialiser for types conforming to `IconInfoClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IconInfoClassRef` type acts as a lightweight Swift reference to an underlying `GtkIconInfoClass` instance.
/// It exposes methods that can operate on this data type through `IconInfoClassProtocol` conformance.
/// Use `IconInfoClassRef` only as an `unowned` reference to an existing `GtkIconInfoClass` instance.
///

public struct IconInfoClassRef: IconInfoClassProtocol {
        /// Untyped pointer to the underlying `GtkIconInfoClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconInfoClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIconInfoClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIconInfoClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIconInfoClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIconInfoClass>?) {
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

    /// Reference intialiser for a related type that implements `IconInfoClassProtocol`
    @inlinable init<T: IconInfoClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: IconInfoClass Record: IconInfoClassProtocol extension (methods and fields)
public extension IconInfoClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconInfoClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkIconInfoClass>! { return ptr?.assumingMemoryBound(to: GtkIconInfoClass.self) }



}



// MARK: - IconSet Record

/// The `IconSetProtocol` protocol exposes the methods and properties of an underlying `GtkIconSet` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconSet`.
/// Alternatively, use `IconSetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconSetProtocol {
        /// Untyped pointer to the underlying `GtkIconSet` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIconSet` instance.
    var icon_set_ptr: UnsafeMutablePointer<GtkIconSet>! { get }

    /// Required Initialiser for types conforming to `IconSetProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IconSetRef` type acts as a lightweight Swift reference to an underlying `GtkIconSet` instance.
/// It exposes methods that can operate on this data type through `IconSetProtocol` conformance.
/// Use `IconSetRef` only as an `unowned` reference to an existing `GtkIconSet` instance.
///

public struct IconSetRef: IconSetProtocol {
        /// Untyped pointer to the underlying `GtkIconSet` instance.
    /// For type-safe access, use the generated, typed pointer `icon_set_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconSetRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIconSet>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIconSet>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIconSet>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIconSet>?) {
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

    /// Reference intialiser for a related type that implements `IconSetProtocol`
    @inlinable init<T: IconSetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkIconSet`. A `GtkIconSet` represents a single icon
    /// in various sizes and widget states. It can provide a `GdkPixbuf`
    /// for a given size and state on request, and automatically caches
    /// some of the rendered `GdkPixbuf` objects.
    /// 
    /// Normally you would use `gtk_widget_render_icon_pixbuf()` instead of
    /// using `GtkIconSet` directly. The one case where you’d use
    /// `GtkIconSet` is to create application-specific icon sets to place in
    /// a `GtkIconFactory`.
    ///
    /// **new is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable init() {
        let rv = gtk_icon_set_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkIconSet` with `pixbuf` as the default/fallback
    /// source image. If you don’t add any additional `GtkIconSource` to the
    /// icon set, all variants of the icon will be created from `pixbuf`,
    /// using scaling, pixelation, etc. as required to adjust the icon size
    /// or make the icon look insensitive/prelighted.
    ///
    /// **new_from_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable init<PixbufT: PixbufProtocol>(pixbuf: PixbufT) {
        let rv = gtk_icon_set_new_from_pixbuf(pixbuf.pixbuf_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkIconSet` with `pixbuf` as the default/fallback
    /// source image. If you don’t add any additional `GtkIconSource` to the
    /// icon set, all variants of the icon will be created from `pixbuf`,
    /// using scaling, pixelation, etc. as required to adjust the icon size
    /// or make the icon look insensitive/prelighted.
    ///
    /// **new_from_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable static func newFrom<PixbufT: PixbufProtocol>(pixbuf: PixbufT) -> IconSetRef! {
        guard let rv = IconSetRef(gconstpointer: gconstpointer(gtk_icon_set_new_from_pixbuf(pixbuf.pixbuf_ptr))) else { return nil }
        return rv
    }
}

/// The `IconSet` type acts as a reference-counted owner of an underlying `GtkIconSet` instance.
/// It provides the methods that can operate on this data type through `IconSetProtocol` conformance.
/// Use `IconSet` as a strong reference or owner of a `GtkIconSet` instance.
///

open class IconSet: IconSetProtocol {
        /// Untyped pointer to the underlying `GtkIconSet` instance.
    /// For type-safe access, use the generated, typed pointer `icon_set_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconSet` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIconSet>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconSet` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIconSet>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconSet` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconSet` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconSet` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIconSet>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconSet` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIconSet>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkIconSet`.
    /// i.e., ownership is transferred to the `IconSet` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIconSet>) {
        ptr = UnsafeMutableRawPointer(op)
        g_object_ref(ptr.assumingMemoryBound(to: GtkIconSet.self))
    }

    /// Reference intialiser for a related type that implements `IconSetProtocol`
    /// Will retain `GtkIconSet`.
    /// - Parameter other: an instance of a related type that implements `IconSetProtocol`
    @inlinable public init<T: IconSetProtocol>(_ other: T) {
        ptr = other.ptr
        g_object_ref(ptr.assumingMemoryBound(to: GtkIconSet.self))
    }

    /// Releases the underlying `GtkIconSet` instance using `g_object_unref`.
    deinit {
        g_object_unref(ptr.assumingMemoryBound(to: GtkIconSet.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_object_ref(ptr.assumingMemoryBound(to: GtkIconSet.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_object_ref(ptr.assumingMemoryBound(to: GtkIconSet.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_object_ref(ptr.assumingMemoryBound(to: GtkIconSet.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_object_ref(ptr.assumingMemoryBound(to: GtkIconSet.self))
    }

    /// Creates a new `GtkIconSet`. A `GtkIconSet` represents a single icon
    /// in various sizes and widget states. It can provide a `GdkPixbuf`
    /// for a given size and state on request, and automatically caches
    /// some of the rendered `GdkPixbuf` objects.
    /// 
    /// Normally you would use `gtk_widget_render_icon_pixbuf()` instead of
    /// using `GtkIconSet` directly. The one case where you’d use
    /// `GtkIconSet` is to create application-specific icon sets to place in
    /// a `GtkIconFactory`.
    ///
    /// **new is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable public init() {
        let rv = gtk_icon_set_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkIconSet` with `pixbuf` as the default/fallback
    /// source image. If you don’t add any additional `GtkIconSource` to the
    /// icon set, all variants of the icon will be created from `pixbuf`,
    /// using scaling, pixelation, etc. as required to adjust the icon size
    /// or make the icon look insensitive/prelighted.
    ///
    /// **new_from_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable public init<PixbufT: PixbufProtocol>(pixbuf: PixbufT) {
        let rv = gtk_icon_set_new_from_pixbuf(pixbuf.pixbuf_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkIconSet` with `pixbuf` as the default/fallback
    /// source image. If you don’t add any additional `GtkIconSource` to the
    /// icon set, all variants of the icon will be created from `pixbuf`,
    /// using scaling, pixelation, etc. as required to adjust the icon size
    /// or make the icon look insensitive/prelighted.
    ///
    /// **new_from_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable public static func newFrom<PixbufT: PixbufProtocol>(pixbuf: PixbufT) -> IconSet! {
        guard let rv = IconSet(gconstpointer: gconstpointer(gtk_icon_set_new_from_pixbuf(pixbuf.pixbuf_ptr))) else { return nil }
        return rv
    }

}

// MARK: no IconSet properties

// MARK: no IconSet signals

// MARK: IconSet has no signals
// MARK: IconSet Record: IconSetProtocol extension (methods and fields)
public extension IconSetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconSet` instance.
    @inlinable var icon_set_ptr: UnsafeMutablePointer<GtkIconSet>! { return ptr?.assumingMemoryBound(to: GtkIconSet.self) }

    /// Icon sets have a list of `GtkIconSource`, which they use as base
    /// icons for rendering icons in different states and sizes. Icons are
    /// scaled, made to look insensitive, etc. in
    /// `gtk_icon_set_render_icon()`, but `GtkIconSet` needs base images to
    /// work with. The base images and when to use them are described by
    /// a `GtkIconSource`.
    /// 
    /// This function copies `source`, so you can reuse the same source immediately
    /// without affecting the icon set.
    /// 
    /// An example of when you’d use this function: a web browser’s "Back
    /// to Previous Page" icon might point in a different direction in
    /// Hebrew and in English; it might look different when insensitive;
    /// and it might change size depending on toolbar mode (small/large
    /// icons). So a single icon set would contain all those variants of
    /// the icon, and you might add a separate source for each one.
    /// 
    /// You should nearly always add a “default” icon source with all
    /// fields wildcarded, which will be used as a fallback if no more
    /// specific source matches. `GtkIconSet` always prefers more specific
    /// icon sources to more generic icon sources. The order in which you
    /// add the sources to the icon set does not matter.
    /// 
    /// `gtk_icon_set_new_from_pixbuf()` creates a new icon set with a
    /// default icon source based on the given pixbuf.
    ///
    /// **add_source is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func add<IconSourceT: IconSourceProtocol>(source: IconSourceT) {
        gtk_icon_set_add_source(icon_set_ptr, source.icon_source_ptr)
    
    }

    /// Copies `icon_set` by value.
    ///
    /// **copy is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func copy() -> IconSetRef! {
        guard let rv = IconSetRef(gconstpointer: gconstpointer(gtk_icon_set_copy(icon_set_ptr))) else { return nil }
        return rv
    }

    /// Obtains a list of icon sizes this icon set can render. The returned
    /// array must be freed with `g_free()`.
    ///
    /// **get_sizes is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func get(sizes: UnsafeMutablePointer<UnsafeMutablePointer<GtkIconSize>?>!, nSizes: UnsafeMutablePointer<gint>!) {
        gtk_icon_set_get_sizes(icon_set_ptr, sizes, nSizes)
    
    }

    /// Increments the reference count on `icon_set`.
    ///
    /// **ref is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @discardableResult @inlinable func ref() -> IconSetRef! {
        guard let rv = IconSetRef(gconstpointer: gconstpointer(g_object_ref(icon_set_ptr))) else { return nil }
        return rv
    }

    /// Renders an icon using `gtk_style_render_icon()`. In most cases,
    /// `gtk_widget_render_icon()` is better, since it automatically provides
    /// most of the arguments from the current widget settings.  This
    /// function never returns `nil`; if the icon can’t be rendered
    /// (perhaps because an image file fails to load), a default "missing
    /// image" icon will be returned instead.
    ///
    /// **render_icon is deprecated:**
    /// Use gtk_icon_set_render_icon_pixbuf() instead
    @available(*, deprecated)
    @inlinable func renderIcon(style: StyleRef? = nil, direction: GtkTextDirection, state: GtkStateType, size: GtkIconSize, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil) -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_set_render_icon(icon_set_ptr, style?.style_ptr, direction, state, size, widget?.widget_ptr, detail)))
        return rv
    }
    /// Renders an icon using `gtk_style_render_icon()`. In most cases,
    /// `gtk_widget_render_icon()` is better, since it automatically provides
    /// most of the arguments from the current widget settings.  This
    /// function never returns `nil`; if the icon can’t be rendered
    /// (perhaps because an image file fails to load), a default "missing
    /// image" icon will be returned instead.
    ///
    /// **render_icon is deprecated:**
    /// Use gtk_icon_set_render_icon_pixbuf() instead
    @available(*, deprecated)
    @inlinable func renderIcon<StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT?, direction: GtkTextDirection, state: GtkStateType, size: GtkIconSize, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil) -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_set_render_icon(icon_set_ptr, style?.style_ptr, direction, state, size, widget?.widget_ptr, detail)))
        return rv
    }

    /// Renders an icon using `gtk_render_icon_pixbuf()`. In most cases,
    /// `gtk_widget_render_icon_pixbuf()` is better, since it automatically provides
    /// most of the arguments from the current widget settings.  This
    /// function never returns `nil`; if the icon can’t be rendered
    /// (perhaps because an image file fails to load), a default "missing
    /// image" icon will be returned instead.
    ///
    /// **render_icon_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func renderIconPixbuf<StyleContextT: StyleContextProtocol>(context: StyleContextT, size: GtkIconSize) -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_set_render_icon_pixbuf(icon_set_ptr, context.style_context_ptr, size)))
        return rv
    }

    /// Renders an icon using `gtk_render_icon_pixbuf()` and converts it to a
    /// cairo surface.
    /// 
    /// This function never returns `nil`; if the icon can’t be rendered
    /// (perhaps because an image file fails to load), a default "missing
    /// image" icon will be returned instead.
    ///
    /// **render_icon_surface is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func renderIconSurface<StyleContextT: StyleContextProtocol>(context: StyleContextT, size: GtkIconSize, scale: Int, `for` window: Gdk.WindowRef? = nil) -> Cairo.SurfaceRef! {
        let rv = Cairo.SurfaceRef(gtk_icon_set_render_icon_surface(icon_set_ptr, context.style_context_ptr, size, gint(scale), window?.window_ptr))
        return rv
    }
    /// Renders an icon using `gtk_render_icon_pixbuf()` and converts it to a
    /// cairo surface.
    /// 
    /// This function never returns `nil`; if the icon can’t be rendered
    /// (perhaps because an image file fails to load), a default "missing
    /// image" icon will be returned instead.
    ///
    /// **render_icon_surface is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func renderIconSurface<StyleContextT: StyleContextProtocol, WindowT: Gdk.WindowProtocol>(context: StyleContextT, size: GtkIconSize, scale: Int, `for` window: WindowT?) -> Cairo.SurfaceRef! {
        let rv = Cairo.SurfaceRef(gtk_icon_set_render_icon_surface(icon_set_ptr, context.style_context_ptr, size, gint(scale), window?.window_ptr))
        return rv
    }

    /// Decrements the reference count on `icon_set`, and frees memory
    /// if the reference count reaches 0.
    ///
    /// **unref is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func unref() {
        g_object_unref(icon_set_ptr)
    
    }


}



// MARK: - IconSource Record

/// The `IconSourceProtocol` protocol exposes the methods and properties of an underlying `GtkIconSource` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconSource`.
/// Alternatively, use `IconSourceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconSourceProtocol {
        /// Untyped pointer to the underlying `GtkIconSource` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIconSource` instance.
    var icon_source_ptr: UnsafeMutablePointer<GtkIconSource>! { get }

    /// Required Initialiser for types conforming to `IconSourceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IconSourceRef` type acts as a lightweight Swift reference to an underlying `GtkIconSource` instance.
/// It exposes methods that can operate on this data type through `IconSourceProtocol` conformance.
/// Use `IconSourceRef` only as an `unowned` reference to an existing `GtkIconSource` instance.
///

public struct IconSourceRef: IconSourceProtocol {
        /// Untyped pointer to the underlying `GtkIconSource` instance.
    /// For type-safe access, use the generated, typed pointer `icon_source_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconSourceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIconSource>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIconSource>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIconSource>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIconSource>?) {
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

    /// Reference intialiser for a related type that implements `IconSourceProtocol`
    @inlinable init<T: IconSourceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkIconSource`. A `GtkIconSource` contains a `GdkPixbuf` (or
    /// image filename) that serves as the base image for one or more of the
    /// icons in a `GtkIconSet`, along with a specification for which icons in the
    /// icon set will be based on that pixbuf or image file. An icon set contains
    /// a set of icons that represent “the same” logical concept in different states,
    /// different global text directions, and different sizes.
    /// 
    /// So for example a web browser’s “Back to Previous Page” icon might
    /// point in a different direction in Hebrew and in English; it might
    /// look different when insensitive; and it might change size depending
    /// on toolbar mode (small/large icons). So a single icon set would
    /// contain all those variants of the icon. `GtkIconSet` contains a list
    /// of `GtkIconSource` from which it can derive specific icon variants in
    /// the set.
    /// 
    /// In the simplest case, `GtkIconSet` contains one source pixbuf from
    /// which it derives all variants. The convenience function
    /// `gtk_icon_set_new_from_pixbuf()` handles this case; if you only have
    /// one source pixbuf, just use that function.
    /// 
    /// If you want to use a different base pixbuf for different icon
    /// variants, you create multiple icon sources, mark which variants
    /// they’ll be used to create, and add them to the icon set with
    /// `gtk_icon_set_add_source()`.
    /// 
    /// By default, the icon source has all parameters wildcarded. That is,
    /// the icon source will be used as the base icon for any desired text
    /// direction, widget state, or icon size.
    ///
    /// **new is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable init() {
        let rv = gtk_icon_source_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `IconSource` type acts as an owner of an underlying `GtkIconSource` instance.
/// It provides the methods that can operate on this data type through `IconSourceProtocol` conformance.
/// Use `IconSource` as a strong reference or owner of a `GtkIconSource` instance.
///

open class IconSource: IconSourceProtocol {
        /// Untyped pointer to the underlying `GtkIconSource` instance.
    /// For type-safe access, use the generated, typed pointer `icon_source_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIconSource>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIconSource>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconSource` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIconSource>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IconSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIconSource>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkIconSource` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `IconSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIconSource>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkIconSource, cannot ref(icon_source_ptr)
    }

    /// Reference intialiser for a related type that implements `IconSourceProtocol`
    /// `GtkIconSource` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `IconSourceProtocol`
    @inlinable public init<T: IconSourceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkIconSource, cannot ref(icon_source_ptr)
    }

    /// Do-nothing destructor for `GtkIconSource`.
    deinit {
        // no reference counting for GtkIconSource, cannot unref(icon_source_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkIconSource, cannot ref(icon_source_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkIconSource, cannot ref(icon_source_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkIconSource, cannot ref(icon_source_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkIconSource, cannot ref(icon_source_ptr)
    }

    /// Creates a new `GtkIconSource`. A `GtkIconSource` contains a `GdkPixbuf` (or
    /// image filename) that serves as the base image for one or more of the
    /// icons in a `GtkIconSet`, along with a specification for which icons in the
    /// icon set will be based on that pixbuf or image file. An icon set contains
    /// a set of icons that represent “the same” logical concept in different states,
    /// different global text directions, and different sizes.
    /// 
    /// So for example a web browser’s “Back to Previous Page” icon might
    /// point in a different direction in Hebrew and in English; it might
    /// look different when insensitive; and it might change size depending
    /// on toolbar mode (small/large icons). So a single icon set would
    /// contain all those variants of the icon. `GtkIconSet` contains a list
    /// of `GtkIconSource` from which it can derive specific icon variants in
    /// the set.
    /// 
    /// In the simplest case, `GtkIconSet` contains one source pixbuf from
    /// which it derives all variants. The convenience function
    /// `gtk_icon_set_new_from_pixbuf()` handles this case; if you only have
    /// one source pixbuf, just use that function.
    /// 
    /// If you want to use a different base pixbuf for different icon
    /// variants, you create multiple icon sources, mark which variants
    /// they’ll be used to create, and add them to the icon set with
    /// `gtk_icon_set_add_source()`.
    /// 
    /// By default, the icon source has all parameters wildcarded. That is,
    /// the icon source will be used as the base icon for any desired text
    /// direction, widget state, or icon size.
    ///
    /// **new is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable public init() {
        let rv = gtk_icon_source_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no IconSource properties

// MARK: no IconSource signals

// MARK: IconSource has no signals
// MARK: IconSource Record: IconSourceProtocol extension (methods and fields)
public extension IconSourceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconSource` instance.
    @inlinable var icon_source_ptr: UnsafeMutablePointer<GtkIconSource>! { return ptr?.assumingMemoryBound(to: GtkIconSource.self) }

    /// Creates a copy of `source`; mostly useful for language bindings.
    ///
    /// **copy is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func copy() -> IconSourceRef! {
        guard let rv = IconSourceRef(gconstpointer: gconstpointer(gtk_icon_source_copy(icon_source_ptr))) else { return nil }
        return rv
    }

    /// Frees a dynamically-allocated icon source, along with its
    /// filename, size, and pixbuf fields if those are not `nil`.
    ///
    /// **free is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func free() {
        gtk_icon_source_free(icon_source_ptr)
    
    }

    /// Obtains the text direction this icon source applies to. The return
    /// value is only useful/meaningful if the text direction is not
    /// wildcarded.
    ///
    /// **get_direction is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func getDirection() -> GtkTextDirection {
        let rv = gtk_icon_source_get_direction(icon_source_ptr)
        return rv
    }

    /// Gets the value set by `gtk_icon_source_set_direction_wildcarded()`.
    ///
    /// **get_direction_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func getDirectionWildcarded() -> Bool {
        let rv = ((gtk_icon_source_get_direction_wildcarded(icon_source_ptr)) != 0)
        return rv
    }

    /// Retrieves the source filename, or `nil` if none is set. The
    /// filename is not a copy, and should not be modified or expected to
    /// persist beyond the lifetime of the icon source.
    ///
    /// **get_filename is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func getFilename() -> String! {
        let rv = gtk_icon_source_get_filename(icon_source_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the source icon name, or `nil` if none is set. The
    /// icon_name is not a copy, and should not be modified or expected to
    /// persist beyond the lifetime of the icon source.
    ///
    /// **get_icon_name is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func getIconName() -> String! {
        let rv = gtk_icon_source_get_icon_name(icon_source_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the source pixbuf, or `nil` if none is set.
    /// In addition, if a filename source is in use, this
    /// function in some cases will return the pixbuf from
    /// loaded from the filename. This is, for example, true
    /// for the GtkIconSource passed to the `GtkStyle` `render_icon()`
    /// virtual function. The reference count on the pixbuf is
    /// not incremented.
    ///
    /// **get_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func getPixbuf() -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_source_get_pixbuf(icon_source_ptr)))
        return rv
    }

    /// Obtains the icon size this source applies to. The return value
    /// is only useful/meaningful if the icon size is not wildcarded.
    ///
    /// **get_size is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func getSize() -> GtkIconSize {
        let rv = gtk_icon_source_get_size(icon_source_ptr)
        return rv
    }

    /// Gets the value set by `gtk_icon_source_set_size_wildcarded()`.
    ///
    /// **get_size_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func getSizeWildcarded() -> Bool {
        let rv = ((gtk_icon_source_get_size_wildcarded(icon_source_ptr)) != 0)
        return rv
    }

    /// Obtains the widget state this icon source applies to. The return
    /// value is only useful/meaningful if the widget state is not
    /// wildcarded.
    ///
    /// **get_state is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func getState() -> GtkStateType {
        let rv = gtk_icon_source_get_state(icon_source_ptr)
        return rv
    }

    /// Gets the value set by `gtk_icon_source_set_state_wildcarded()`.
    ///
    /// **get_state_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func getStateWildcarded() -> Bool {
        let rv = ((gtk_icon_source_get_state_wildcarded(icon_source_ptr)) != 0)
        return rv
    }

    /// Sets the text direction this icon source is intended to be used
    /// with.
    /// 
    /// Setting the text direction on an icon source makes no difference
    /// if the text direction is wildcarded. Therefore, you should usually
    /// call `gtk_icon_source_set_direction_wildcarded()` to un-wildcard it
    /// in addition to calling this function.
    ///
    /// **set_direction is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func set(direction: GtkTextDirection) {
        gtk_icon_source_set_direction(icon_source_ptr, direction)
    
    }

    /// If the text direction is wildcarded, this source can be used
    /// as the base image for an icon in any `GtkTextDirection`.
    /// If the text direction is not wildcarded, then the
    /// text direction the icon source applies to should be set
    /// with `gtk_icon_source_set_direction()`, and the icon source
    /// will only be used with that text direction.
    /// 
    /// `GtkIconSet` prefers non-wildcarded sources (exact matches) over
    /// wildcarded sources, and will use an exact match when possible.
    ///
    /// **set_direction_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func setDirectionWildcarded(setting: Bool) {
        gtk_icon_source_set_direction_wildcarded(icon_source_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the name of an image file to use as a base image when creating
    /// icon variants for `GtkIconSet`. The filename must be absolute.
    ///
    /// **set_filename is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func set(filename: UnsafePointer<gchar>!) {
        gtk_icon_source_set_filename(icon_source_ptr, filename)
    
    }

    /// Sets the name of an icon to look up in the current icon theme
    /// to use as a base image when creating icon variants for `GtkIconSet`.
    ///
    /// **set_icon_name is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func set(iconName: UnsafePointer<gchar>? = nil) {
        gtk_icon_source_set_icon_name(icon_source_ptr, iconName)
    
    }

    /// Sets a pixbuf to use as a base image when creating icon variants
    /// for `GtkIconSet`.
    ///
    /// **set_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func set<PixbufT: PixbufProtocol>(pixbuf: PixbufT) {
        gtk_icon_source_set_pixbuf(icon_source_ptr, pixbuf.pixbuf_ptr)
    
    }

    /// Sets the icon size this icon source is intended to be used
    /// with.
    /// 
    /// Setting the icon size on an icon source makes no difference
    /// if the size is wildcarded. Therefore, you should usually
    /// call `gtk_icon_source_set_size_wildcarded()` to un-wildcard it
    /// in addition to calling this function.
    ///
    /// **set_size is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func set(size: GtkIconSize) {
        gtk_icon_source_set_size(icon_source_ptr, size)
    
    }

    /// If the icon size is wildcarded, this source can be used as the base
    /// image for an icon of any size.  If the size is not wildcarded, then
    /// the size the source applies to should be set with
    /// `gtk_icon_source_set_size()` and the icon source will only be used
    /// with that specific size.
    /// 
    /// `GtkIconSet` prefers non-wildcarded sources (exact matches) over
    /// wildcarded sources, and will use an exact match when possible.
    /// 
    /// `GtkIconSet` will normally scale wildcarded source images to produce
    /// an appropriate icon at a given size, but will not change the size
    /// of source images that match exactly.
    ///
    /// **set_size_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func setSizeWildcarded(setting: Bool) {
        gtk_icon_source_set_size_wildcarded(icon_source_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the widget state this icon source is intended to be used
    /// with.
    /// 
    /// Setting the widget state on an icon source makes no difference
    /// if the state is wildcarded. Therefore, you should usually
    /// call `gtk_icon_source_set_state_wildcarded()` to un-wildcard it
    /// in addition to calling this function.
    ///
    /// **set_state is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func set(state: GtkStateType) {
        gtk_icon_source_set_state(icon_source_ptr, state)
    
    }

    /// If the widget state is wildcarded, this source can be used as the
    /// base image for an icon in any `GtkStateType`.  If the widget state
    /// is not wildcarded, then the state the source applies to should be
    /// set with `gtk_icon_source_set_state()` and the icon source will
    /// only be used with that specific state.
    /// 
    /// `GtkIconSet` prefers non-wildcarded sources (exact matches) over
    /// wildcarded sources, and will use an exact match when possible.
    /// 
    /// `GtkIconSet` will normally transform wildcarded source images to
    /// produce an appropriate icon for a given state, for example
    /// lightening an image on prelight, but will not modify source images
    /// that match exactly.
    ///
    /// **set_state_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated)
    @inlinable func setStateWildcarded(setting: Bool) {
        gtk_icon_source_set_state_wildcarded(icon_source_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Renders the icon specified by `source` at the given `size`, returning the result
    /// in a pixbuf.
    ///
    /// **render_icon_pixbuf is deprecated:**
    /// Use gtk_icon_theme_load_icon() instead.
    @available(*, deprecated)
    @inlinable func renderIconPixbuf<StyleContextT: StyleContextProtocol>(context: StyleContextT, size: GtkIconSize) -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_render_icon_pixbuf(context.style_context_ptr, icon_source_ptr, size)))
        return rv
    }
    /// Obtains the text direction this icon source applies to. The return
    /// value is only useful/meaningful if the text direction is not
    /// wildcarded.
    ///
    /// **get_direction is deprecated:**
    /// Use #GtkIconTheme instead.
    @inlinable var direction: GtkTextDirection {
        /// Obtains the text direction this icon source applies to. The return
        /// value is only useful/meaningful if the text direction is not
        /// wildcarded.
        ///
        /// **get_direction is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    get {
            let rv = gtk_icon_source_get_direction(icon_source_ptr)
            return rv
        }
        /// Sets the text direction this icon source is intended to be used
        /// with.
        /// 
        /// Setting the text direction on an icon source makes no difference
        /// if the text direction is wildcarded. Therefore, you should usually
        /// call `gtk_icon_source_set_direction_wildcarded()` to un-wildcard it
        /// in addition to calling this function.
        ///
        /// **set_direction is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    nonmutating set {
            gtk_icon_source_set_direction(icon_source_ptr, newValue)
        }
    }

    /// Gets the value set by `gtk_icon_source_set_direction_wildcarded()`.
    ///
    /// **get_direction_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    @inlinable var directionWildcarded: Bool {
        /// Gets the value set by `gtk_icon_source_set_direction_wildcarded()`.
        ///
        /// **get_direction_wildcarded is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    get {
            let rv = ((gtk_icon_source_get_direction_wildcarded(icon_source_ptr)) != 0)
            return rv
        }
        /// If the text direction is wildcarded, this source can be used
        /// as the base image for an icon in any `GtkTextDirection`.
        /// If the text direction is not wildcarded, then the
        /// text direction the icon source applies to should be set
        /// with `gtk_icon_source_set_direction()`, and the icon source
        /// will only be used with that text direction.
        /// 
        /// `GtkIconSet` prefers non-wildcarded sources (exact matches) over
        /// wildcarded sources, and will use an exact match when possible.
        ///
        /// **set_direction_wildcarded is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    nonmutating set {
            gtk_icon_source_set_direction_wildcarded(icon_source_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the source filename, or `nil` if none is set. The
    /// filename is not a copy, and should not be modified or expected to
    /// persist beyond the lifetime of the icon source.
    ///
    /// **get_filename is deprecated:**
    /// Use #GtkIconTheme instead.
    @inlinable var filename: String! {
        /// Retrieves the source filename, or `nil` if none is set. The
        /// filename is not a copy, and should not be modified or expected to
        /// persist beyond the lifetime of the icon source.
        ///
        /// **get_filename is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    get {
            let rv = gtk_icon_source_get_filename(icon_source_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the name of an image file to use as a base image when creating
        /// icon variants for `GtkIconSet`. The filename must be absolute.
        ///
        /// **set_filename is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    nonmutating set {
            gtk_icon_source_set_filename(icon_source_ptr, newValue)
        }
    }

    /// Retrieves the source icon name, or `nil` if none is set. The
    /// icon_name is not a copy, and should not be modified or expected to
    /// persist beyond the lifetime of the icon source.
    ///
    /// **get_icon_name is deprecated:**
    /// Use #GtkIconTheme instead.
    @inlinable var iconName: String! {
        /// Retrieves the source icon name, or `nil` if none is set. The
        /// icon_name is not a copy, and should not be modified or expected to
        /// persist beyond the lifetime of the icon source.
        ///
        /// **get_icon_name is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    get {
            let rv = gtk_icon_source_get_icon_name(icon_source_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the name of an icon to look up in the current icon theme
        /// to use as a base image when creating icon variants for `GtkIconSet`.
        ///
        /// **set_icon_name is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    nonmutating set {
            gtk_icon_source_set_icon_name(icon_source_ptr, newValue)
        }
    }

    /// Retrieves the source pixbuf, or `nil` if none is set.
    /// In addition, if a filename source is in use, this
    /// function in some cases will return the pixbuf from
    /// loaded from the filename. This is, for example, true
    /// for the GtkIconSource passed to the `GtkStyle` `render_icon()`
    /// virtual function. The reference count on the pixbuf is
    /// not incremented.
    ///
    /// **get_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    @inlinable var pixbuf: PixbufRef! {
        /// Retrieves the source pixbuf, or `nil` if none is set.
        /// In addition, if a filename source is in use, this
        /// function in some cases will return the pixbuf from
        /// loaded from the filename. This is, for example, true
        /// for the GtkIconSource passed to the `GtkStyle` `render_icon()`
        /// virtual function. The reference count on the pixbuf is
        /// not incremented.
        ///
        /// **get_pixbuf is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    get {
            let rv = PixbufRef(gconstpointer: gconstpointer(gtk_icon_source_get_pixbuf(icon_source_ptr)))
            return rv
        }
        /// Sets a pixbuf to use as a base image when creating icon variants
        /// for `GtkIconSet`.
        ///
        /// **set_pixbuf is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    nonmutating set {
            gtk_icon_source_set_pixbuf(icon_source_ptr, UnsafeMutablePointer<GdkPixbuf>(newValue?.pixbuf_ptr))
        }
    }

    /// Obtains the icon size this source applies to. The return value
    /// is only useful/meaningful if the icon size is not wildcarded.
    ///
    /// **get_size is deprecated:**
    /// Use #GtkIconTheme instead.
    @inlinable var size: GtkIconSize {
        /// Obtains the icon size this source applies to. The return value
        /// is only useful/meaningful if the icon size is not wildcarded.
        ///
        /// **get_size is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    get {
            let rv = gtk_icon_source_get_size(icon_source_ptr)
            return rv
        }
        /// Sets the icon size this icon source is intended to be used
        /// with.
        /// 
        /// Setting the icon size on an icon source makes no difference
        /// if the size is wildcarded. Therefore, you should usually
        /// call `gtk_icon_source_set_size_wildcarded()` to un-wildcard it
        /// in addition to calling this function.
        ///
        /// **set_size is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    nonmutating set {
            gtk_icon_source_set_size(icon_source_ptr, newValue)
        }
    }

    /// Gets the value set by `gtk_icon_source_set_size_wildcarded()`.
    ///
    /// **get_size_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    @inlinable var sizeWildcarded: Bool {
        /// Gets the value set by `gtk_icon_source_set_size_wildcarded()`.
        ///
        /// **get_size_wildcarded is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    get {
            let rv = ((gtk_icon_source_get_size_wildcarded(icon_source_ptr)) != 0)
            return rv
        }
        /// If the icon size is wildcarded, this source can be used as the base
        /// image for an icon of any size.  If the size is not wildcarded, then
        /// the size the source applies to should be set with
        /// `gtk_icon_source_set_size()` and the icon source will only be used
        /// with that specific size.
        /// 
        /// `GtkIconSet` prefers non-wildcarded sources (exact matches) over
        /// wildcarded sources, and will use an exact match when possible.
        /// 
        /// `GtkIconSet` will normally scale wildcarded source images to produce
        /// an appropriate icon at a given size, but will not change the size
        /// of source images that match exactly.
        ///
        /// **set_size_wildcarded is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    nonmutating set {
            gtk_icon_source_set_size_wildcarded(icon_source_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Obtains the widget state this icon source applies to. The return
    /// value is only useful/meaningful if the widget state is not
    /// wildcarded.
    ///
    /// **get_state is deprecated:**
    /// Use #GtkIconTheme instead.
    @inlinable var state: GtkStateType {
        /// Obtains the widget state this icon source applies to. The return
        /// value is only useful/meaningful if the widget state is not
        /// wildcarded.
        ///
        /// **get_state is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    get {
            let rv = gtk_icon_source_get_state(icon_source_ptr)
            return rv
        }
        /// Sets the widget state this icon source is intended to be used
        /// with.
        /// 
        /// Setting the widget state on an icon source makes no difference
        /// if the state is wildcarded. Therefore, you should usually
        /// call `gtk_icon_source_set_state_wildcarded()` to un-wildcard it
        /// in addition to calling this function.
        ///
        /// **set_state is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    nonmutating set {
            gtk_icon_source_set_state(icon_source_ptr, newValue)
        }
    }

    /// Gets the value set by `gtk_icon_source_set_state_wildcarded()`.
    ///
    /// **get_state_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    @inlinable var stateWildcarded: Bool {
        /// Gets the value set by `gtk_icon_source_set_state_wildcarded()`.
        ///
        /// **get_state_wildcarded is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    get {
            let rv = ((gtk_icon_source_get_state_wildcarded(icon_source_ptr)) != 0)
            return rv
        }
        /// If the widget state is wildcarded, this source can be used as the
        /// base image for an icon in any `GtkStateType`.  If the widget state
        /// is not wildcarded, then the state the source applies to should be
        /// set with `gtk_icon_source_set_state()` and the icon source will
        /// only be used with that specific state.
        /// 
        /// `GtkIconSet` prefers non-wildcarded sources (exact matches) over
        /// wildcarded sources, and will use an exact match when possible.
        /// 
        /// `GtkIconSet` will normally transform wildcarded source images to
        /// produce an appropriate icon for a given state, for example
        /// lightening an image on prelight, but will not modify source images
        /// that match exactly.
        ///
        /// **set_state_wildcarded is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated)
    nonmutating set {
            gtk_icon_source_set_state_wildcarded(icon_source_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



/// Metatype/GType declaration for IconTheme
public extension IconThemeClassRef {
    
    /// This getter returns the GLib type identifier registered for `IconTheme`
    static var metatypeReference: GType { gtk_icon_theme_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkIconThemeClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkIconThemeClass.self) }
    
    static var metatype: GtkIconThemeClass? { metatypePointer?.pointee } 
    
    static var wrapper: IconThemeClassRef? { IconThemeClassRef(metatypePointer) }
    
    
}

// MARK: - IconThemeClass Record

/// The `IconThemeClassProtocol` protocol exposes the methods and properties of an underlying `GtkIconThemeClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconThemeClass`.
/// Alternatively, use `IconThemeClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconThemeClassProtocol {
        /// Untyped pointer to the underlying `GtkIconThemeClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIconThemeClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIconThemeClass>! { get }

    /// Required Initialiser for types conforming to `IconThemeClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IconThemeClassRef` type acts as a lightweight Swift reference to an underlying `GtkIconThemeClass` instance.
/// It exposes methods that can operate on this data type through `IconThemeClassProtocol` conformance.
/// Use `IconThemeClassRef` only as an `unowned` reference to an existing `GtkIconThemeClass` instance.
///

public struct IconThemeClassRef: IconThemeClassProtocol {
        /// Untyped pointer to the underlying `GtkIconThemeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconThemeClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIconThemeClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIconThemeClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIconThemeClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIconThemeClass>?) {
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

    /// Reference intialiser for a related type that implements `IconThemeClassProtocol`
    @inlinable init<T: IconThemeClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: IconThemeClass Record: IconThemeClassProtocol extension (methods and fields)
public extension IconThemeClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconThemeClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkIconThemeClass>! { return ptr?.assumingMemoryBound(to: GtkIconThemeClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var changed is unavailable because changed is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for IconViewAccessible
public extension IconViewAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `IconViewAccessible`
    static var metatypeReference: GType { gtk_icon_view_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkIconViewAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkIconViewAccessibleClass.self) }
    
    static var metatype: GtkIconViewAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: IconViewAccessibleClassRef? { IconViewAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - IconViewAccessibleClass Record

/// The `IconViewAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkIconViewAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconViewAccessibleClass`.
/// Alternatively, use `IconViewAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconViewAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkIconViewAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIconViewAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIconViewAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `IconViewAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IconViewAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkIconViewAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `IconViewAccessibleClassProtocol` conformance.
/// Use `IconViewAccessibleClassRef` only as an `unowned` reference to an existing `GtkIconViewAccessibleClass` instance.
///

public struct IconViewAccessibleClassRef: IconViewAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkIconViewAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconViewAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIconViewAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIconViewAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIconViewAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIconViewAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `IconViewAccessibleClassProtocol`
    @inlinable init<T: IconViewAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: IconViewAccessibleClass Record: IconViewAccessibleClassProtocol extension (methods and fields)
public extension IconViewAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconViewAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkIconViewAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkIconViewAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for IconView
public extension IconViewClassRef {
    
    /// This getter returns the GLib type identifier registered for `IconView`
    static var metatypeReference: GType { gtk_icon_view_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkIconViewClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkIconViewClass.self) }
    
    static var metatype: GtkIconViewClass? { metatypePointer?.pointee } 
    
    static var wrapper: IconViewClassRef? { IconViewClassRef(metatypePointer) }
    
    
}

// MARK: - IconViewClass Record

/// The `IconViewClassProtocol` protocol exposes the methods and properties of an underlying `GtkIconViewClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconViewClass`.
/// Alternatively, use `IconViewClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconViewClassProtocol {
        /// Untyped pointer to the underlying `GtkIconViewClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIconViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIconViewClass>! { get }

    /// Required Initialiser for types conforming to `IconViewClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `IconViewClassRef` type acts as a lightweight Swift reference to an underlying `GtkIconViewClass` instance.
/// It exposes methods that can operate on this data type through `IconViewClassProtocol` conformance.
/// Use `IconViewClassRef` only as an `unowned` reference to an existing `GtkIconViewClass` instance.
///

public struct IconViewClassRef: IconViewClassProtocol {
        /// Untyped pointer to the underlying `GtkIconViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconViewClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIconViewClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIconViewClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIconViewClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIconViewClass>?) {
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

    /// Reference intialiser for a related type that implements `IconViewClassProtocol`
    @inlinable init<T: IconViewClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: IconViewClass Record: IconViewClassProtocol extension (methods and fields)
public extension IconViewClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconViewClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkIconViewClass>! { return ptr?.assumingMemoryBound(to: GtkIconViewClass.self) }


    @inlinable var parentClass: GtkContainerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var itemActivated is unavailable because item_activated is void

    // var selectionChanged is unavailable because selection_changed is void

    // var selectAll is unavailable because select_all is void

    // var unselectAll is unavailable because unselect_all is void

    // var selectCursorItem is unavailable because select_cursor_item is void

    // var toggleCursorItem is unavailable because toggle_cursor_item is void

    // var moveCursor is unavailable because move_cursor is void

    // var activateCursorItem is unavailable because activate_cursor_item is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for ImageAccessible
public extension ImageAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `ImageAccessible`
    static var metatypeReference: GType { gtk_image_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkImageAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkImageAccessibleClass.self) }
    
    static var metatype: GtkImageAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ImageAccessibleClassRef? { ImageAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ImageAccessibleClass Record

/// The `ImageAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkImageAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ImageAccessibleClass`.
/// Alternatively, use `ImageAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ImageAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkImageAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkImageAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkImageAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `ImageAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ImageAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkImageAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ImageAccessibleClassProtocol` conformance.
/// Use `ImageAccessibleClassRef` only as an `unowned` reference to an existing `GtkImageAccessibleClass` instance.
///

public struct ImageAccessibleClassRef: ImageAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkImageAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ImageAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkImageAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkImageAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkImageAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkImageAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ImageAccessibleClassProtocol`
    @inlinable init<T: ImageAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ImageAccessibleClass Record: ImageAccessibleClassProtocol extension (methods and fields)
public extension ImageAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImageAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkImageAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkImageAccessibleClass.self) }


    @inlinable var parentClass: GtkWidgetAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for ImageCellAccessible
public extension ImageCellAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `ImageCellAccessible`
    static var metatypeReference: GType { gtk_image_cell_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkImageCellAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkImageCellAccessibleClass.self) }
    
    static var metatype: GtkImageCellAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ImageCellAccessibleClassRef? { ImageCellAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ImageCellAccessibleClass Record

/// The `ImageCellAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkImageCellAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ImageCellAccessibleClass`.
/// Alternatively, use `ImageCellAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ImageCellAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkImageCellAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkImageCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkImageCellAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `ImageCellAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ImageCellAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkImageCellAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ImageCellAccessibleClassProtocol` conformance.
/// Use `ImageCellAccessibleClassRef` only as an `unowned` reference to an existing `GtkImageCellAccessibleClass` instance.
///

public struct ImageCellAccessibleClassRef: ImageCellAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkImageCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ImageCellAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkImageCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkImageCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkImageCellAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkImageCellAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ImageCellAccessibleClassProtocol`
    @inlinable init<T: ImageCellAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ImageCellAccessibleClass Record: ImageCellAccessibleClassProtocol extension (methods and fields)
public extension ImageCellAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImageCellAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkImageCellAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkImageCellAccessibleClass.self) }


    @inlinable var parentClass: GtkRendererCellAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Image
public extension ImageClassRef {
    
    /// This getter returns the GLib type identifier registered for `Image`
    static var metatypeReference: GType { gtk_image_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkImageClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkImageClass.self) }
    
    static var metatype: GtkImageClass? { metatypePointer?.pointee } 
    
    static var wrapper: ImageClassRef? { ImageClassRef(metatypePointer) }
    
    
}

// MARK: - ImageClass Record

/// The `ImageClassProtocol` protocol exposes the methods and properties of an underlying `GtkImageClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ImageClass`.
/// Alternatively, use `ImageClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ImageClassProtocol {
        /// Untyped pointer to the underlying `GtkImageClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkImageClass` instance.
    var _ptr: UnsafeMutablePointer<GtkImageClass>! { get }

    /// Required Initialiser for types conforming to `ImageClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ImageClassRef` type acts as a lightweight Swift reference to an underlying `GtkImageClass` instance.
/// It exposes methods that can operate on this data type through `ImageClassProtocol` conformance.
/// Use `ImageClassRef` only as an `unowned` reference to an existing `GtkImageClass` instance.
///

public struct ImageClassRef: ImageClassProtocol {
        /// Untyped pointer to the underlying `GtkImageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ImageClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkImageClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkImageClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkImageClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkImageClass>?) {
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

    /// Reference intialiser for a related type that implements `ImageClassProtocol`
    @inlinable init<T: ImageClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ImageClass Record: ImageClassProtocol extension (methods and fields)
public extension ImageClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImageClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkImageClass>! { return ptr?.assumingMemoryBound(to: GtkImageClass.self) }


    @inlinable var parentClass: GtkMiscClass {
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



/// Metatype/GType declaration for ImageMenuItem
public extension ImageMenuItemClassRef {
    
    /// This getter returns the GLib type identifier registered for `ImageMenuItem`
    static var metatypeReference: GType { gtk_image_menu_item_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkImageMenuItemClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkImageMenuItemClass.self) }
    
    static var metatype: GtkImageMenuItemClass? { metatypePointer?.pointee } 
    
    static var wrapper: ImageMenuItemClassRef? { ImageMenuItemClassRef(metatypePointer) }
    
    
}

// MARK: - ImageMenuItemClass Record

/// The `ImageMenuItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkImageMenuItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ImageMenuItemClass`.
/// Alternatively, use `ImageMenuItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ImageMenuItemClassProtocol {
        /// Untyped pointer to the underlying `GtkImageMenuItemClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkImageMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkImageMenuItemClass>! { get }

    /// Required Initialiser for types conforming to `ImageMenuItemClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ImageMenuItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkImageMenuItemClass` instance.
/// It exposes methods that can operate on this data type through `ImageMenuItemClassProtocol` conformance.
/// Use `ImageMenuItemClassRef` only as an `unowned` reference to an existing `GtkImageMenuItemClass` instance.
///

public struct ImageMenuItemClassRef: ImageMenuItemClassProtocol {
        /// Untyped pointer to the underlying `GtkImageMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ImageMenuItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkImageMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkImageMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkImageMenuItemClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkImageMenuItemClass>?) {
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

    /// Reference intialiser for a related type that implements `ImageMenuItemClassProtocol`
    @inlinable init<T: ImageMenuItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ImageMenuItemClass Record: ImageMenuItemClassProtocol extension (methods and fields)
public extension ImageMenuItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImageMenuItemClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkImageMenuItemClass>! { return ptr?.assumingMemoryBound(to: GtkImageMenuItemClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkMenuItemClass {
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



/// Metatype/GType declaration for InfoBar
public extension InfoBarClassRef {
    
    /// This getter returns the GLib type identifier registered for `InfoBar`
    static var metatypeReference: GType { gtk_info_bar_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkInfoBarClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkInfoBarClass.self) }
    
    static var metatype: GtkInfoBarClass? { metatypePointer?.pointee } 
    
    static var wrapper: InfoBarClassRef? { InfoBarClassRef(metatypePointer) }
    
    
}

// MARK: - InfoBarClass Record

/// The `InfoBarClassProtocol` protocol exposes the methods and properties of an underlying `GtkInfoBarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InfoBarClass`.
/// Alternatively, use `InfoBarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol InfoBarClassProtocol {
        /// Untyped pointer to the underlying `GtkInfoBarClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkInfoBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkInfoBarClass>! { get }

    /// Required Initialiser for types conforming to `InfoBarClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `InfoBarClassRef` type acts as a lightweight Swift reference to an underlying `GtkInfoBarClass` instance.
/// It exposes methods that can operate on this data type through `InfoBarClassProtocol` conformance.
/// Use `InfoBarClassRef` only as an `unowned` reference to an existing `GtkInfoBarClass` instance.
///

public struct InfoBarClassRef: InfoBarClassProtocol {
        /// Untyped pointer to the underlying `GtkInfoBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InfoBarClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkInfoBarClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkInfoBarClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkInfoBarClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkInfoBarClass>?) {
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

    /// Reference intialiser for a related type that implements `InfoBarClassProtocol`
    @inlinable init<T: InfoBarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: InfoBarClass Record: InfoBarClassProtocol extension (methods and fields)
public extension InfoBarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkInfoBarClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkInfoBarClass>! { return ptr?.assumingMemoryBound(to: GtkInfoBarClass.self) }


    @inlinable var parentClass: GtkBoxClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var response is unavailable because response is void

    // var close is unavailable because close is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for Invisible
public extension InvisibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `Invisible`
    static var metatypeReference: GType { gtk_invisible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkInvisibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkInvisibleClass.self) }
    
    static var metatype: GtkInvisibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: InvisibleClassRef? { InvisibleClassRef(metatypePointer) }
    
    
}

// MARK: - InvisibleClass Record

/// The `InvisibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkInvisibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InvisibleClass`.
/// Alternatively, use `InvisibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol InvisibleClassProtocol {
        /// Untyped pointer to the underlying `GtkInvisibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkInvisibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkInvisibleClass>! { get }

    /// Required Initialiser for types conforming to `InvisibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `InvisibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkInvisibleClass` instance.
/// It exposes methods that can operate on this data type through `InvisibleClassProtocol` conformance.
/// Use `InvisibleClassRef` only as an `unowned` reference to an existing `GtkInvisibleClass` instance.
///

public struct InvisibleClassRef: InvisibleClassProtocol {
        /// Untyped pointer to the underlying `GtkInvisibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InvisibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkInvisibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkInvisibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkInvisibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkInvisibleClass>?) {
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

    /// Reference intialiser for a related type that implements `InvisibleClassProtocol`
    @inlinable init<T: InvisibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: InvisibleClass Record: InvisibleClassProtocol extension (methods and fields)
public extension InvisibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkInvisibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkInvisibleClass>! { return ptr?.assumingMemoryBound(to: GtkInvisibleClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
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



/// Metatype/GType declaration for LabelAccessible
public extension LabelAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `LabelAccessible`
    static var metatypeReference: GType { gtk_label_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkLabelAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkLabelAccessibleClass.self) }
    
    static var metatype: GtkLabelAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: LabelAccessibleClassRef? { LabelAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - LabelAccessibleClass Record

/// The `LabelAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkLabelAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LabelAccessibleClass`.
/// Alternatively, use `LabelAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LabelAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkLabelAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLabelAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLabelAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `LabelAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `LabelAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkLabelAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `LabelAccessibleClassProtocol` conformance.
/// Use `LabelAccessibleClassRef` only as an `unowned` reference to an existing `GtkLabelAccessibleClass` instance.
///

public struct LabelAccessibleClassRef: LabelAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkLabelAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LabelAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLabelAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLabelAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLabelAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLabelAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `LabelAccessibleClassProtocol`
    @inlinable init<T: LabelAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: LabelAccessibleClass Record: LabelAccessibleClassProtocol extension (methods and fields)
public extension LabelAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLabelAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkLabelAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkLabelAccessibleClass.self) }


    @inlinable var parentClass: GtkWidgetAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



