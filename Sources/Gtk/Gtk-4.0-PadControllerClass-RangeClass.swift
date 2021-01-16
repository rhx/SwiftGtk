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

/// Metatype/GType declaration for PadController
public extension PadControllerClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_pad_controller_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPadControllerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPadControllerClass.self) }
    
    static var metatype: GtkPadControllerClass? { metatypePointer?.pointee } 
    
    static var wrapper: PadControllerClassRef? { PadControllerClassRef(metatypePointer) }
    
    
}

// MARK: - PadControllerClass Record

/// The `PadControllerClassProtocol` protocol exposes the methods and properties of an underlying `GtkPadControllerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PadControllerClass`.
/// Alternatively, use `PadControllerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PadControllerClassProtocol {
        /// Untyped pointer to the underlying `GtkPadControllerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPadControllerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPadControllerClass>! { get }

}

/// The `PadControllerClassRef` type acts as a lightweight Swift reference to an underlying `GtkPadControllerClass` instance.
/// It exposes methods that can operate on this data type through `PadControllerClassProtocol` conformance.
/// Use `PadControllerClassRef` only as an `unowned` reference to an existing `GtkPadControllerClass` instance.
///

public struct PadControllerClassRef: PadControllerClassProtocol {
        /// Untyped pointer to the underlying `GtkPadControllerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PadControllerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPadControllerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPadControllerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPadControllerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPadControllerClass>?) {
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

    /// Reference intialiser for a related type that implements `PadControllerClassProtocol`
    @inlinable init<T: PadControllerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PadControllerClass Record: PadControllerClassProtocol extension (methods and fields)
public extension PadControllerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPadControllerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPadControllerClass>! { return ptr?.assumingMemoryBound(to: GtkPadControllerClass.self) }



}



// MARK: - PageRange Record

/// The `PageRangeProtocol` protocol exposes the methods and properties of an underlying `GtkPageRange` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PageRange`.
/// Alternatively, use `PageRangeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// See also `gtk_print_settings_set_page_ranges()`.
public protocol PageRangeProtocol {
        /// Untyped pointer to the underlying `GtkPageRange` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPageRange` instance.
    var _ptr: UnsafeMutablePointer<GtkPageRange>! { get }

}

/// The `PageRangeRef` type acts as a lightweight Swift reference to an underlying `GtkPageRange` instance.
/// It exposes methods that can operate on this data type through `PageRangeProtocol` conformance.
/// Use `PageRangeRef` only as an `unowned` reference to an existing `GtkPageRange` instance.
///
/// See also `gtk_print_settings_set_page_ranges()`.
public struct PageRangeRef: PageRangeProtocol {
        /// Untyped pointer to the underlying `GtkPageRange` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PageRangeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPageRange>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPageRange>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPageRange>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPageRange>?) {
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

    /// Reference intialiser for a related type that implements `PageRangeProtocol`
    @inlinable init<T: PageRangeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PageRange` type acts as an owner of an underlying `GtkPageRange` instance.
/// It provides the methods that can operate on this data type through `PageRangeProtocol` conformance.
/// Use `PageRange` as a strong reference or owner of a `GtkPageRange` instance.
///
/// See also `gtk_print_settings_set_page_ranges()`.
open class PageRange: PageRangeProtocol {
        /// Untyped pointer to the underlying `GtkPageRange` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageRange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPageRange>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageRange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPageRange>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageRange` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageRange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageRange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPageRange>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageRange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPageRange>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkPageRange` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PageRange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPageRange>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkPageRange, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `PageRangeProtocol`
    /// `GtkPageRange` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PageRangeProtocol`
    @inlinable public init<T: PageRangeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkPageRange, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkPageRange`.
    deinit {
        // no reference counting for GtkPageRange, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkPageRange, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkPageRange, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkPageRange, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageRangeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkPageRange, cannot ref(_ptr)
    }



}

// MARK: no PageRange properties

// MARK: PageRange has no signals// MARK: PageRange Record: PageRangeProtocol extension (methods and fields)
public extension PageRangeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPageRange` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPageRange>! { return ptr?.assumingMemoryBound(to: GtkPageRange.self) }


    /// start of page range.
    @inlinable var start: gint {
        /// start of page range.
        get {
            let rv = _ptr.pointee.start
            return rv
        }
        /// start of page range.
         set {
            _ptr.pointee.start = newValue
        }
    }

    /// end of page range.
    @inlinable var end: gint {
        /// end of page range.
        get {
            let rv = _ptr.pointee.end
            return rv
        }
        /// end of page range.
         set {
            _ptr.pointee.end = newValue
        }
    }

}



// MARK: - PaperSize Record

/// The `PaperSizeProtocol` protocol exposes the methods and properties of an underlying `GtkPaperSize` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PaperSize`.
/// Alternatively, use `PaperSizeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkPaperSize handles paper sizes. It uses the standard called
/// [PWG 5101.1-2002 PWG: Standard for Media Standardized Names](http://www.pwg.org/standards.html)
/// to name the paper sizes (and to get the data for the page sizes).
/// In addition to standard paper sizes, GtkPaperSize allows to
/// construct custom paper sizes with arbitrary dimensions.
/// 
/// The `GtkPaperSize` object stores not only the dimensions (width
/// and height) of a paper size and its name, it also provides
/// default [print margins](#print-margins).
public protocol PaperSizeProtocol {
        /// Untyped pointer to the underlying `GtkPaperSize` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPaperSize` instance.
    var paper_size_ptr: UnsafeMutablePointer<GtkPaperSize>! { get }

}

/// The `PaperSizeRef` type acts as a lightweight Swift reference to an underlying `GtkPaperSize` instance.
/// It exposes methods that can operate on this data type through `PaperSizeProtocol` conformance.
/// Use `PaperSizeRef` only as an `unowned` reference to an existing `GtkPaperSize` instance.
///
/// GtkPaperSize handles paper sizes. It uses the standard called
/// [PWG 5101.1-2002 PWG: Standard for Media Standardized Names](http://www.pwg.org/standards.html)
/// to name the paper sizes (and to get the data for the page sizes).
/// In addition to standard paper sizes, GtkPaperSize allows to
/// construct custom paper sizes with arbitrary dimensions.
/// 
/// The `GtkPaperSize` object stores not only the dimensions (width
/// and height) of a paper size and its name, it also provides
/// default [print margins](#print-margins).
public struct PaperSizeRef: PaperSizeProtocol {
        /// Untyped pointer to the underlying `GtkPaperSize` instance.
    /// For type-safe access, use the generated, typed pointer `paper_size_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PaperSizeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPaperSize>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPaperSize>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPaperSize>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPaperSize>?) {
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

    /// Reference intialiser for a related type that implements `PaperSizeProtocol`
    @inlinable init<T: PaperSizeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkPaperSize` object by parsing a
    /// [PWG 5101.1-2002](ftp://ftp.pwg.org/pub/pwg/candidates/cs-pwgmsn10-20020226-5101.1.pdf)
    /// paper name.
    /// 
    /// If `name` is `nil`, the default paper size is returned,
    /// see `gtk_paper_size_get_default()`.
    @inlinable init( name: UnsafePointer<CChar>? = nil) {
        let rv = gtk_paper_size_new(name)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPaperSize` object with the
    /// given parameters.
    @inlinable init(custom name: UnsafePointer<CChar>!, displayName: UnsafePointer<CChar>!, width: CDouble, height: CDouble, unit: GtkUnit) {
        let rv = gtk_paper_size_new_custom(name, displayName, width, height, unit)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Deserialize a paper size from an a{sv} variant in
    /// the format produced by `gtk_paper_size_to_gvariant()`.
    @inlinable init<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) {
        let rv = gtk_paper_size_new_from_gvariant(variant.variant_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPaperSize` object by using
    /// IPP information.
    /// 
    /// If `ipp_name` is not a recognized paper name,
    /// `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable init(ipp ippName: UnsafePointer<CChar>!, width: CDouble, height: CDouble) {
        let rv = gtk_paper_size_new_from_ipp(ippName, width, height)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Reads a paper size from the group `group_name` in the key file
    /// `key_file`.
    @inlinable init<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gtk_paper_size_new_from_key_file(keyFile.key_file_ptr, groupName, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPaperSize` object by using
    /// PPD information.
    /// 
    /// If `ppd_name` is not a recognized PPD paper name,
    /// `ppd_display_name`, `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable init(ppd ppdName: UnsafePointer<CChar>!, ppdDisplayName: UnsafePointer<CChar>!, width: CDouble, height: CDouble) {
        let rv = gtk_paper_size_new_from_ppd(ppdName, ppdDisplayName, width, height)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkPaperSize` object with the
    /// given parameters.
    @inlinable static func new(custom name: UnsafePointer<CChar>!, displayName: UnsafePointer<CChar>!, width: CDouble, height: CDouble, unit: GtkUnit) -> PaperSizeRef! {
        guard let rv = PaperSizeRef(gconstpointer: gconstpointer(gtk_paper_size_new_custom(name, displayName, width, height, unit))) else { return nil }
        return rv
    }

    /// Deserialize a paper size from an a{sv} variant in
    /// the format produced by `gtk_paper_size_to_gvariant()`.
    @inlinable static func newFromG<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) -> PaperSizeRef! {
        guard let rv = PaperSizeRef(gconstpointer: gconstpointer(gtk_paper_size_new_from_gvariant(variant.variant_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GtkPaperSize` object by using
    /// IPP information.
    /// 
    /// If `ipp_name` is not a recognized paper name,
    /// `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable static func newFrom(ipp ippName: UnsafePointer<CChar>!, width: CDouble, height: CDouble) -> PaperSizeRef! {
        guard let rv = PaperSizeRef(gconstpointer: gconstpointer(gtk_paper_size_new_from_ipp(ippName, width, height))) else { return nil }
        return rv
    }

    /// Reads a paper size from the group `group_name` in the key file
    /// `key_file`.
    @inlinable static func newFrom<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) throws -> PaperSizeRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PaperSizeRef(gconstpointer: gconstpointer(gtk_paper_size_new_from_key_file(keyFile.key_file_ptr, groupName, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new `GtkPaperSize` object by using
    /// PPD information.
    /// 
    /// If `ppd_name` is not a recognized PPD paper name,
    /// `ppd_display_name`, `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable static func newFrom(ppd ppdName: UnsafePointer<CChar>!, ppdDisplayName: UnsafePointer<CChar>!, width: CDouble, height: CDouble) -> PaperSizeRef! {
        guard let rv = PaperSizeRef(gconstpointer: gconstpointer(gtk_paper_size_new_from_ppd(ppdName, ppdDisplayName, width, height))) else { return nil }
        return rv
    }
}

/// The `PaperSize` type acts as an owner of an underlying `GtkPaperSize` instance.
/// It provides the methods that can operate on this data type through `PaperSizeProtocol` conformance.
/// Use `PaperSize` as a strong reference or owner of a `GtkPaperSize` instance.
///
/// GtkPaperSize handles paper sizes. It uses the standard called
/// [PWG 5101.1-2002 PWG: Standard for Media Standardized Names](http://www.pwg.org/standards.html)
/// to name the paper sizes (and to get the data for the page sizes).
/// In addition to standard paper sizes, GtkPaperSize allows to
/// construct custom paper sizes with arbitrary dimensions.
/// 
/// The `GtkPaperSize` object stores not only the dimensions (width
/// and height) of a paper size and its name, it also provides
/// default [print margins](#print-margins).
open class PaperSize: PaperSizeProtocol {
        /// Untyped pointer to the underlying `GtkPaperSize` instance.
    /// For type-safe access, use the generated, typed pointer `paper_size_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PaperSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPaperSize>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PaperSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPaperSize>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PaperSize` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PaperSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PaperSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPaperSize>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PaperSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPaperSize>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkPaperSize` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PaperSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPaperSize>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkPaperSize, cannot ref(paper_size_ptr)
    }

    /// Reference intialiser for a related type that implements `PaperSizeProtocol`
    /// `GtkPaperSize` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PaperSizeProtocol`
    @inlinable public init<T: PaperSizeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkPaperSize, cannot ref(paper_size_ptr)
    }

    /// Do-nothing destructor for `GtkPaperSize`.
    deinit {
        // no reference counting for GtkPaperSize, cannot unref(paper_size_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkPaperSize, cannot ref(paper_size_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkPaperSize, cannot ref(paper_size_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkPaperSize, cannot ref(paper_size_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaperSizeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkPaperSize, cannot ref(paper_size_ptr)
    }

    /// Creates a new `GtkPaperSize` object by parsing a
    /// [PWG 5101.1-2002](ftp://ftp.pwg.org/pub/pwg/candidates/cs-pwgmsn10-20020226-5101.1.pdf)
    /// paper name.
    /// 
    /// If `name` is `nil`, the default paper size is returned,
    /// see `gtk_paper_size_get_default()`.
    @inlinable public init( name: UnsafePointer<CChar>? = nil) {
        let rv = gtk_paper_size_new(name)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPaperSize` object with the
    /// given parameters.
    @inlinable public init(custom name: UnsafePointer<CChar>!, displayName: UnsafePointer<CChar>!, width: CDouble, height: CDouble, unit: GtkUnit) {
        let rv = gtk_paper_size_new_custom(name, displayName, width, height, unit)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Deserialize a paper size from an a{sv} variant in
    /// the format produced by `gtk_paper_size_to_gvariant()`.
    @inlinable public init<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) {
        let rv = gtk_paper_size_new_from_gvariant(variant.variant_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPaperSize` object by using
    /// IPP information.
    /// 
    /// If `ipp_name` is not a recognized paper name,
    /// `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable public init(ipp ippName: UnsafePointer<CChar>!, width: CDouble, height: CDouble) {
        let rv = gtk_paper_size_new_from_ipp(ippName, width, height)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Reads a paper size from the group `group_name` in the key file
    /// `key_file`.
    @inlinable public init<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gtk_paper_size_new_from_key_file(keyFile.key_file_ptr, groupName, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPaperSize` object by using
    /// PPD information.
    /// 
    /// If `ppd_name` is not a recognized PPD paper name,
    /// `ppd_display_name`, `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable public init(ppd ppdName: UnsafePointer<CChar>!, ppdDisplayName: UnsafePointer<CChar>!, width: CDouble, height: CDouble) {
        let rv = gtk_paper_size_new_from_ppd(ppdName, ppdDisplayName, width, height)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPaperSize` object with the
    /// given parameters.
    @inlinable public static func new(custom name: UnsafePointer<CChar>!, displayName: UnsafePointer<CChar>!, width: CDouble, height: CDouble, unit: GtkUnit) -> PaperSize! {
        guard let rv = PaperSize(gconstpointer: gconstpointer(gtk_paper_size_new_custom(name, displayName, width, height, unit))) else { return nil }
        return rv
    }

    /// Deserialize a paper size from an a{sv} variant in
    /// the format produced by `gtk_paper_size_to_gvariant()`.
    @inlinable public static func newFromG<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) -> PaperSize! {
        guard let rv = PaperSize(gconstpointer: gconstpointer(gtk_paper_size_new_from_gvariant(variant.variant_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GtkPaperSize` object by using
    /// IPP information.
    /// 
    /// If `ipp_name` is not a recognized paper name,
    /// `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable public static func newFrom(ipp ippName: UnsafePointer<CChar>!, width: CDouble, height: CDouble) -> PaperSize! {
        guard let rv = PaperSize(gconstpointer: gconstpointer(gtk_paper_size_new_from_ipp(ippName, width, height))) else { return nil }
        return rv
    }

    /// Reads a paper size from the group `group_name` in the key file
    /// `key_file`.
    @inlinable public static func newFrom<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) throws -> PaperSize! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PaperSize(gconstpointer: gconstpointer(gtk_paper_size_new_from_key_file(keyFile.key_file_ptr, groupName, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new `GtkPaperSize` object by using
    /// PPD information.
    /// 
    /// If `ppd_name` is not a recognized PPD paper name,
    /// `ppd_display_name`, `width` and `height` are used to
    /// construct a custom `GtkPaperSize` object.
    @inlinable public static func newFrom(ppd ppdName: UnsafePointer<CChar>!, ppdDisplayName: UnsafePointer<CChar>!, width: CDouble, height: CDouble) -> PaperSize! {
        guard let rv = PaperSize(gconstpointer: gconstpointer(gtk_paper_size_new_from_ppd(ppdName, ppdDisplayName, width, height))) else { return nil }
        return rv
    }

}

// MARK: no PaperSize properties

// MARK: PaperSize has no signals// MARK: PaperSize Record: PaperSizeProtocol extension (methods and fields)
public extension PaperSizeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPaperSize` instance.
    @inlinable var paper_size_ptr: UnsafeMutablePointer<GtkPaperSize>! { return ptr?.assumingMemoryBound(to: GtkPaperSize.self) }

    /// Copies an existing `GtkPaperSize`.
    @inlinable func copy() -> PaperSizeRef! {
        guard let rv = PaperSizeRef(gconstpointer: gconstpointer(gtk_paper_size_copy(paper_size_ptr))) else { return nil }
        return rv
    }

    /// Free the given `GtkPaperSize` object.
    @inlinable func free() {
        gtk_paper_size_free(paper_size_ptr)
    
    }

    /// Gets the default bottom margin for the `GtkPaperSize`.
    @inlinable func getDefaultBottomMargin(unit: GtkUnit) -> CDouble {
        let rv = gtk_paper_size_get_default_bottom_margin(paper_size_ptr, unit)
        return rv
    }

    /// Gets the default left margin for the `GtkPaperSize`.
    @inlinable func getDefaultLeftMargin(unit: GtkUnit) -> CDouble {
        let rv = gtk_paper_size_get_default_left_margin(paper_size_ptr, unit)
        return rv
    }

    /// Gets the default right margin for the `GtkPaperSize`.
    @inlinable func getDefaultRightMargin(unit: GtkUnit) -> CDouble {
        let rv = gtk_paper_size_get_default_right_margin(paper_size_ptr, unit)
        return rv
    }

    /// Gets the default top margin for the `GtkPaperSize`.
    @inlinable func getDefaultTopMargin(unit: GtkUnit) -> CDouble {
        let rv = gtk_paper_size_get_default_top_margin(paper_size_ptr, unit)
        return rv
    }

    /// Gets the human-readable name of the `GtkPaperSize`.
    @inlinable func getDisplayName() -> String! {
        let rv = gtk_paper_size_get_display_name(paper_size_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the paper height of the `GtkPaperSize`, in
    /// units of `unit`.
    @inlinable func getHeight(unit: GtkUnit) -> CDouble {
        let rv = gtk_paper_size_get_height(paper_size_ptr, unit)
        return rv
    }

    /// Gets the name of the `GtkPaperSize`.
    @inlinable func getName() -> String! {
        let rv = gtk_paper_size_get_name(paper_size_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the PPD name of the `GtkPaperSize`, which
    /// may be `nil`.
    @inlinable func getPpdName() -> String! {
        let rv = gtk_paper_size_get_ppd_name(paper_size_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the paper width of the `GtkPaperSize`, in
    /// units of `unit`.
    @inlinable func getWidth(unit: GtkUnit) -> CDouble {
        let rv = gtk_paper_size_get_width(paper_size_ptr, unit)
        return rv
    }

    /// Compares two `GtkPaperSize` objects.
    @inlinable func isEqual<PaperSizeT: PaperSizeProtocol>(size2: PaperSizeT) -> Bool {
        let rv = ((gtk_paper_size_is_equal(paper_size_ptr, size2.paper_size_ptr)) != 0)
        return rv
    }

    /// Changes the dimensions of a `size` to `width` x `height`.
    @inlinable func setSize(width: CDouble, height: CDouble, unit: GtkUnit) {
        gtk_paper_size_set_size(paper_size_ptr, width, height, unit)
    
    }

    /// Serialize a paper size to an a{sv} variant.
    @inlinable func toGvariant() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(gtk_paper_size_to_gvariant(paper_size_ptr))
        return rv
    }

    /// This function adds the paper size from `size` to `key_file`.
    @inlinable func to<KeyFileT: GLib.KeyFileProtocol>(keyFile: KeyFileT, groupName: UnsafePointer<CChar>!) {
        gtk_paper_size_to_key_file(paper_size_ptr, keyFile.key_file_ptr, groupName)
    
    }
    /// Gets the human-readable name of the `GtkPaperSize`.
    @inlinable var displayName: String! {
        /// Gets the human-readable name of the `GtkPaperSize`.
        get {
            let rv = gtk_paper_size_get_display_name(paper_size_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Returns `true` if `size` is not a standard paper size.
    @inlinable var isCustom: Bool {
        /// Returns `true` if `size` is not a standard paper size.
        get {
            let rv = ((gtk_paper_size_is_custom(paper_size_ptr)) != 0)
            return rv
        }
    }

    /// Returns `true` if `size` is an IPP standard paper size.
    @inlinable var isIpp: Bool {
        /// Returns `true` if `size` is an IPP standard paper size.
        get {
            let rv = ((gtk_paper_size_is_ipp(paper_size_ptr)) != 0)
            return rv
        }
    }

    /// Gets the name of the `GtkPaperSize`.
    @inlinable var name: String! {
        /// Gets the name of the `GtkPaperSize`.
        get {
            let rv = gtk_paper_size_get_name(paper_size_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the PPD name of the `GtkPaperSize`, which
    /// may be `nil`.
    @inlinable var ppdName: String! {
        /// Gets the PPD name of the `GtkPaperSize`, which
        /// may be `nil`.
        get {
            let rv = gtk_paper_size_get_ppd_name(paper_size_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



/// Metatype/GType declaration for PasswordEntry
public extension PasswordEntryClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_password_entry_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPasswordEntryClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPasswordEntryClass.self) }
    
    static var metatype: GtkPasswordEntryClass? { metatypePointer?.pointee } 
    
    static var wrapper: PasswordEntryClassRef? { PasswordEntryClassRef(metatypePointer) }
    
    
}

// MARK: - PasswordEntryClass Record

/// The `PasswordEntryClassProtocol` protocol exposes the methods and properties of an underlying `GtkPasswordEntryClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PasswordEntryClass`.
/// Alternatively, use `PasswordEntryClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PasswordEntryClassProtocol {
        /// Untyped pointer to the underlying `GtkPasswordEntryClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPasswordEntryClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPasswordEntryClass>! { get }

}

/// The `PasswordEntryClassRef` type acts as a lightweight Swift reference to an underlying `GtkPasswordEntryClass` instance.
/// It exposes methods that can operate on this data type through `PasswordEntryClassProtocol` conformance.
/// Use `PasswordEntryClassRef` only as an `unowned` reference to an existing `GtkPasswordEntryClass` instance.
///

public struct PasswordEntryClassRef: PasswordEntryClassProtocol {
        /// Untyped pointer to the underlying `GtkPasswordEntryClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PasswordEntryClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPasswordEntryClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPasswordEntryClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPasswordEntryClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPasswordEntryClass>?) {
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

    /// Reference intialiser for a related type that implements `PasswordEntryClassProtocol`
    @inlinable init<T: PasswordEntryClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PasswordEntryClass Record: PasswordEntryClassProtocol extension (methods and fields)
public extension PasswordEntryClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPasswordEntryClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPasswordEntryClass>! { return ptr?.assumingMemoryBound(to: GtkPasswordEntryClass.self) }



}



/// Metatype/GType declaration for Picture
public extension PictureClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_picture_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPictureClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPictureClass.self) }
    
    static var metatype: GtkPictureClass? { metatypePointer?.pointee } 
    
    static var wrapper: PictureClassRef? { PictureClassRef(metatypePointer) }
    
    
}

// MARK: - PictureClass Record

/// The `PictureClassProtocol` protocol exposes the methods and properties of an underlying `GtkPictureClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PictureClass`.
/// Alternatively, use `PictureClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PictureClassProtocol {
        /// Untyped pointer to the underlying `GtkPictureClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPictureClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPictureClass>! { get }

}

/// The `PictureClassRef` type acts as a lightweight Swift reference to an underlying `GtkPictureClass` instance.
/// It exposes methods that can operate on this data type through `PictureClassProtocol` conformance.
/// Use `PictureClassRef` only as an `unowned` reference to an existing `GtkPictureClass` instance.
///

public struct PictureClassRef: PictureClassProtocol {
        /// Untyped pointer to the underlying `GtkPictureClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PictureClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPictureClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPictureClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPictureClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPictureClass>?) {
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

    /// Reference intialiser for a related type that implements `PictureClassProtocol`
    @inlinable init<T: PictureClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PictureClass Record: PictureClassProtocol extension (methods and fields)
public extension PictureClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPictureClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPictureClass>! { return ptr?.assumingMemoryBound(to: GtkPictureClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Popover
public extension PopoverClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_popover_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPopoverClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPopoverClass.self) }
    
    static var metatype: GtkPopoverClass? { metatypePointer?.pointee } 
    
    static var wrapper: PopoverClassRef? { PopoverClassRef(metatypePointer) }
    
    
}

// MARK: - PopoverClass Record

/// The `PopoverClassProtocol` protocol exposes the methods and properties of an underlying `GtkPopoverClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PopoverClass`.
/// Alternatively, use `PopoverClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PopoverClassProtocol {
        /// Untyped pointer to the underlying `GtkPopoverClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPopoverClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPopoverClass>! { get }

}

/// The `PopoverClassRef` type acts as a lightweight Swift reference to an underlying `GtkPopoverClass` instance.
/// It exposes methods that can operate on this data type through `PopoverClassProtocol` conformance.
/// Use `PopoverClassRef` only as an `unowned` reference to an existing `GtkPopoverClass` instance.
///

public struct PopoverClassRef: PopoverClassProtocol {
        /// Untyped pointer to the underlying `GtkPopoverClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PopoverClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPopoverClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPopoverClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPopoverClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPopoverClass>?) {
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

    /// Reference intialiser for a related type that implements `PopoverClassProtocol`
    @inlinable init<T: PopoverClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PopoverClass Record: PopoverClassProtocol extension (methods and fields)
public extension PopoverClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPopoverClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPopoverClass>! { return ptr?.assumingMemoryBound(to: GtkPopoverClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var closed is unavailable because closed is void

    // var activateDefault is unavailable because activate_default is void

    // var reserved is unavailable because reserved is private

}



/// Metatype/GType declaration for PrintOperation
public extension PrintOperationClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_print_operation_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPrintOperationClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPrintOperationClass.self) }
    
    static var metatype: GtkPrintOperationClass? { metatypePointer?.pointee } 
    
    static var wrapper: PrintOperationClassRef? { PrintOperationClassRef(metatypePointer) }
    
    
}

// MARK: - PrintOperationClass Record

/// The `PrintOperationClassProtocol` protocol exposes the methods and properties of an underlying `GtkPrintOperationClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PrintOperationClass`.
/// Alternatively, use `PrintOperationClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PrintOperationClassProtocol {
        /// Untyped pointer to the underlying `GtkPrintOperationClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPrintOperationClass` instance.
    var _ptr: UnsafeMutablePointer<GtkPrintOperationClass>! { get }

}

/// The `PrintOperationClassRef` type acts as a lightweight Swift reference to an underlying `GtkPrintOperationClass` instance.
/// It exposes methods that can operate on this data type through `PrintOperationClassProtocol` conformance.
/// Use `PrintOperationClassRef` only as an `unowned` reference to an existing `GtkPrintOperationClass` instance.
///

public struct PrintOperationClassRef: PrintOperationClassProtocol {
        /// Untyped pointer to the underlying `GtkPrintOperationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PrintOperationClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPrintOperationClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPrintOperationClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPrintOperationClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPrintOperationClass>?) {
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

    /// Reference intialiser for a related type that implements `PrintOperationClassProtocol`
    @inlinable init<T: PrintOperationClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PrintOperationClass Record: PrintOperationClassProtocol extension (methods and fields)
public extension PrintOperationClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPrintOperationClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPrintOperationClass>! { return ptr?.assumingMemoryBound(to: GtkPrintOperationClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var done is unavailable because done is void

    // var beginPrint is unavailable because begin_print is void

    // var paginate is unavailable because paginate is void

    // var requestPageSetup is unavailable because request_page_setup is void

    // var drawPage is unavailable because draw_page is void

    // var endPrint is unavailable because end_print is void

    // var statusChanged is unavailable because status_changed is void

    // var createCustomWidget is unavailable because create_custom_widget is void

    // var customWidgetApply is unavailable because custom_widget_apply is void

    // var preview is unavailable because preview is void

    // var updateCustomWidget is unavailable because update_custom_widget is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for PrintOperationPreview
public extension PrintOperationPreviewIfaceRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_print_operation_preview_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkPrintOperationPreviewIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkPrintOperationPreviewIface.self) }
    
    static var metatype: GtkPrintOperationPreviewIface? { metatypePointer?.pointee } 
    
    static var wrapper: PrintOperationPreviewIfaceRef? { PrintOperationPreviewIfaceRef(metatypePointer) }
    
    
}

// MARK: - PrintOperationPreviewIface Record

/// The `PrintOperationPreviewIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkPrintOperationPreviewIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PrintOperationPreviewIface`.
/// Alternatively, use `PrintOperationPreviewIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PrintOperationPreviewIfaceProtocol {
        /// Untyped pointer to the underlying `GtkPrintOperationPreviewIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPrintOperationPreviewIface` instance.
    var _ptr: UnsafeMutablePointer<GtkPrintOperationPreviewIface>! { get }

}

/// The `PrintOperationPreviewIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkPrintOperationPreviewIface` instance.
/// It exposes methods that can operate on this data type through `PrintOperationPreviewIfaceProtocol` conformance.
/// Use `PrintOperationPreviewIfaceRef` only as an `unowned` reference to an existing `GtkPrintOperationPreviewIface` instance.
///

public struct PrintOperationPreviewIfaceRef: PrintOperationPreviewIfaceProtocol {
        /// Untyped pointer to the underlying `GtkPrintOperationPreviewIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PrintOperationPreviewIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPrintOperationPreviewIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPrintOperationPreviewIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPrintOperationPreviewIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPrintOperationPreviewIface>?) {
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

    /// Reference intialiser for a related type that implements `PrintOperationPreviewIfaceProtocol`
    @inlinable init<T: PrintOperationPreviewIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PrintOperationPreviewIface Record: PrintOperationPreviewIfaceProtocol extension (methods and fields)
public extension PrintOperationPreviewIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPrintOperationPreviewIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkPrintOperationPreviewIface>! { return ptr?.assumingMemoryBound(to: GtkPrintOperationPreviewIface.self) }


    @inlinable var gIface: GTypeInterface {
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var ready is unavailable because ready is void

    // var gotPageSize is unavailable because got_page_size is void

    // var renderPage is unavailable because render_page is void

    // var isSelected is unavailable because is_selected is void

    // var endPreview is unavailable because end_preview is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

}



/// Metatype/GType declaration for Range
public extension RangeClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_range_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRangeClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRangeClass.self) }
    
    static var metatype: GtkRangeClass? { metatypePointer?.pointee } 
    
    static var wrapper: RangeClassRef? { RangeClassRef(metatypePointer) }
    
    
}

// MARK: - RangeClass Record

/// The `RangeClassProtocol` protocol exposes the methods and properties of an underlying `GtkRangeClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RangeClass`.
/// Alternatively, use `RangeClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RangeClassProtocol {
        /// Untyped pointer to the underlying `GtkRangeClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRangeClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRangeClass>! { get }

}

/// The `RangeClassRef` type acts as a lightweight Swift reference to an underlying `GtkRangeClass` instance.
/// It exposes methods that can operate on this data type through `RangeClassProtocol` conformance.
/// Use `RangeClassRef` only as an `unowned` reference to an existing `GtkRangeClass` instance.
///

public struct RangeClassRef: RangeClassProtocol {
        /// Untyped pointer to the underlying `GtkRangeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RangeClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRangeClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRangeClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRangeClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRangeClass>?) {
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

    /// Reference intialiser for a related type that implements `RangeClassProtocol`
    @inlinable init<T: RangeClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RangeClass Record: RangeClassProtocol extension (methods and fields)
public extension RangeClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRangeClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRangeClass>! { return ptr?.assumingMemoryBound(to: GtkRangeClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var valueChanged is unavailable because value_changed is void

    // var adjustBounds is unavailable because adjust_bounds is void

    // var moveSlider is unavailable because move_slider is void

    // var getRangeBorder is unavailable because get_range_border is void

    // var changeValue is unavailable because change_value is void

    // var padding is unavailable because padding is private

}



