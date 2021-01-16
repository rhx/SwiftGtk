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

// MARK: - PageSetup Class

/// The `PageSetupProtocol` protocol exposes the methods and properties of an underlying `GtkPageSetup` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PageSetup`.
/// Alternatively, use `PageSetupRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkPageSetup object stores the page size, orientation and margins.
/// The idea is that you can get one of these from the page setup dialog
/// and then pass it to the `GtkPrintOperation` when printing.
/// The benefit of splitting this out of the `GtkPrintSettings` is that
/// these affect the actual layout of the page, and thus need to be set
/// long before user prints.
/// 
/// ## Margins ## <a name="print-margins"></a>
/// The margins specified in this object are the “print margins”, i.e. the
/// parts of the page that the printer cannot print on. These are different
/// from the layout margins that a word processor uses; they are typically
/// used to determine the minimal size for the layout
/// margins.
/// 
/// To obtain a `GtkPageSetup` use `gtk_page_setup_new()` to get the defaults,
/// or use `gtk_print_run_page_setup_dialog()` to show the page setup dialog
/// and receive the resulting page setup.
/// 
/// ## A page setup dialog
/// 
/// (C Language Example):
/// ```C
/// static GtkPrintSettings *settings = NULL;
/// static GtkPageSetup *page_setup = NULL;
/// 
/// static void
/// do_page_setup (void)
/// {
///   GtkPageSetup *new_page_setup;
/// 
///   if (settings == NULL)
///     settings = gtk_print_settings_new ();
/// 
///   new_page_setup = gtk_print_run_page_setup_dialog (GTK_WINDOW (main_window),
///                                                     page_setup, settings);
/// 
///   if (page_setup)
///     g_object_unref (page_setup);
/// 
///   page_setup = new_page_setup;
/// }
/// ```
/// 
public protocol PageSetupProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkPageSetup` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPageSetup` instance.
    var page_setup_ptr: UnsafeMutablePointer<GtkPageSetup>! { get }

}

/// The `PageSetupRef` type acts as a lightweight Swift reference to an underlying `GtkPageSetup` instance.
/// It exposes methods that can operate on this data type through `PageSetupProtocol` conformance.
/// Use `PageSetupRef` only as an `unowned` reference to an existing `GtkPageSetup` instance.
///
/// A GtkPageSetup object stores the page size, orientation and margins.
/// The idea is that you can get one of these from the page setup dialog
/// and then pass it to the `GtkPrintOperation` when printing.
/// The benefit of splitting this out of the `GtkPrintSettings` is that
/// these affect the actual layout of the page, and thus need to be set
/// long before user prints.
/// 
/// ## Margins ## <a name="print-margins"></a>
/// The margins specified in this object are the “print margins”, i.e. the
/// parts of the page that the printer cannot print on. These are different
/// from the layout margins that a word processor uses; they are typically
/// used to determine the minimal size for the layout
/// margins.
/// 
/// To obtain a `GtkPageSetup` use `gtk_page_setup_new()` to get the defaults,
/// or use `gtk_print_run_page_setup_dialog()` to show the page setup dialog
/// and receive the resulting page setup.
/// 
/// ## A page setup dialog
/// 
/// (C Language Example):
/// ```C
/// static GtkPrintSettings *settings = NULL;
/// static GtkPageSetup *page_setup = NULL;
/// 
/// static void
/// do_page_setup (void)
/// {
///   GtkPageSetup *new_page_setup;
/// 
///   if (settings == NULL)
///     settings = gtk_print_settings_new ();
/// 
///   new_page_setup = gtk_print_run_page_setup_dialog (GTK_WINDOW (main_window),
///                                                     page_setup, settings);
/// 
///   if (page_setup)
///     g_object_unref (page_setup);
/// 
///   page_setup = new_page_setup;
/// }
/// ```
/// 
public struct PageSetupRef: PageSetupProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkPageSetup` instance.
    /// For type-safe access, use the generated, typed pointer `page_setup_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PageSetupRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPageSetup>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPageSetup>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPageSetup>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPageSetup>?) {
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

    /// Reference intialiser for a related type that implements `PageSetupProtocol`
    @inlinable init<T: PageSetupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: PageSetupProtocol>(_ other: T) -> PageSetupRef { PageSetupRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkPageSetup`.
    @inlinable init() {
        let rv = gtk_page_setup_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Reads the page setup from the file `file_name`. Returns a
    /// new `GtkPageSetup` object with the restored page setup,
    /// or `nil` if an error occurred. See `gtk_page_setup_to_file()`.
    @inlinable init(file fileName: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gtk_page_setup_new_from_file(fileName, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Desrialize a page setup from an a{sv} variant in
    /// the format produced by `gtk_page_setup_to_gvariant()`.
    @inlinable init<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) {
        let rv = gtk_page_setup_new_from_gvariant(variant.variant_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Reads the page setup from the group `group_name` in the key file
    /// `key_file`. Returns a new `GtkPageSetup` object with the restored
    /// page setup, or `nil` if an error occurred.
    @inlinable init<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gtk_page_setup_new_from_key_file(keyFile.key_file_ptr, groupName, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Reads the page setup from the file `file_name`. Returns a
    /// new `GtkPageSetup` object with the restored page setup,
    /// or `nil` if an error occurred. See `gtk_page_setup_to_file()`.
    @inlinable static func newFrom(file fileName: UnsafePointer<CChar>!) throws -> PageSetupRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PageSetupRef(gconstpointer: gconstpointer(gtk_page_setup_new_from_file(fileName, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Desrialize a page setup from an a{sv} variant in
    /// the format produced by `gtk_page_setup_to_gvariant()`.
    @inlinable static func newFromG<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) -> PageSetupRef! {
        guard let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_page_setup_new_from_gvariant(variant.variant_ptr))) else { return nil }
        return rv
    }

    /// Reads the page setup from the group `group_name` in the key file
    /// `key_file`. Returns a new `GtkPageSetup` object with the restored
    /// page setup, or `nil` if an error occurred.
    @inlinable static func newFrom<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) throws -> PageSetupRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PageSetupRef(gconstpointer: gconstpointer(gtk_page_setup_new_from_key_file(keyFile.key_file_ptr, groupName, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// The `PageSetup` type acts as a reference-counted owner of an underlying `GtkPageSetup` instance.
/// It provides the methods that can operate on this data type through `PageSetupProtocol` conformance.
/// Use `PageSetup` as a strong reference or owner of a `GtkPageSetup` instance.
///
/// A GtkPageSetup object stores the page size, orientation and margins.
/// The idea is that you can get one of these from the page setup dialog
/// and then pass it to the `GtkPrintOperation` when printing.
/// The benefit of splitting this out of the `GtkPrintSettings` is that
/// these affect the actual layout of the page, and thus need to be set
/// long before user prints.
/// 
/// ## Margins ## <a name="print-margins"></a>
/// The margins specified in this object are the “print margins”, i.e. the
/// parts of the page that the printer cannot print on. These are different
/// from the layout margins that a word processor uses; they are typically
/// used to determine the minimal size for the layout
/// margins.
/// 
/// To obtain a `GtkPageSetup` use `gtk_page_setup_new()` to get the defaults,
/// or use `gtk_print_run_page_setup_dialog()` to show the page setup dialog
/// and receive the resulting page setup.
/// 
/// ## A page setup dialog
/// 
/// (C Language Example):
/// ```C
/// static GtkPrintSettings *settings = NULL;
/// static GtkPageSetup *page_setup = NULL;
/// 
/// static void
/// do_page_setup (void)
/// {
///   GtkPageSetup *new_page_setup;
/// 
///   if (settings == NULL)
///     settings = gtk_print_settings_new ();
/// 
///   new_page_setup = gtk_print_run_page_setup_dialog (GTK_WINDOW (main_window),
///                                                     page_setup, settings);
/// 
///   if (page_setup)
///     g_object_unref (page_setup);
/// 
///   page_setup = new_page_setup;
/// }
/// ```
/// 
open class PageSetup: GLibObject.Object, PageSetupProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageSetup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPageSetup>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageSetup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPageSetup>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageSetup` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageSetup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageSetup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPageSetup>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PageSetup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPageSetup>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkPageSetup`.
    /// i.e., ownership is transferred to the `PageSetup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPageSetup>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PageSetupProtocol`
    /// Will retain `GtkPageSetup`.
    /// - Parameter other: an instance of a related type that implements `PageSetupProtocol`
    @inlinable public init<T: PageSetupProtocol>(pageSetup other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkPageSetup`.
    @inlinable public init() {
        let rv = gtk_page_setup_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Reads the page setup from the file `file_name`. Returns a
    /// new `GtkPageSetup` object with the restored page setup,
    /// or `nil` if an error occurred. See `gtk_page_setup_to_file()`.
    @inlinable public init(file fileName: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gtk_page_setup_new_from_file(fileName, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Desrialize a page setup from an a{sv} variant in
    /// the format produced by `gtk_page_setup_to_gvariant()`.
    @inlinable public init<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) {
        let rv = gtk_page_setup_new_from_gvariant(variant.variant_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Reads the page setup from the group `group_name` in the key file
    /// `key_file`. Returns a new `GtkPageSetup` object with the restored
    /// page setup, or `nil` if an error occurred.
    @inlinable public init<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gtk_page_setup_new_from_key_file(keyFile.key_file_ptr, groupName, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Reads the page setup from the file `file_name`. Returns a
    /// new `GtkPageSetup` object with the restored page setup,
    /// or `nil` if an error occurred. See `gtk_page_setup_to_file()`.
    @inlinable public static func newFrom(file fileName: UnsafePointer<CChar>!) throws -> PageSetup! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PageSetup(gconstpointer: gconstpointer(gtk_page_setup_new_from_file(fileName, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Desrialize a page setup from an a{sv} variant in
    /// the format produced by `gtk_page_setup_to_gvariant()`.
    @inlinable public static func newFromG<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) -> PageSetup! {
        guard let rv = PageSetup(gconstpointer: gconstpointer(gtk_page_setup_new_from_gvariant(variant.variant_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Reads the page setup from the group `group_name` in the key file
    /// `key_file`. Returns a new `GtkPageSetup` object with the restored
    /// page setup, or `nil` if an error occurred.
    @inlinable public static func newFrom<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) throws -> PageSetup! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PageSetup(gconstpointer: gconstpointer(gtk_page_setup_new_from_key_file(keyFile.key_file_ptr, groupName, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

// MARK: no PageSetup properties

// MARK: PageSetup has no signals// MARK: PageSetup Class: PageSetupProtocol extension (methods and fields)
public extension PageSetupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPageSetup` instance.
    @inlinable var page_setup_ptr: UnsafeMutablePointer<GtkPageSetup>! { return ptr?.assumingMemoryBound(to: GtkPageSetup.self) }

    /// Copies a `GtkPageSetup`.
    @inlinable func copy() -> PageSetupRef! {
        guard let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_page_setup_copy(page_setup_ptr))) else { return nil }
        return rv
    }

    /// Gets the bottom margin in units of `unit`.
    @inlinable func getBottomMargin(unit: GtkUnit) -> CDouble {
        let rv = gtk_page_setup_get_bottom_margin(page_setup_ptr, unit)
        return rv
    }

    /// Gets the left margin in units of `unit`.
    @inlinable func getLeftMargin(unit: GtkUnit) -> CDouble {
        let rv = gtk_page_setup_get_left_margin(page_setup_ptr, unit)
        return rv
    }

    /// Gets the page orientation of the `GtkPageSetup`.
    @inlinable func getOrientation() -> GtkPageOrientation {
        let rv = gtk_page_setup_get_orientation(page_setup_ptr)
        return rv
    }

    /// Returns the page height in units of `unit`.
    /// 
    /// Note that this function takes orientation and
    /// margins into consideration.
    /// See `gtk_page_setup_get_paper_height()`.
    @inlinable func getPageHeight(unit: GtkUnit) -> CDouble {
        let rv = gtk_page_setup_get_page_height(page_setup_ptr, unit)
        return rv
    }

    /// Returns the page width in units of `unit`.
    /// 
    /// Note that this function takes orientation and
    /// margins into consideration.
    /// See `gtk_page_setup_get_paper_width()`.
    @inlinable func getPageWidth(unit: GtkUnit) -> CDouble {
        let rv = gtk_page_setup_get_page_width(page_setup_ptr, unit)
        return rv
    }

    /// Returns the paper height in units of `unit`.
    /// 
    /// Note that this function takes orientation, but
    /// not margins into consideration.
    /// See `gtk_page_setup_get_page_height()`.
    @inlinable func getPaperHeight(unit: GtkUnit) -> CDouble {
        let rv = gtk_page_setup_get_paper_height(page_setup_ptr, unit)
        return rv
    }

    /// Gets the paper size of the `GtkPageSetup`.
    @inlinable func getPaperSize() -> PaperSizeRef! {
        let rv = PaperSizeRef(gconstpointer: gconstpointer(gtk_page_setup_get_paper_size(page_setup_ptr)))
        return rv
    }

    /// Returns the paper width in units of `unit`.
    /// 
    /// Note that this function takes orientation, but
    /// not margins into consideration.
    /// See `gtk_page_setup_get_page_width()`.
    @inlinable func getPaperWidth(unit: GtkUnit) -> CDouble {
        let rv = gtk_page_setup_get_paper_width(page_setup_ptr, unit)
        return rv
    }

    /// Gets the right margin in units of `unit`.
    @inlinable func getRightMargin(unit: GtkUnit) -> CDouble {
        let rv = gtk_page_setup_get_right_margin(page_setup_ptr, unit)
        return rv
    }

    /// Gets the top margin in units of `unit`.
    @inlinable func getTopMargin(unit: GtkUnit) -> CDouble {
        let rv = gtk_page_setup_get_top_margin(page_setup_ptr, unit)
        return rv
    }

    /// Reads the page setup from the file `file_name`.
    /// See `gtk_page_setup_to_file()`.
    @inlinable func loadFile(fileName: UnsafePointer<CChar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_page_setup_load_file(page_setup_ptr, fileName, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads the page setup from the group `group_name` in the key file
    /// `key_file`.
    @inlinable func load<KeyFileT: GLib.KeyFileProtocol>(keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_page_setup_load_key_file(page_setup_ptr, keyFile.key_file_ptr, groupName, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the bottom margin of the `GtkPageSetup`.
    @inlinable func setBottom(margin: CDouble, unit: GtkUnit) {
        gtk_page_setup_set_bottom_margin(page_setup_ptr, margin, unit)
    
    }

    /// Sets the left margin of the `GtkPageSetup`.
    @inlinable func setLeft(margin: CDouble, unit: GtkUnit) {
        gtk_page_setup_set_left_margin(page_setup_ptr, margin, unit)
    
    }

    /// Sets the page orientation of the `GtkPageSetup`.
    @inlinable func set(orientation: GtkPageOrientation) {
        gtk_page_setup_set_orientation(page_setup_ptr, orientation)
    
    }

    /// Sets the paper size of the `GtkPageSetup` without
    /// changing the margins. See
    /// `gtk_page_setup_set_paper_size_and_default_margins()`.
    @inlinable func setPaper<PaperSizeT: PaperSizeProtocol>(size: PaperSizeT) {
        gtk_page_setup_set_paper_size(page_setup_ptr, size.paper_size_ptr)
    
    }

    /// Sets the paper size of the `GtkPageSetup` and modifies
    /// the margins according to the new paper size.
    @inlinable func setPaperSizeAndDefaultMargins<PaperSizeT: PaperSizeProtocol>(size: PaperSizeT) {
        gtk_page_setup_set_paper_size_and_default_margins(page_setup_ptr, size.paper_size_ptr)
    
    }

    /// Sets the right margin of the `GtkPageSetup`.
    @inlinable func setRight(margin: CDouble, unit: GtkUnit) {
        gtk_page_setup_set_right_margin(page_setup_ptr, margin, unit)
    
    }

    /// Sets the top margin of the `GtkPageSetup`.
    @inlinable func setTop(margin: CDouble, unit: GtkUnit) {
        gtk_page_setup_set_top_margin(page_setup_ptr, margin, unit)
    
    }

    /// This function saves the information from `setup` to `file_name`.
    @inlinable func toFile(fileName: UnsafePointer<CChar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_page_setup_to_file(page_setup_ptr, fileName, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Serialize page setup to an a{sv} variant.
    @inlinable func toGvariant() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(gtk_page_setup_to_gvariant(page_setup_ptr))
        return rv
    }

    /// This function adds the page setup from `setup` to `key_file`.
    @inlinable func to<KeyFileT: GLib.KeyFileProtocol>(keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) {
        gtk_page_setup_to_key_file(page_setup_ptr, keyFile.key_file_ptr, groupName)
    
    }

    /// Runs a page setup dialog, letting the user modify the values from
    /// `page_setup`. If the user cancels the dialog, the returned `GtkPageSetup`
    /// is identical to the passed in `page_setup`, otherwise it contains the
    /// modifications done in the dialog.
    /// 
    /// Note that this function may use a recursive mainloop to show the page
    /// setup dialog. See `gtk_print_run_page_setup_dialog_async()` if this is
    /// a problem.
    @inlinable func printRunPageSetupDialog<PrintSettingsT: PrintSettingsProtocol>(parent: WindowRef? = nil, settings: PrintSettingsT) -> PageSetupRef! {
        guard let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_print_run_page_setup_dialog(parent?.window_ptr, page_setup_ptr, settings.print_settings_ptr))) else { return nil }
        return rv
    }
    /// Runs a page setup dialog, letting the user modify the values from
    /// `page_setup`. If the user cancels the dialog, the returned `GtkPageSetup`
    /// is identical to the passed in `page_setup`, otherwise it contains the
    /// modifications done in the dialog.
    /// 
    /// Note that this function may use a recursive mainloop to show the page
    /// setup dialog. See `gtk_print_run_page_setup_dialog_async()` if this is
    /// a problem.
    @inlinable func printRunPageSetupDialog<PrintSettingsT: PrintSettingsProtocol, WindowT: WindowProtocol>(parent: WindowT?, settings: PrintSettingsT) -> PageSetupRef! {
        guard let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_print_run_page_setup_dialog(parent?.window_ptr, page_setup_ptr, settings.print_settings_ptr))) else { return nil }
        return rv
    }

    /// Runs a page setup dialog, letting the user modify the values from `page_setup`.
    /// 
    /// In contrast to `gtk_print_run_page_setup_dialog()`, this function  returns after
    /// showing the page setup dialog on platforms that support this, and calls `done_cb`
    /// from a signal handler for the `response` signal of the dialog.
    @inlinable func printRunPageSetupDialogAsync<PrintSettingsT: PrintSettingsProtocol>(parent: WindowRef? = nil, settings: PrintSettingsT, doneCb: GtkPageSetupDoneFunc?, data: gpointer! = nil) {
        gtk_print_run_page_setup_dialog_async(parent?.window_ptr, page_setup_ptr, settings.print_settings_ptr, doneCb, data)
    
    }
    /// Runs a page setup dialog, letting the user modify the values from `page_setup`.
    /// 
    /// In contrast to `gtk_print_run_page_setup_dialog()`, this function  returns after
    /// showing the page setup dialog on platforms that support this, and calls `done_cb`
    /// from a signal handler for the `response` signal of the dialog.
    @inlinable func printRunPageSetupDialogAsync<PrintSettingsT: PrintSettingsProtocol, WindowT: WindowProtocol>(parent: WindowT?, settings: PrintSettingsT, doneCb: GtkPageSetupDoneFunc?, data: gpointer! = nil) {
        gtk_print_run_page_setup_dialog_async(parent?.window_ptr, page_setup_ptr, settings.print_settings_ptr, doneCb, data)
    
    }
    /// Gets the page orientation of the `GtkPageSetup`.
    @inlinable var orientation: GtkPageOrientation {
        /// Gets the page orientation of the `GtkPageSetup`.
        get {
            let rv = gtk_page_setup_get_orientation(page_setup_ptr)
            return rv
        }
        /// Sets the page orientation of the `GtkPageSetup`.
        nonmutating set {
            gtk_page_setup_set_orientation(page_setup_ptr, newValue)
        }
    }

    /// Gets the paper size of the `GtkPageSetup`.
    @inlinable var paperSize: PaperSizeRef! {
        /// Gets the paper size of the `GtkPageSetup`.
        get {
            let rv = PaperSizeRef(gconstpointer: gconstpointer(gtk_page_setup_get_paper_size(page_setup_ptr)))
            return rv
        }
        /// Sets the paper size of the `GtkPageSetup` without
        /// changing the margins. See
        /// `gtk_page_setup_set_paper_size_and_default_margins()`.
        nonmutating set {
            gtk_page_setup_set_paper_size(page_setup_ptr, UnsafeMutablePointer<GtkPaperSize>(newValue?.paper_size_ptr))
        }
    }


}



// MARK: - Paned Class

/// The `PanedProtocol` protocol exposes the methods and properties of an underlying `GtkPaned` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Paned`.
/// Alternatively, use `PanedRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkPaned` has two panes, arranged either
/// horizontally or vertically. The division between
/// the two panes is adjustable by the user by dragging
/// a handle.
/// 
/// Child widgets are added to the panes of the widget with
/// `gtk_paned_set_start_child()` and `gtk_paned_set_end_child()`.
/// The division between the two children is set by default
/// from the size requests of the children, but it can be adjusted by the
/// user.
/// 
/// A paned widget draws a separator between the two child widgets and a
/// small handle that the user can drag to adjust the division. It does not
/// draw any relief around the children or around the separator. (The space
/// in which the separator is called the gutter.) Often, it is useful to put
/// each child inside a `GtkFrame` so that the gutter appears as a ridge.
/// No separator is drawn if one of the children is missing.
/// 
/// Each child has two options that can be set, `resize` and `shrink`. If
/// `resize` is true, then when the `GtkPaned` is resized, that child will
/// expand or shrink along with the paned widget. If `shrink` is true, then
/// that child can be made smaller than its requisition by the user.
/// Setting `shrink` to `false` allows the application to set a minimum size.
/// If `resize` is false for both children, then this is treated as if
/// `resize` is true for both children.
/// 
/// The application can set the position of the slider as if it were set
/// by the user, by calling `gtk_paned_set_position()`.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// paned
/// ├── <child>
/// ├── separator[.wide]
/// ╰── <child>
/// ```
/// 
/// GtkPaned has a main CSS node with name paned, and a subnode for
/// the separator with name separator. The subnode gets a .wide style
/// class when the paned is supposed to be wide.
/// 
/// In horizontal orientation, the nodes are arranged based on the text
/// direction, so in left-to-right mode, :first-child will select the
/// leftmost child, while it will select the rightmost child in
/// RTL layouts.
/// 
/// ## Creating a paned widget with minimum sizes.
/// 
/// (C Language Example):
/// ```C
/// GtkWidget *hpaned = gtk_paned_new (GTK_ORIENTATION_HORIZONTAL);
/// GtkWidget *frame1 = gtk_frame_new (NULL);
/// GtkWidget *frame2 = gtk_frame_new (NULL);
/// 
/// gtk_widget_set_size_request (hpaned, 200, -1);
/// 
/// gtk_paned_set_start_child (GTK_PANED (hpaned), frame1);
/// gtk_paned_set_start_child_resize (GTK_PANED (hpaned), TRUE);
/// gtk_paned_set_start_child_shrink (GTK_PANED (hpaned), FALSE);
/// gtk_widget_set_size_request (frame1, 50, -1);
/// 
/// gtk_paned_set_end_child (GTK_PANED (hpaned), frame2);
/// gtk_paned_set_end_child_resize (GTK_PANED (hpaned), FALSE);
/// gtk_paned_set_end_child_shrink (GTK_PANED (hpaned), FALSE);
/// gtk_widget_set_size_request (frame2, 50, -1);
/// ```
/// 
public protocol PanedProtocol: WidgetProtocol, OrientableProtocol {
        /// Untyped pointer to the underlying `GtkPaned` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPaned` instance.
    var paned_ptr: UnsafeMutablePointer<GtkPaned>! { get }

}

/// The `PanedRef` type acts as a lightweight Swift reference to an underlying `GtkPaned` instance.
/// It exposes methods that can operate on this data type through `PanedProtocol` conformance.
/// Use `PanedRef` only as an `unowned` reference to an existing `GtkPaned` instance.
///
/// `GtkPaned` has two panes, arranged either
/// horizontally or vertically. The division between
/// the two panes is adjustable by the user by dragging
/// a handle.
/// 
/// Child widgets are added to the panes of the widget with
/// `gtk_paned_set_start_child()` and `gtk_paned_set_end_child()`.
/// The division between the two children is set by default
/// from the size requests of the children, but it can be adjusted by the
/// user.
/// 
/// A paned widget draws a separator between the two child widgets and a
/// small handle that the user can drag to adjust the division. It does not
/// draw any relief around the children or around the separator. (The space
/// in which the separator is called the gutter.) Often, it is useful to put
/// each child inside a `GtkFrame` so that the gutter appears as a ridge.
/// No separator is drawn if one of the children is missing.
/// 
/// Each child has two options that can be set, `resize` and `shrink`. If
/// `resize` is true, then when the `GtkPaned` is resized, that child will
/// expand or shrink along with the paned widget. If `shrink` is true, then
/// that child can be made smaller than its requisition by the user.
/// Setting `shrink` to `false` allows the application to set a minimum size.
/// If `resize` is false for both children, then this is treated as if
/// `resize` is true for both children.
/// 
/// The application can set the position of the slider as if it were set
/// by the user, by calling `gtk_paned_set_position()`.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// paned
/// ├── <child>
/// ├── separator[.wide]
/// ╰── <child>
/// ```
/// 
/// GtkPaned has a main CSS node with name paned, and a subnode for
/// the separator with name separator. The subnode gets a .wide style
/// class when the paned is supposed to be wide.
/// 
/// In horizontal orientation, the nodes are arranged based on the text
/// direction, so in left-to-right mode, :first-child will select the
/// leftmost child, while it will select the rightmost child in
/// RTL layouts.
/// 
/// ## Creating a paned widget with minimum sizes.
/// 
/// (C Language Example):
/// ```C
/// GtkWidget *hpaned = gtk_paned_new (GTK_ORIENTATION_HORIZONTAL);
/// GtkWidget *frame1 = gtk_frame_new (NULL);
/// GtkWidget *frame2 = gtk_frame_new (NULL);
/// 
/// gtk_widget_set_size_request (hpaned, 200, -1);
/// 
/// gtk_paned_set_start_child (GTK_PANED (hpaned), frame1);
/// gtk_paned_set_start_child_resize (GTK_PANED (hpaned), TRUE);
/// gtk_paned_set_start_child_shrink (GTK_PANED (hpaned), FALSE);
/// gtk_widget_set_size_request (frame1, 50, -1);
/// 
/// gtk_paned_set_end_child (GTK_PANED (hpaned), frame2);
/// gtk_paned_set_end_child_resize (GTK_PANED (hpaned), FALSE);
/// gtk_paned_set_end_child_shrink (GTK_PANED (hpaned), FALSE);
/// gtk_widget_set_size_request (frame2, 50, -1);
/// ```
/// 
public struct PanedRef: PanedProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkPaned` instance.
    /// For type-safe access, use the generated, typed pointer `paned_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PanedRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPaned>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPaned>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPaned>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPaned>?) {
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

    /// Reference intialiser for a related type that implements `PanedProtocol`
    @inlinable init<T: PanedProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: PanedProtocol>(_ other: T) -> PanedRef { PanedRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkPaned` widget.
    @inlinable init( orientation: GtkOrientation) {
        let rv = gtk_paned_new(orientation)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Paned` type acts as a reference-counted owner of an underlying `GtkPaned` instance.
/// It provides the methods that can operate on this data type through `PanedProtocol` conformance.
/// Use `Paned` as a strong reference or owner of a `GtkPaned` instance.
///
/// `GtkPaned` has two panes, arranged either
/// horizontally or vertically. The division between
/// the two panes is adjustable by the user by dragging
/// a handle.
/// 
/// Child widgets are added to the panes of the widget with
/// `gtk_paned_set_start_child()` and `gtk_paned_set_end_child()`.
/// The division between the two children is set by default
/// from the size requests of the children, but it can be adjusted by the
/// user.
/// 
/// A paned widget draws a separator between the two child widgets and a
/// small handle that the user can drag to adjust the division. It does not
/// draw any relief around the children or around the separator. (The space
/// in which the separator is called the gutter.) Often, it is useful to put
/// each child inside a `GtkFrame` so that the gutter appears as a ridge.
/// No separator is drawn if one of the children is missing.
/// 
/// Each child has two options that can be set, `resize` and `shrink`. If
/// `resize` is true, then when the `GtkPaned` is resized, that child will
/// expand or shrink along with the paned widget. If `shrink` is true, then
/// that child can be made smaller than its requisition by the user.
/// Setting `shrink` to `false` allows the application to set a minimum size.
/// If `resize` is false for both children, then this is treated as if
/// `resize` is true for both children.
/// 
/// The application can set the position of the slider as if it were set
/// by the user, by calling `gtk_paned_set_position()`.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// paned
/// ├── <child>
/// ├── separator[.wide]
/// ╰── <child>
/// ```
/// 
/// GtkPaned has a main CSS node with name paned, and a subnode for
/// the separator with name separator. The subnode gets a .wide style
/// class when the paned is supposed to be wide.
/// 
/// In horizontal orientation, the nodes are arranged based on the text
/// direction, so in left-to-right mode, :first-child will select the
/// leftmost child, while it will select the rightmost child in
/// RTL layouts.
/// 
/// ## Creating a paned widget with minimum sizes.
/// 
/// (C Language Example):
/// ```C
/// GtkWidget *hpaned = gtk_paned_new (GTK_ORIENTATION_HORIZONTAL);
/// GtkWidget *frame1 = gtk_frame_new (NULL);
/// GtkWidget *frame2 = gtk_frame_new (NULL);
/// 
/// gtk_widget_set_size_request (hpaned, 200, -1);
/// 
/// gtk_paned_set_start_child (GTK_PANED (hpaned), frame1);
/// gtk_paned_set_start_child_resize (GTK_PANED (hpaned), TRUE);
/// gtk_paned_set_start_child_shrink (GTK_PANED (hpaned), FALSE);
/// gtk_widget_set_size_request (frame1, 50, -1);
/// 
/// gtk_paned_set_end_child (GTK_PANED (hpaned), frame2);
/// gtk_paned_set_end_child_resize (GTK_PANED (hpaned), FALSE);
/// gtk_paned_set_end_child_shrink (GTK_PANED (hpaned), FALSE);
/// gtk_widget_set_size_request (frame2, 50, -1);
/// ```
/// 
open class Paned: Widget, PanedProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Paned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPaned>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Paned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPaned>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Paned` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Paned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Paned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPaned>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Paned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPaned>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkPaned`.
    /// i.e., ownership is transferred to the `Paned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPaned>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PanedProtocol`
    /// Will retain `GtkPaned`.
    /// - Parameter other: an instance of a related type that implements `PanedProtocol`
    @inlinable public init<T: PanedProtocol>(paned other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkPaned` widget.
    @inlinable public init( orientation: GtkOrientation) {
        let rv = gtk_paned_new(orientation)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum PanedPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    case endChild = "end-child"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    /// The largest possible value for the position property.
    /// This property is derived from the size and shrinkability
    /// of the widget's children.
    case maxPosition = "max-position"
    /// The smallest possible value for the position property.
    /// This property is derived from the size and shrinkability
    /// of the widget's children.
    case minPosition = "min-position"
    case name = "name"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case position = "position"
    case positionSet = "position-set"
    case receivesDefault = "receives-default"
    /// The "resize-end-child" property determines whether the second child expands and
    /// shrinks along with the paned widget.
    case resizeEndChild = "resize-end-child"
    /// The "resize-start-child" property determines whether the first child expands and
    /// shrinks along with the paned widget.
    case resizeStartChild = "resize-start-child"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The "shrink-end-child" property determines whether the second child can be made
    /// smaller than its requisition.
    case shrinkEndChild = "shrink-end-child"
    /// The "shrink-start-child" property determines whether the first child can be made
    /// smaller than its requisition.
    case shrinkStartChild = "shrink-start-child"
    case startChild = "start-child"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    /// Setting this property to `true` indicates that the paned needs
    /// to provide stronger visual separation (e.g. because it separates
    /// between two notebooks, whose tab rows would otherwise merge visually).
    case wideHandle = "wide-handle"
    case widthRequest = "width-request"
}

public extension PanedProtocol {
    /// Bind a `PanedPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PanedPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Paned property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: PanedPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Paned property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: PanedPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Paned
public extension PanedProtocol {
    /// The `accept`-position signal is a
    /// [keybinding signal](#GtkSignalAction)
    /// which gets emitted to accept the current position of the handle when
    /// moving it using key bindings.
    /// 
    /// The default binding for this signal is Return or Space.
    /// - Note: Representation of signal named `accept-position`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onAcceptPosition(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<PanedRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer) -> gboolean = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(PanedRef(raw: unownedSelf))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "accept-position", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `cancel`-position signal is a
    /// [keybinding signal](#GtkSignalAction)
    /// which gets emitted to cancel moving the position of the handle using key
    /// bindings. The position of the handle will be reset to the value prior to
    /// moving it.
    /// 
    /// The default binding for this signal is Escape.
    /// - Note: Representation of signal named `cancel-position`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onCancelPosition(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<PanedRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer) -> gboolean = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(PanedRef(raw: unownedSelf))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "cancel-position", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `cycle`-child-focus signal is a
    /// [keybinding signal](#GtkSignalAction)
    /// which gets emitted to cycle the focus between the children of the paned.
    /// 
    /// The default binding is f6.
    /// - Note: Representation of signal named `cycle-child-focus`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter reversed: whether cycling backward or forward
    @discardableResult
    func onCycleChildFocus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef, _ reversed: Bool) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PanedRef, Bool, Bool>
        let cCallback: @convention(c) (gpointer, gboolean, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(PanedRef(raw: unownedSelf), ((arg1) != 0))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "cycle-child-focus", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `cycle`-handle-focus signal is a
    /// [keybinding signal](#GtkSignalAction)
    /// which gets emitted to cycle whether the paned should grab focus to allow
    /// the user to change position of the handle by using key bindings.
    /// 
    /// The default binding for this signal is f8.
    /// - Note: Representation of signal named `cycle-handle-focus`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter reversed: whether cycling backward or forward
    @discardableResult
    func onCycleHandleFocus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef, _ reversed: Bool) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PanedRef, Bool, Bool>
        let cCallback: @convention(c) (gpointer, gboolean, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(PanedRef(raw: unownedSelf), ((arg1) != 0))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "cycle-handle-focus", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `move`-handle signal is a
    /// [keybinding signal](#GtkSignalAction)
    /// which gets emitted to move the handle when the user is using key bindings
    /// to move it.
    /// - Note: Representation of signal named `move-handle`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter scrollType: a `GtkScrollType`
    @discardableResult
    func onMoveHandle(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef, _ scrollType: ScrollType) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PanedRef, ScrollType, Bool>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(PanedRef(raw: unownedSelf), ScrollType(arg1))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "move-handle", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `toggle`-handle-focus is a
    /// [keybinding signal](#GtkSignalAction)
    /// which gets emitted to accept the current position of the handle and then
    /// move focus to the next widget in the focus chain.
    /// 
    /// The default binding is Tab.
    /// - Note: Representation of signal named `toggle-handle-focus`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onToggleHandleFocus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<PanedRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer) -> gboolean = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(PanedRef(raw: unownedSelf))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "toggle-handle-focus", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::end-child`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyEndChild(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PanedRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PanedRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::end-child", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::max-position`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMaxPosition(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PanedRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PanedRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::max-position", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::min-position`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMinPosition(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PanedRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PanedRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::min-position", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::position`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPosition(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PanedRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PanedRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::position", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::position-set`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPositionSet(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PanedRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PanedRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::position-set", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::resize-end-child`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyResizeEndChild(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PanedRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PanedRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::resize-end-child", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::resize-start-child`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyResizeStartChild(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PanedRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PanedRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::resize-start-child", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::shrink-end-child`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShrinkEndChild(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PanedRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PanedRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::shrink-end-child", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::shrink-start-child`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShrinkStartChild(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PanedRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PanedRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::shrink-start-child", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::start-child`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyStartChild(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PanedRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PanedRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::start-child", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::wide-handle`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyWideHandle(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PanedRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PanedRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PanedRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::wide-handle", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Paned Class: PanedProtocol extension (methods and fields)
public extension PanedProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPaned` instance.
    @inlinable var paned_ptr: UnsafeMutablePointer<GtkPaned>! { return ptr?.assumingMemoryBound(to: GtkPaned.self) }

    /// Retrieves the end child of the given `GtkPaned`.
    /// 
    /// See also: `GtkPaned:end`-child
    @inlinable func getEndChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_paned_get_end_child(paned_ptr))) else { return nil }
        return rv
    }

    /// Obtains the position of the divider between the two panes.
    @inlinable func getPosition() -> Int {
        let rv = Int(gtk_paned_get_position(paned_ptr))
        return rv
    }

    /// Returns whether the end child can be resized.
    @inlinable func getResizeEndChild() -> Bool {
        let rv = ((gtk_paned_get_resize_end_child(paned_ptr)) != 0)
        return rv
    }

    /// Returns whether the start child can be resized.
    @inlinable func getResizeStartChild() -> Bool {
        let rv = ((gtk_paned_get_resize_start_child(paned_ptr)) != 0)
        return rv
    }

    /// Returns whether the end child can be shrunk.
    @inlinable func getShrinkEndChild() -> Bool {
        let rv = ((gtk_paned_get_shrink_end_child(paned_ptr)) != 0)
        return rv
    }

    /// Returns whether the start child can be shrunk.
    @inlinable func getShrinkStartChild() -> Bool {
        let rv = ((gtk_paned_get_shrink_start_child(paned_ptr)) != 0)
        return rv
    }

    /// Retrieves the start child of the given `GtkPaned`.
    /// 
    /// See also: `GtkPaned:start`-child
    @inlinable func getStartChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_paned_get_start_child(paned_ptr))) else { return nil }
        return rv
    }

    /// Gets the `GtkPaned:wide`-handle property.
    @inlinable func getWideHandle() -> Bool {
        let rv = ((gtk_paned_get_wide_handle(paned_ptr)) != 0)
        return rv
    }

    /// Sets the end child of `paned` to `child`.
    @inlinable func setEnd<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_paned_set_end_child(paned_ptr, child.widget_ptr)
    
    }

    /// Sets the position of the divider between the two panes.
    @inlinable func set(position: Int) {
        gtk_paned_set_position(paned_ptr, gint(position))
    
    }

    /// Sets the `GtkPaned:resize`-end-child property
    @inlinable func setResizeEndChild(resize: Bool) {
        gtk_paned_set_resize_end_child(paned_ptr, gboolean((resize) ? 1 : 0))
    
    }

    /// Sets the `GtkPaned:resize`-start-child property
    @inlinable func setResizeStartChild(resize: Bool) {
        gtk_paned_set_resize_start_child(paned_ptr, gboolean((resize) ? 1 : 0))
    
    }

    /// Sets the `GtkPaned:shrink`-end-child property
    @inlinable func setShrinkEndChild(resize: Bool) {
        gtk_paned_set_shrink_end_child(paned_ptr, gboolean((resize) ? 1 : 0))
    
    }

    /// Sets the `GtkPaned:shrink`-start-child property
    @inlinable func setShrinkStartChild(resize: Bool) {
        gtk_paned_set_shrink_start_child(paned_ptr, gboolean((resize) ? 1 : 0))
    
    }

    /// Sets the start child of `paned` to `child`.
    @inlinable func setStart<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_paned_set_start_child(paned_ptr, child.widget_ptr)
    
    }

    /// Sets the `GtkPaned:wide`-handle property.
    @inlinable func setWideHandle(wide: Bool) {
        gtk_paned_set_wide_handle(paned_ptr, gboolean((wide) ? 1 : 0))
    
    }
    /// Retrieves the end child of the given `GtkPaned`.
    /// 
    /// See also: `GtkPaned:end`-child
    @inlinable var endChild: WidgetRef! {
        /// Retrieves the end child of the given `GtkPaned`.
        /// 
        /// See also: `GtkPaned:end`-child
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_paned_get_end_child(paned_ptr))) else { return nil }
            return rv
        }
        /// Sets the end child of `paned` to `child`.
        nonmutating set {
            gtk_paned_set_end_child(paned_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    @inlinable var position: Int {
        /// Obtains the position of the divider between the two panes.
        get {
            let rv = Int(gtk_paned_get_position(paned_ptr))
            return rv
        }
        /// Sets the position of the divider between the two panes.
        nonmutating set {
            gtk_paned_set_position(paned_ptr, gint(newValue))
        }
    }

    /// Returns whether the end child can be resized.
    @inlinable var resizeEndChild: Bool {
        /// Returns whether the end child can be resized.
        get {
            let rv = ((gtk_paned_get_resize_end_child(paned_ptr)) != 0)
            return rv
        }
        /// Sets the `GtkPaned:resize`-end-child property
        nonmutating set {
            gtk_paned_set_resize_end_child(paned_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the start child can be resized.
    @inlinable var resizeStartChild: Bool {
        /// Returns whether the start child can be resized.
        get {
            let rv = ((gtk_paned_get_resize_start_child(paned_ptr)) != 0)
            return rv
        }
        /// Sets the `GtkPaned:resize`-start-child property
        nonmutating set {
            gtk_paned_set_resize_start_child(paned_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the end child can be shrunk.
    @inlinable var shrinkEndChild: Bool {
        /// Returns whether the end child can be shrunk.
        get {
            let rv = ((gtk_paned_get_shrink_end_child(paned_ptr)) != 0)
            return rv
        }
        /// Sets the `GtkPaned:shrink`-end-child property
        nonmutating set {
            gtk_paned_set_shrink_end_child(paned_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the start child can be shrunk.
    @inlinable var shrinkStartChild: Bool {
        /// Returns whether the start child can be shrunk.
        get {
            let rv = ((gtk_paned_get_shrink_start_child(paned_ptr)) != 0)
            return rv
        }
        /// Sets the `GtkPaned:shrink`-start-child property
        nonmutating set {
            gtk_paned_set_shrink_start_child(paned_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the start child of the given `GtkPaned`.
    /// 
    /// See also: `GtkPaned:start`-child
    @inlinable var startChild: WidgetRef! {
        /// Retrieves the start child of the given `GtkPaned`.
        /// 
        /// See also: `GtkPaned:start`-child
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_paned_get_start_child(paned_ptr))) else { return nil }
            return rv
        }
        /// Sets the start child of `paned` to `child`.
        nonmutating set {
            gtk_paned_set_start_child(paned_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Gets the `GtkPaned:wide`-handle property.
    @inlinable var wideHandle: Bool {
        /// Gets the `GtkPaned:wide`-handle property.
        get {
            let rv = ((gtk_paned_get_wide_handle(paned_ptr)) != 0)
            return rv
        }
        /// Sets the `GtkPaned:wide`-handle property.
        nonmutating set {
            gtk_paned_set_wide_handle(paned_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - ParamSpecExpression Class

/// The `ParamSpecExpressionProtocol` protocol exposes the methods and properties of an underlying `GtkParamSpecExpression` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecExpression`.
/// Alternatively, use `ParamSpecExpressionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` for properties holding a `GtkExpression`.
public protocol ParamSpecExpressionProtocol: GLibObject.ParamSpecProtocol {
        /// Untyped pointer to the underlying `GtkParamSpecExpression` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkParamSpecExpression` instance.
    var param_expression_ptr: UnsafeMutablePointer<GtkParamSpecExpression>! { get }

}

/// The `ParamSpecExpressionRef` type acts as a lightweight Swift reference to an underlying `GtkParamSpecExpression` instance.
/// It exposes methods that can operate on this data type through `ParamSpecExpressionProtocol` conformance.
/// Use `ParamSpecExpressionRef` only as an `unowned` reference to an existing `GtkParamSpecExpression` instance.
///
/// A `GParamSpec` for properties holding a `GtkExpression`.
public struct ParamSpecExpressionRef: ParamSpecExpressionProtocol {
        /// Untyped pointer to the underlying `GtkParamSpecExpression` instance.
    /// For type-safe access, use the generated, typed pointer `param_expression_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecExpressionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkParamSpecExpression>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkParamSpecExpression>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkParamSpecExpression>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkParamSpecExpression>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecExpressionProtocol`
    @inlinable init<T: ParamSpecExpressionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecExpressionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecExpressionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecExpressionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecExpressionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecExpressionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecExpression` type acts as a reference-counted owner of an underlying `GtkParamSpecExpression` instance.
/// It provides the methods that can operate on this data type through `ParamSpecExpressionProtocol` conformance.
/// Use `ParamSpecExpression` as a strong reference or owner of a `GtkParamSpecExpression` instance.
///
/// A `GParamSpec` for properties holding a `GtkExpression`.
open class ParamSpecExpression: GLibObject.ParamSpec, ParamSpecExpressionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkParamSpecExpression>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkParamSpecExpression>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecExpression` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkParamSpecExpression>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkParamSpecExpression>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkParamSpecExpression`.
    /// i.e., ownership is transferred to the `ParamSpecExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkParamSpecExpression>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecExpressionProtocol`
    /// Will retain `GtkParamSpecExpression`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecExpressionProtocol`
    @inlinable public init<T: ParamSpecExpressionProtocol>(paramSpecExpression other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecExpressionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecExpressionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecExpressionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecExpressionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecExpressionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecExpressionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecExpressionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecExpressionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecExpression properties

// MARK: ParamSpecExpression has no signals// MARK: ParamSpecExpression Class: ParamSpecExpressionProtocol extension (methods and fields)
public extension ParamSpecExpressionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkParamSpecExpression` instance.
    @inlinable var param_expression_ptr: UnsafeMutablePointer<GtkParamSpecExpression>! { return ptr?.assumingMemoryBound(to: GtkParamSpecExpression.self) }


    // var parentInstance is unavailable because parent_instance is private

}



// MARK: - PasswordEntry Class

/// The `PasswordEntryProtocol` protocol exposes the methods and properties of an underlying `GtkPasswordEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PasswordEntry`.
/// Alternatively, use `PasswordEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkPasswordEntry` is entry that has been tailored for entering secrets.
/// It does not show its contents in clear text, does not allow to copy it
/// to the clipboard, and it shows a warning when Caps Lock is engaged. If
/// the underlying platform allows it, GtkPasswordEntry will also place the
/// text in a non-pageable memory area, to avoid it being written out to
/// disk by the operating system.
/// 
/// Optionally, it can offer a way to reveal the contents in clear text.
/// 
/// GtkPasswordEntry provides only minimal API and should be used with the
/// `GtkEditable` API.
/// 
/// # CSS Nodes
/// 
/// (plain Language Example):
/// ```plain
/// entry.password
/// ╰── text
///     ├── image.caps-lock-indicator
///     ┊
/// ```
/// 
/// GtkPasswordEntry has a single CSS node with name entry that carries
/// a .passwordstyle class. The text Css node below it has a child with
/// name image and style class .caps-lock-indicator for the Caps Lock
/// icon, and possibly other children.
/// 
/// # Accessibility
/// 
/// GtkPasswordEntry uses the `GTK_ACCESSIBLE_ROLE_TEXT_BOX` role.
public protocol PasswordEntryProtocol: WidgetProtocol, EditableProtocol {
        /// Untyped pointer to the underlying `GtkPasswordEntry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPasswordEntry` instance.
    var password_entry_ptr: UnsafeMutablePointer<GtkPasswordEntry>! { get }

}

/// The `PasswordEntryRef` type acts as a lightweight Swift reference to an underlying `GtkPasswordEntry` instance.
/// It exposes methods that can operate on this data type through `PasswordEntryProtocol` conformance.
/// Use `PasswordEntryRef` only as an `unowned` reference to an existing `GtkPasswordEntry` instance.
///
/// `GtkPasswordEntry` is entry that has been tailored for entering secrets.
/// It does not show its contents in clear text, does not allow to copy it
/// to the clipboard, and it shows a warning when Caps Lock is engaged. If
/// the underlying platform allows it, GtkPasswordEntry will also place the
/// text in a non-pageable memory area, to avoid it being written out to
/// disk by the operating system.
/// 
/// Optionally, it can offer a way to reveal the contents in clear text.
/// 
/// GtkPasswordEntry provides only minimal API and should be used with the
/// `GtkEditable` API.
/// 
/// # CSS Nodes
/// 
/// (plain Language Example):
/// ```plain
/// entry.password
/// ╰── text
///     ├── image.caps-lock-indicator
///     ┊
/// ```
/// 
/// GtkPasswordEntry has a single CSS node with name entry that carries
/// a .passwordstyle class. The text Css node below it has a child with
/// name image and style class .caps-lock-indicator for the Caps Lock
/// icon, and possibly other children.
/// 
/// # Accessibility
/// 
/// GtkPasswordEntry uses the `GTK_ACCESSIBLE_ROLE_TEXT_BOX` role.
public struct PasswordEntryRef: PasswordEntryProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkPasswordEntry` instance.
    /// For type-safe access, use the generated, typed pointer `password_entry_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PasswordEntryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPasswordEntry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPasswordEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPasswordEntry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPasswordEntry>?) {
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

    /// Reference intialiser for a related type that implements `PasswordEntryProtocol`
    @inlinable init<T: PasswordEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: PasswordEntryProtocol>(_ other: T) -> PasswordEntryRef { PasswordEntryRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GtkPasswordEntry`.
    @inlinable init() {
        let rv = gtk_password_entry_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `PasswordEntry` type acts as a reference-counted owner of an underlying `GtkPasswordEntry` instance.
/// It provides the methods that can operate on this data type through `PasswordEntryProtocol` conformance.
/// Use `PasswordEntry` as a strong reference or owner of a `GtkPasswordEntry` instance.
///
/// `GtkPasswordEntry` is entry that has been tailored for entering secrets.
/// It does not show its contents in clear text, does not allow to copy it
/// to the clipboard, and it shows a warning when Caps Lock is engaged. If
/// the underlying platform allows it, GtkPasswordEntry will also place the
/// text in a non-pageable memory area, to avoid it being written out to
/// disk by the operating system.
/// 
/// Optionally, it can offer a way to reveal the contents in clear text.
/// 
/// GtkPasswordEntry provides only minimal API and should be used with the
/// `GtkEditable` API.
/// 
/// # CSS Nodes
/// 
/// (plain Language Example):
/// ```plain
/// entry.password
/// ╰── text
///     ├── image.caps-lock-indicator
///     ┊
/// ```
/// 
/// GtkPasswordEntry has a single CSS node with name entry that carries
/// a .passwordstyle class. The text Css node below it has a child with
/// name image and style class .caps-lock-indicator for the Caps Lock
/// icon, and possibly other children.
/// 
/// # Accessibility
/// 
/// GtkPasswordEntry uses the `GTK_ACCESSIBLE_ROLE_TEXT_BOX` role.
open class PasswordEntry: Widget, PasswordEntryProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PasswordEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPasswordEntry>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PasswordEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPasswordEntry>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PasswordEntry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PasswordEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PasswordEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPasswordEntry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PasswordEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPasswordEntry>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkPasswordEntry`.
    /// i.e., ownership is transferred to the `PasswordEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPasswordEntry>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PasswordEntryProtocol`
    /// Will retain `GtkPasswordEntry`.
    /// - Parameter other: an instance of a related type that implements `PasswordEntryProtocol`
    @inlinable public init<T: PasswordEntryProtocol>(passwordEntry other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PasswordEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a `GtkPasswordEntry`.
    @inlinable public init() {
        let rv = gtk_password_entry_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum PasswordEntryPropertyName: String, PropertyNameProtocol {
    case activatesDefault = "activates-default"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// A menu model whose contents will be appended to
    /// the context menu.
    case extraMenu = "extra-menu"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case placeholderText = "placeholder-text"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    case showPeekIcon = "show-peek-icon"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
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
}

public extension PasswordEntryProtocol {
    /// Bind a `PasswordEntryPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PasswordEntryPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a PasswordEntry property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: PasswordEntryPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a PasswordEntry property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: PasswordEntryPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of PasswordEntry
public extension PasswordEntryProtocol {
    /// - Note: Representation of signal named `activate`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PasswordEntryRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<PasswordEntryRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PasswordEntryRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "activate", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::activates-default`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyActivatesDefault(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PasswordEntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PasswordEntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PasswordEntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::activates-default", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::extra-menu`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyExtraMenu(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PasswordEntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PasswordEntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PasswordEntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::extra-menu", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::placeholder-text`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPlaceholderText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PasswordEntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PasswordEntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PasswordEntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::placeholder-text", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::show-peek-icon`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowPeekIcon(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PasswordEntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PasswordEntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PasswordEntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-peek-icon", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: PasswordEntry Class: PasswordEntryProtocol extension (methods and fields)
public extension PasswordEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPasswordEntry` instance.
    @inlinable var password_entry_ptr: UnsafeMutablePointer<GtkPasswordEntry>! { return ptr?.assumingMemoryBound(to: GtkPasswordEntry.self) }

    /// Gets the menu model set with `gtk_password_entry_set_extra_menu()`.
    @inlinable func getExtraMenu() -> GIO.MenuModelRef! {
        let rv = GIO.MenuModelRef(gtk_password_entry_get_extra_menu(password_entry_ptr))
        return rv
    }

    /// Returns whether the entry is showing a clickable icon
    /// to reveal the contents of the entry in clear text.
    @inlinable func getShowPeekIcon() -> Bool {
        let rv = ((gtk_password_entry_get_show_peek_icon(password_entry_ptr)) != 0)
        return rv
    }

    /// Sets a menu model to add when constructing
    /// the context menu for `entry`.
    @inlinable func setExtraMenu(model: GIO.MenuModelRef? = nil) {
        gtk_password_entry_set_extra_menu(password_entry_ptr, model?.menu_model_ptr)
    
    }
    /// Sets a menu model to add when constructing
    /// the context menu for `entry`.
    @inlinable func setExtraMenu<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT?) {
        gtk_password_entry_set_extra_menu(password_entry_ptr, model?.menu_model_ptr)
    
    }

    /// Sets whether the entry should have a clickable icon
    /// to show the contents of the entry in clear text.
    /// 
    /// Setting this to `false` also hides the text again.
    @inlinable func set(showPeekIcon: Bool) {
        gtk_password_entry_set_show_peek_icon(password_entry_ptr, gboolean((showPeekIcon) ? 1 : 0))
    
    }
    /// Gets the menu model set with `gtk_password_entry_set_extra_menu()`.
    @inlinable var extraMenu: GIO.MenuModelRef! {
        /// Gets the menu model set with `gtk_password_entry_set_extra_menu()`.
        get {
            let rv = GIO.MenuModelRef(gtk_password_entry_get_extra_menu(password_entry_ptr))
            return rv
        }
        /// Sets a menu model to add when constructing
        /// the context menu for `entry`.
        nonmutating set {
            gtk_password_entry_set_extra_menu(password_entry_ptr, UnsafeMutablePointer<GMenuModel>(newValue?.menu_model_ptr))
        }
    }

    /// Returns whether the entry is showing a clickable icon
    /// to reveal the contents of the entry in clear text.
    @inlinable var showPeekIcon: Bool {
        /// Returns whether the entry is showing a clickable icon
        /// to reveal the contents of the entry in clear text.
        get {
            let rv = ((gtk_password_entry_get_show_peek_icon(password_entry_ptr)) != 0)
            return rv
        }
        /// Sets whether the entry should have a clickable icon
        /// to show the contents of the entry in clear text.
        /// 
        /// Setting this to `false` also hides the text again.
        nonmutating set {
            gtk_password_entry_set_show_peek_icon(password_entry_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - Picture Class

/// The `PictureProtocol` protocol exposes the methods and properties of an underlying `GtkPicture` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Picture`.
/// Alternatively, use `PictureRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkPicture` widget displays a `GdkPaintable`. Many convenience functions
/// are provided to make pictures simple to use. For example, if you want to load
/// an image from a file, and then display that, there’s a convenience function
/// to do this:
/// (C Language Example):
/// ```C
///   GtkWidget *widget;
///   widget = gtk_picture_new_for_filename ("myfile.png");
/// ```
/// If the file isn’t loaded successfully, the picture will contain a
/// “broken image” icon similar to that used in many web browsers.
/// If you want to handle errors in loading the file yourself,
/// for example by displaying an error message, then load the image with
/// `gdk_texture_new_from_file()`, then create the `GtkPicture` with
/// `gtk_picture_new_for_paintable()`.
/// 
/// Sometimes an application will want to avoid depending on external data
/// files, such as image files. See the documentation of `GResource` for details.
/// In this case, `gtk_picture_new_for_resource()` and `gtk_picture_set_resource()`
/// should be used.
/// 
/// # Sizing the paintable
/// 
/// You can influence how the paintable is displayed inside the `GtkPicture`.
/// By turning off `GtkPicture:keep`-aspect-ratio you can allow the paintable
/// to get stretched. `GtkPicture:can`-shrink can be unset to make sure that
/// paintables are never made smaller than their ideal size - but be careful
/// if you do not know the size of the paintable in use (like when displaying
/// user-loaded images). This can easily cause the picture to grow larger than
/// the screen. And `GtkWidget:halign` and `GtkWidget:valign` can be used to make
/// sure the paintable doesn't fill all available space but is instead displayed
/// at its original size.
/// 
/// # CSS nodes
/// 
/// GtkPicture has a single CSS node with the name picture.
/// 
/// # Accessibility
/// 
/// GtkPicture uses the `GTK_ACCESSIBLE_ROLE_IMG` role.
public protocol PictureProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkPicture` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPicture` instance.
    var picture_ptr: UnsafeMutablePointer<GtkPicture>! { get }

}

/// The `PictureRef` type acts as a lightweight Swift reference to an underlying `GtkPicture` instance.
/// It exposes methods that can operate on this data type through `PictureProtocol` conformance.
/// Use `PictureRef` only as an `unowned` reference to an existing `GtkPicture` instance.
///
/// The `GtkPicture` widget displays a `GdkPaintable`. Many convenience functions
/// are provided to make pictures simple to use. For example, if you want to load
/// an image from a file, and then display that, there’s a convenience function
/// to do this:
/// (C Language Example):
/// ```C
///   GtkWidget *widget;
///   widget = gtk_picture_new_for_filename ("myfile.png");
/// ```
/// If the file isn’t loaded successfully, the picture will contain a
/// “broken image” icon similar to that used in many web browsers.
/// If you want to handle errors in loading the file yourself,
/// for example by displaying an error message, then load the image with
/// `gdk_texture_new_from_file()`, then create the `GtkPicture` with
/// `gtk_picture_new_for_paintable()`.
/// 
/// Sometimes an application will want to avoid depending on external data
/// files, such as image files. See the documentation of `GResource` for details.
/// In this case, `gtk_picture_new_for_resource()` and `gtk_picture_set_resource()`
/// should be used.
/// 
/// # Sizing the paintable
/// 
/// You can influence how the paintable is displayed inside the `GtkPicture`.
/// By turning off `GtkPicture:keep`-aspect-ratio you can allow the paintable
/// to get stretched. `GtkPicture:can`-shrink can be unset to make sure that
/// paintables are never made smaller than their ideal size - but be careful
/// if you do not know the size of the paintable in use (like when displaying
/// user-loaded images). This can easily cause the picture to grow larger than
/// the screen. And `GtkWidget:halign` and `GtkWidget:valign` can be used to make
/// sure the paintable doesn't fill all available space but is instead displayed
/// at its original size.
/// 
/// # CSS nodes
/// 
/// GtkPicture has a single CSS node with the name picture.
/// 
/// # Accessibility
/// 
/// GtkPicture uses the `GTK_ACCESSIBLE_ROLE_IMG` role.
public struct PictureRef: PictureProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkPicture` instance.
    /// For type-safe access, use the generated, typed pointer `picture_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PictureRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPicture>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPicture>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPicture>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPicture>?) {
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

    /// Reference intialiser for a related type that implements `PictureProtocol`
    @inlinable init<T: PictureProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: PictureProtocol>(_ other: T) -> PictureRef { PictureRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new empty `GtkPicture` widget.
    @inlinable init() {
        let rv = gtk_picture_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPicture` displaying the given `file`. If the file
    /// isn’t found or can’t be loaded, the resulting `GtkPicture` be empty.
    /// 
    /// If you need to detect failures to load the file, use
    /// `gdk_texture_new_from_file()` to load the file yourself, then create
    /// the `GtkPicture` from the texture.
    @inlinable init<FileT: GIO.FileProtocol>(file: FileT?) {
        let rv = gtk_picture_new_for_file(file?.file_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPicture` displaying the file `filename`.
    /// 
    /// This is a utility function that calls `gtk_picture_new_for_file()`.
    /// See that function for details.
    @inlinable init(filename: UnsafePointer<CChar>? = nil) {
        let rv = gtk_picture_new_for_filename(filename)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPicture` displaying `paintable`.
    /// 
    /// The `GtkPicture` will track changes to the `paintable` and update
    /// its size and contents in response to it.
    @inlinable init<PaintableT: Gdk.PaintableProtocol>(paintable: PaintableT?) {
        let rv = gtk_picture_new_for_paintable(paintable?.paintable_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPicture` displaying `pixbuf`.
    /// 
    /// This is a utility function that calls `gtk_picture_new_for_paintable()`,
    /// See that function for details.
    /// 
    /// The pixbuf must not be modified after passing it to this function.
    @inlinable init<PixbufT: PixbufProtocol>(pixbuf: PixbufT?) {
        let rv = gtk_picture_new_for_pixbuf(pixbuf?.pixbuf_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkPicture` displaying the resource at `resource_path`.
    /// 
    /// This is a utility function that calls `gtk_picture_new_for_file()`.
    /// See that function for details.
    @inlinable init(resource resourcePath: UnsafePointer<CChar>? = nil) {
        let rv = gtk_picture_new_for_resource(resourcePath)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkPicture` displaying the given `file`. If the file
    /// isn’t found or can’t be loaded, the resulting `GtkPicture` be empty.
    /// 
    /// If you need to detect failures to load the file, use
    /// `gdk_texture_new_from_file()` to load the file yourself, then create
    /// the `GtkPicture` from the texture.
    @inlinable static func newFor<FileT: GIO.FileProtocol>(file: FileT?) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_picture_new_for_file(file?.file_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GtkPicture` displaying the file `filename`.
    /// 
    /// This is a utility function that calls `gtk_picture_new_for_file()`.
    /// See that function for details.
    @inlinable static func newFor(filename: UnsafePointer<CChar>? = nil) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_picture_new_for_filename(filename))) else { return nil }
        return rv
    }

    /// Creates a new `GtkPicture` displaying `paintable`.
    /// 
    /// The `GtkPicture` will track changes to the `paintable` and update
    /// its size and contents in response to it.
    @inlinable static func newFor<PaintableT: Gdk.PaintableProtocol>(paintable: PaintableT?) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_picture_new_for_paintable(paintable?.paintable_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GtkPicture` displaying `pixbuf`.
    /// 
    /// This is a utility function that calls `gtk_picture_new_for_paintable()`,
    /// See that function for details.
    /// 
    /// The pixbuf must not be modified after passing it to this function.
    @inlinable static func newFor<PixbufT: PixbufProtocol>(pixbuf: PixbufT?) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_picture_new_for_pixbuf(pixbuf?.pixbuf_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GtkPicture` displaying the resource at `resource_path`.
    /// 
    /// This is a utility function that calls `gtk_picture_new_for_file()`.
    /// See that function for details.
    @inlinable static func newFor(resource resourcePath: UnsafePointer<CChar>? = nil) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_picture_new_for_resource(resourcePath))) else { return nil }
        return rv
    }
}

/// The `Picture` type acts as a reference-counted owner of an underlying `GtkPicture` instance.
/// It provides the methods that can operate on this data type through `PictureProtocol` conformance.
/// Use `Picture` as a strong reference or owner of a `GtkPicture` instance.
///
/// The `GtkPicture` widget displays a `GdkPaintable`. Many convenience functions
/// are provided to make pictures simple to use. For example, if you want to load
/// an image from a file, and then display that, there’s a convenience function
/// to do this:
/// (C Language Example):
/// ```C
///   GtkWidget *widget;
///   widget = gtk_picture_new_for_filename ("myfile.png");
/// ```
/// If the file isn’t loaded successfully, the picture will contain a
/// “broken image” icon similar to that used in many web browsers.
/// If you want to handle errors in loading the file yourself,
/// for example by displaying an error message, then load the image with
/// `gdk_texture_new_from_file()`, then create the `GtkPicture` with
/// `gtk_picture_new_for_paintable()`.
/// 
/// Sometimes an application will want to avoid depending on external data
/// files, such as image files. See the documentation of `GResource` for details.
/// In this case, `gtk_picture_new_for_resource()` and `gtk_picture_set_resource()`
/// should be used.
/// 
/// # Sizing the paintable
/// 
/// You can influence how the paintable is displayed inside the `GtkPicture`.
/// By turning off `GtkPicture:keep`-aspect-ratio you can allow the paintable
/// to get stretched. `GtkPicture:can`-shrink can be unset to make sure that
/// paintables are never made smaller than their ideal size - but be careful
/// if you do not know the size of the paintable in use (like when displaying
/// user-loaded images). This can easily cause the picture to grow larger than
/// the screen. And `GtkWidget:halign` and `GtkWidget:valign` can be used to make
/// sure the paintable doesn't fill all available space but is instead displayed
/// at its original size.
/// 
/// # CSS nodes
/// 
/// GtkPicture has a single CSS node with the name picture.
/// 
/// # Accessibility
/// 
/// GtkPicture uses the `GTK_ACCESSIBLE_ROLE_IMG` role.
open class Picture: Widget, PictureProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Picture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPicture>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Picture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPicture>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Picture` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Picture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Picture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPicture>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Picture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPicture>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkPicture`.
    /// i.e., ownership is transferred to the `Picture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPicture>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PictureProtocol`
    /// Will retain `GtkPicture`.
    /// - Parameter other: an instance of a related type that implements `PictureProtocol`
    @inlinable public init<T: PictureProtocol>(picture other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PictureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new empty `GtkPicture` widget.
    @inlinable public init() {
        let rv = gtk_picture_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkPicture` displaying the given `file`. If the file
    /// isn’t found or can’t be loaded, the resulting `GtkPicture` be empty.
    /// 
    /// If you need to detect failures to load the file, use
    /// `gdk_texture_new_from_file()` to load the file yourself, then create
    /// the `GtkPicture` from the texture.
    @inlinable public init<FileT: GIO.FileProtocol>(file: FileT?) {
        let rv = gtk_picture_new_for_file(file?.file_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkPicture` displaying the file `filename`.
    /// 
    /// This is a utility function that calls `gtk_picture_new_for_file()`.
    /// See that function for details.
    @inlinable public init(filename: UnsafePointer<CChar>? = nil) {
        let rv = gtk_picture_new_for_filename(filename)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkPicture` displaying `paintable`.
    /// 
    /// The `GtkPicture` will track changes to the `paintable` and update
    /// its size and contents in response to it.
    @inlinable public init<PaintableT: Gdk.PaintableProtocol>(paintable: PaintableT?) {
        let rv = gtk_picture_new_for_paintable(paintable?.paintable_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkPicture` displaying `pixbuf`.
    /// 
    /// This is a utility function that calls `gtk_picture_new_for_paintable()`,
    /// See that function for details.
    /// 
    /// The pixbuf must not be modified after passing it to this function.
    @inlinable public init<PixbufT: PixbufProtocol>(pixbuf: PixbufT?) {
        let rv = gtk_picture_new_for_pixbuf(pixbuf?.pixbuf_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkPicture` displaying the resource at `resource_path`.
    /// 
    /// This is a utility function that calls `gtk_picture_new_for_file()`.
    /// See that function for details.
    @inlinable public init(resource resourcePath: UnsafePointer<CChar>? = nil) {
        let rv = gtk_picture_new_for_resource(resourcePath)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkPicture` displaying the given `file`. If the file
    /// isn’t found or can’t be loaded, the resulting `GtkPicture` be empty.
    /// 
    /// If you need to detect failures to load the file, use
    /// `gdk_texture_new_from_file()` to load the file yourself, then create
    /// the `GtkPicture` from the texture.
    @inlinable public static func newFor<FileT: GIO.FileProtocol>(file: FileT?) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_picture_new_for_file(file?.file_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkPicture` displaying the file `filename`.
    /// 
    /// This is a utility function that calls `gtk_picture_new_for_file()`.
    /// See that function for details.
    @inlinable public static func newFor(filename: UnsafePointer<CChar>? = nil) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_picture_new_for_filename(filename))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkPicture` displaying `paintable`.
    /// 
    /// The `GtkPicture` will track changes to the `paintable` and update
    /// its size and contents in response to it.
    @inlinable public static func newFor<PaintableT: Gdk.PaintableProtocol>(paintable: PaintableT?) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_picture_new_for_paintable(paintable?.paintable_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkPicture` displaying `pixbuf`.
    /// 
    /// This is a utility function that calls `gtk_picture_new_for_paintable()`,
    /// See that function for details.
    /// 
    /// The pixbuf must not be modified after passing it to this function.
    @inlinable public static func newFor<PixbufT: PixbufProtocol>(pixbuf: PixbufT?) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_picture_new_for_pixbuf(pixbuf?.pixbuf_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkPicture` displaying the resource at `resource_path`.
    /// 
    /// This is a utility function that calls `gtk_picture_new_for_file()`.
    /// See that function for details.
    @inlinable public static func newFor(resource resourcePath: UnsafePointer<CChar>? = nil) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_picture_new_for_resource(resourcePath))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum PicturePropertyName: String, PropertyNameProtocol {
    /// The alternative textual description for the picture.
    case alternativeText = "alternative-text"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// If the `GtkPicture` can be made smaller than the self it contains.
    case canShrink = "can-shrink"
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// The `GFile` that is displayed or `nil` if none.
    case file = "file"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// Whether the GtkPicture will render its contents trying to preserve the aspect
    /// ratio of the contents.
    case keepAspectRatio = "keep-aspect-ratio"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The `GdkPaintable` to be displayed by this `GtkPicture`.
    case paintable = "paintable"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
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
}

public extension PictureProtocol {
    /// Bind a `PicturePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PicturePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Picture property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: PicturePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Picture property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: PicturePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Picture has no signals// MARK: Picture Class: PictureProtocol extension (methods and fields)
public extension PictureProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPicture` instance.
    @inlinable var picture_ptr: UnsafeMutablePointer<GtkPicture>! { return ptr?.assumingMemoryBound(to: GtkPicture.self) }

    /// Gets the alternative textual description of the picture or returns `nil` if
    /// the picture cannot be described textually.
    @inlinable func getAlternativeText() -> String! {
        let rv = gtk_picture_get_alternative_text(picture_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the value set via `gtk_picture_set_can_shrink()`.
    @inlinable func getCanShrink() -> Bool {
        let rv = ((gtk_picture_get_can_shrink(picture_ptr)) != 0)
        return rv
    }

    /// Gets the `GFile` currently displayed if `self` is displaying a file.
    /// If `self` is not displaying a file, for example when `gtk_picture_set_paintable()`
    /// was used, then `nil` is returned.
    @inlinable func getFile() -> GIO.FileRef! {
        let rv = GIO.FileRef(gtk_picture_get_file(picture_ptr))
        return rv
    }

    /// Gets the value set via `gtk_picture_set_keep_aspect_ratio()`.
    @inlinable func getKeepAspectRatio() -> Bool {
        let rv = ((gtk_picture_get_keep_aspect_ratio(picture_ptr)) != 0)
        return rv
    }

    /// Gets the `GdkPaintable` being displayed by the `GtkPicture`.
    @inlinable func getPaintable() -> Gdk.PaintableRef! {
        let rv = Gdk.PaintableRef(gtk_picture_get_paintable(picture_ptr))
        return rv
    }

    /// Sets an alternative textual description for the picture contents.
    /// It is equivalent to the "alt" attribute for images on websites.
    /// 
    /// This text will be made available to accessibility tools.
    /// 
    /// If the picture cannot be described textually, set this property to `nil`.
    @inlinable func set(alternativeText: UnsafePointer<CChar>? = nil) {
        gtk_picture_set_alternative_text(picture_ptr, alternativeText)
    
    }

    /// If set to `true`, the `self` can be made smaller than its contents.
    /// The contents will then be scaled down when rendering.
    /// 
    /// If you want to still force a minimum size manually, consider using
    /// `gtk_widget_set_size_request()`.
    /// 
    /// Also of note is that a similar function for growing does not exist
    /// because the grow behavior can be controlled via
    /// `gtk_widget_set_halign()` and `gtk_widget_set_valign()`.
    @inlinable func set(canShrink: Bool) {
        gtk_picture_set_can_shrink(picture_ptr, gboolean((canShrink) ? 1 : 0))
    
    }

    /// Makes `self` load and display `file`.
    /// 
    /// See `gtk_picture_new_for_file()` for details.
    @inlinable func set(file: GIO.FileRef? = nil) {
        gtk_picture_set_file(picture_ptr, file?.file_ptr)
    
    }
    /// Makes `self` load and display `file`.
    /// 
    /// See `gtk_picture_new_for_file()` for details.
    @inlinable func set<FileT: GIO.FileProtocol>(file: FileT?) {
        gtk_picture_set_file(picture_ptr, file?.file_ptr)
    
    }

    /// Makes `self` load and display the given `filename`.
    /// 
    /// This is a utility function that calls `gtk_picture_set_file()`.
    @inlinable func set(filename: UnsafePointer<CChar>? = nil) {
        gtk_picture_set_filename(picture_ptr, filename)
    
    }

    /// If set to `true`, the `self` will render its contents according to
    /// their aspect ratio. That means that empty space may show up at the
    /// top/bottom or left/right of `self`.
    /// 
    /// If set to `false` or if the contents provide no aspect ratio, the
    /// contents will be stretched over the picture's whole area.
    @inlinable func set(keepAspectRatio: Bool) {
        gtk_picture_set_keep_aspect_ratio(picture_ptr, gboolean((keepAspectRatio) ? 1 : 0))
    
    }

    /// Makes `self` display the given `paintable`. If `paintable` is `nil`,
    /// nothing will be displayed.
    /// 
    /// See `gtk_picture_new_for_paintable()` for details.
    @inlinable func set(paintable: Gdk.PaintableRef? = nil) {
        gtk_picture_set_paintable(picture_ptr, paintable?.paintable_ptr)
    
    }
    /// Makes `self` display the given `paintable`. If `paintable` is `nil`,
    /// nothing will be displayed.
    /// 
    /// See `gtk_picture_new_for_paintable()` for details.
    @inlinable func set<PaintableT: Gdk.PaintableProtocol>(paintable: PaintableT?) {
        gtk_picture_set_paintable(picture_ptr, paintable?.paintable_ptr)
    
    }

    /// See `gtk_picture_new_for_pixbuf()` for details.
    /// 
    /// This is a utility function that calls `gtk_picture_set_paintable()`,
    @inlinable func set(pixbuf: PixbufRef? = nil) {
        gtk_picture_set_pixbuf(picture_ptr, pixbuf?.pixbuf_ptr)
    
    }
    /// See `gtk_picture_new_for_pixbuf()` for details.
    /// 
    /// This is a utility function that calls `gtk_picture_set_paintable()`,
    @inlinable func set<PixbufT: PixbufProtocol>(pixbuf: PixbufT?) {
        gtk_picture_set_pixbuf(picture_ptr, pixbuf?.pixbuf_ptr)
    
    }

    /// Makes `self` load and display the resource at the given
    /// `resource_path`.
    /// 
    /// This is a utility function that calls `gtk_picture_set_file()`,
    @inlinable func setResource(resourcePath: UnsafePointer<CChar>? = nil) {
        gtk_picture_set_resource(picture_ptr, resourcePath)
    
    }
    /// Gets the alternative textual description of the picture or returns `nil` if
    /// the picture cannot be described textually.
    @inlinable var alternativeText: String! {
        /// Gets the alternative textual description of the picture or returns `nil` if
        /// the picture cannot be described textually.
        get {
            let rv = gtk_picture_get_alternative_text(picture_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets an alternative textual description for the picture contents.
        /// It is equivalent to the "alt" attribute for images on websites.
        /// 
        /// This text will be made available to accessibility tools.
        /// 
        /// If the picture cannot be described textually, set this property to `nil`.
        nonmutating set {
            gtk_picture_set_alternative_text(picture_ptr, newValue)
        }
    }

    /// Gets the value set via `gtk_picture_set_can_shrink()`.
    @inlinable var canShrink: Bool {
        /// Gets the value set via `gtk_picture_set_can_shrink()`.
        get {
            let rv = ((gtk_picture_get_can_shrink(picture_ptr)) != 0)
            return rv
        }
        /// If set to `true`, the `self` can be made smaller than its contents.
        /// The contents will then be scaled down when rendering.
        /// 
        /// If you want to still force a minimum size manually, consider using
        /// `gtk_widget_set_size_request()`.
        /// 
        /// Also of note is that a similar function for growing does not exist
        /// because the grow behavior can be controlled via
        /// `gtk_widget_set_halign()` and `gtk_widget_set_valign()`.
        nonmutating set {
            gtk_picture_set_can_shrink(picture_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The `GFile` that is displayed or `nil` if none.
    @inlinable var file: GIO.FileRef! {
        /// Gets the `GFile` currently displayed if `self` is displaying a file.
        /// If `self` is not displaying a file, for example when `gtk_picture_set_paintable()`
        /// was used, then `nil` is returned.
        get {
            let rv = GIO.FileRef(gtk_picture_get_file(picture_ptr))
            return rv
        }
        /// Makes `self` load and display `file`.
        /// 
        /// See `gtk_picture_new_for_file()` for details.
        nonmutating set {
            gtk_picture_set_file(picture_ptr, UnsafeMutablePointer<GFile>(newValue?.file_ptr))
        }
    }

    /// Gets the value set via `gtk_picture_set_keep_aspect_ratio()`.
    @inlinable var keepAspectRatio: Bool {
        /// Gets the value set via `gtk_picture_set_keep_aspect_ratio()`.
        get {
            let rv = ((gtk_picture_get_keep_aspect_ratio(picture_ptr)) != 0)
            return rv
        }
        /// If set to `true`, the `self` will render its contents according to
        /// their aspect ratio. That means that empty space may show up at the
        /// top/bottom or left/right of `self`.
        /// 
        /// If set to `false` or if the contents provide no aspect ratio, the
        /// contents will be stretched over the picture's whole area.
        nonmutating set {
            gtk_picture_set_keep_aspect_ratio(picture_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The `GdkPaintable` to be displayed by this `GtkPicture`.
    @inlinable var paintable: Gdk.PaintableRef! {
        /// Gets the `GdkPaintable` being displayed by the `GtkPicture`.
        get {
            let rv = Gdk.PaintableRef(gtk_picture_get_paintable(picture_ptr))
            return rv
        }
        /// Makes `self` display the given `paintable`. If `paintable` is `nil`,
        /// nothing will be displayed.
        /// 
        /// See `gtk_picture_new_for_paintable()` for details.
        nonmutating set {
            gtk_picture_set_paintable(picture_ptr, UnsafeMutablePointer<GdkPaintable>(newValue?.paintable_ptr))
        }
    }


}



// MARK: - Popover Class

/// The `PopoverProtocol` protocol exposes the methods and properties of an underlying `GtkPopover` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Popover`.
/// Alternatively, use `PopoverRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkPopover is a bubble-like context window, primarily meant to
/// provide context-dependent information or options. Popovers are
/// attached to a widget, set with `gtk_widget_set_parent()`. By
/// default they will point to the whole widget area, although this
/// behavior can be changed through `gtk_popover_set_pointing_to()`.
/// 
/// The position of a popover relative to the widget it is attached to
/// can also be changed through `gtk_popover_set_position()`.
/// 
/// By default, `GtkPopover` performs a grab, in order to ensure input events
/// get redirected to it while it is shown, and also so the popover is dismissed
/// in the expected situations (clicks outside the popover, or the Escape key
/// being pressed). If no such modal behavior is desired on a popover,
/// `gtk_popover_set_autohide()` may be called on it to tweak its behavior.
/// 
/// ## GtkPopover as menu replacement
/// 
/// GtkPopover is often used to replace menus. The best was to do this
/// is to use the `GtkPopoverMenu` subclass which supports being populated
/// from a `GMenuModel` with `gtk_popover_menu_new_from_model()`.
/// 
/// ```
/// <section>
///   <attribute name="display-hint">horizontal-buttons</attribute>
///   <item>
///     <attribute name="label">Cut</attribute>
///     <attribute name="action">app.cut</attribute>
///     <attribute name="verb-icon">edit-cut-symbolic</attribute>
///   </item>
///   <item>
///     <attribute name="label">Copy</attribute>
///     <attribute name="action">app.copy</attribute>
///     <attribute name="verb-icon">edit-copy-symbolic</attribute>
///   </item>
///   <item>
///     <attribute name="label">Paste</attribute>
///     <attribute name="action">app.paste</attribute>
///     <attribute name="verb-icon">edit-paste-symbolic</attribute>
///   </item>
/// </section>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// popover[.menu]
/// ├── arrow
/// ╰── contents.background
///     ╰── <child>
/// ```
/// 
/// The contents child node always gets the .background style class and
/// the popover itself gets the .menu style class if the popover is
/// menu-like (i.e. `GtkPopoverMenu`).
/// 
/// Particular uses of GtkPopover, such as touch selection popups or magnifiers
/// in `GtkEntry` or `GtkTextView` get style classes like .touch-selection or .magnifier
/// to differentiate from plain popovers.
/// 
/// When styling a popover directly, the popover node should usually
/// not have any background.
/// 
/// Note that, in order to accomplish appropriate arrow visuals, `GtkPopover` uses
/// custom drawing for the arrow node. This makes it possible for the arrow to
/// change its shape dynamically, but it also limits the possibilities of styling
/// it using CSS. In particular, the arrow gets drawn over the content node's
/// border so they look like one shape, which means that the border-width of
/// the content node and the arrow node should be the same. The arrow also does
/// not support any border shape other than solid, no border-radius, only one
/// border width (border-bottom-width is used) and no box-shadow.
public protocol PopoverProtocol: WidgetProtocol, NativeProtocol, ShortcutManagerProtocol {
        /// Untyped pointer to the underlying `GtkPopover` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPopover` instance.
    var popover_ptr: UnsafeMutablePointer<GtkPopover>! { get }

}

/// The `PopoverRef` type acts as a lightweight Swift reference to an underlying `GtkPopover` instance.
/// It exposes methods that can operate on this data type through `PopoverProtocol` conformance.
/// Use `PopoverRef` only as an `unowned` reference to an existing `GtkPopover` instance.
///
/// GtkPopover is a bubble-like context window, primarily meant to
/// provide context-dependent information or options. Popovers are
/// attached to a widget, set with `gtk_widget_set_parent()`. By
/// default they will point to the whole widget area, although this
/// behavior can be changed through `gtk_popover_set_pointing_to()`.
/// 
/// The position of a popover relative to the widget it is attached to
/// can also be changed through `gtk_popover_set_position()`.
/// 
/// By default, `GtkPopover` performs a grab, in order to ensure input events
/// get redirected to it while it is shown, and also so the popover is dismissed
/// in the expected situations (clicks outside the popover, or the Escape key
/// being pressed). If no such modal behavior is desired on a popover,
/// `gtk_popover_set_autohide()` may be called on it to tweak its behavior.
/// 
/// ## GtkPopover as menu replacement
/// 
/// GtkPopover is often used to replace menus. The best was to do this
/// is to use the `GtkPopoverMenu` subclass which supports being populated
/// from a `GMenuModel` with `gtk_popover_menu_new_from_model()`.
/// 
/// ```
/// <section>
///   <attribute name="display-hint">horizontal-buttons</attribute>
///   <item>
///     <attribute name="label">Cut</attribute>
///     <attribute name="action">app.cut</attribute>
///     <attribute name="verb-icon">edit-cut-symbolic</attribute>
///   </item>
///   <item>
///     <attribute name="label">Copy</attribute>
///     <attribute name="action">app.copy</attribute>
///     <attribute name="verb-icon">edit-copy-symbolic</attribute>
///   </item>
///   <item>
///     <attribute name="label">Paste</attribute>
///     <attribute name="action">app.paste</attribute>
///     <attribute name="verb-icon">edit-paste-symbolic</attribute>
///   </item>
/// </section>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// popover[.menu]
/// ├── arrow
/// ╰── contents.background
///     ╰── <child>
/// ```
/// 
/// The contents child node always gets the .background style class and
/// the popover itself gets the .menu style class if the popover is
/// menu-like (i.e. `GtkPopoverMenu`).
/// 
/// Particular uses of GtkPopover, such as touch selection popups or magnifiers
/// in `GtkEntry` or `GtkTextView` get style classes like .touch-selection or .magnifier
/// to differentiate from plain popovers.
/// 
/// When styling a popover directly, the popover node should usually
/// not have any background.
/// 
/// Note that, in order to accomplish appropriate arrow visuals, `GtkPopover` uses
/// custom drawing for the arrow node. This makes it possible for the arrow to
/// change its shape dynamically, but it also limits the possibilities of styling
/// it using CSS. In particular, the arrow gets drawn over the content node's
/// border so they look like one shape, which means that the border-width of
/// the content node and the arrow node should be the same. The arrow also does
/// not support any border shape other than solid, no border-radius, only one
/// border width (border-bottom-width is used) and no box-shadow.
public struct PopoverRef: PopoverProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkPopover` instance.
    /// For type-safe access, use the generated, typed pointer `popover_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PopoverRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPopover>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPopover>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPopover>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPopover>?) {
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

    /// Reference intialiser for a related type that implements `PopoverProtocol`
    @inlinable init<T: PopoverProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: PopoverProtocol>(_ other: T) -> PopoverRef { PopoverRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new popover.
    @inlinable init() {
        let rv = gtk_popover_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Popover` type acts as a reference-counted owner of an underlying `GtkPopover` instance.
/// It provides the methods that can operate on this data type through `PopoverProtocol` conformance.
/// Use `Popover` as a strong reference or owner of a `GtkPopover` instance.
///
/// GtkPopover is a bubble-like context window, primarily meant to
/// provide context-dependent information or options. Popovers are
/// attached to a widget, set with `gtk_widget_set_parent()`. By
/// default they will point to the whole widget area, although this
/// behavior can be changed through `gtk_popover_set_pointing_to()`.
/// 
/// The position of a popover relative to the widget it is attached to
/// can also be changed through `gtk_popover_set_position()`.
/// 
/// By default, `GtkPopover` performs a grab, in order to ensure input events
/// get redirected to it while it is shown, and also so the popover is dismissed
/// in the expected situations (clicks outside the popover, or the Escape key
/// being pressed). If no such modal behavior is desired on a popover,
/// `gtk_popover_set_autohide()` may be called on it to tweak its behavior.
/// 
/// ## GtkPopover as menu replacement
/// 
/// GtkPopover is often used to replace menus. The best was to do this
/// is to use the `GtkPopoverMenu` subclass which supports being populated
/// from a `GMenuModel` with `gtk_popover_menu_new_from_model()`.
/// 
/// ```
/// <section>
///   <attribute name="display-hint">horizontal-buttons</attribute>
///   <item>
///     <attribute name="label">Cut</attribute>
///     <attribute name="action">app.cut</attribute>
///     <attribute name="verb-icon">edit-cut-symbolic</attribute>
///   </item>
///   <item>
///     <attribute name="label">Copy</attribute>
///     <attribute name="action">app.copy</attribute>
///     <attribute name="verb-icon">edit-copy-symbolic</attribute>
///   </item>
///   <item>
///     <attribute name="label">Paste</attribute>
///     <attribute name="action">app.paste</attribute>
///     <attribute name="verb-icon">edit-paste-symbolic</attribute>
///   </item>
/// </section>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// popover[.menu]
/// ├── arrow
/// ╰── contents.background
///     ╰── <child>
/// ```
/// 
/// The contents child node always gets the .background style class and
/// the popover itself gets the .menu style class if the popover is
/// menu-like (i.e. `GtkPopoverMenu`).
/// 
/// Particular uses of GtkPopover, such as touch selection popups or magnifiers
/// in `GtkEntry` or `GtkTextView` get style classes like .touch-selection or .magnifier
/// to differentiate from plain popovers.
/// 
/// When styling a popover directly, the popover node should usually
/// not have any background.
/// 
/// Note that, in order to accomplish appropriate arrow visuals, `GtkPopover` uses
/// custom drawing for the arrow node. This makes it possible for the arrow to
/// change its shape dynamically, but it also limits the possibilities of styling
/// it using CSS. In particular, the arrow gets drawn over the content node's
/// border so they look like one shape, which means that the border-width of
/// the content node and the arrow node should be the same. The arrow also does
/// not support any border shape other than solid, no border-radius, only one
/// border width (border-bottom-width is used) and no box-shadow.
open class Popover: Widget, PopoverProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Popover` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPopover>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Popover` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPopover>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Popover` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Popover` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Popover` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPopover>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Popover` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPopover>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkPopover`.
    /// i.e., ownership is transferred to the `Popover` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPopover>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PopoverProtocol`
    /// Will retain `GtkPopover`.
    /// - Parameter other: an instance of a related type that implements `PopoverProtocol`
    @inlinable public init<T: PopoverProtocol>(popover other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new popover.
    @inlinable public init() {
        let rv = gtk_popover_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum PopoverPropertyName: String, PropertyNameProtocol {
    case autohide = "autohide"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    case cascadePopdown = "cascade-popdown"
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    case defaultWidget = "default-widget"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasArrow = "has-arrow"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    case mnemonicsVisible = "mnemonics-visible"
    case name = "name"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case pointingTo = "pointing-to"
    case position = "position"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
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
}

public extension PopoverProtocol {
    /// Bind a `PopoverPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PopoverPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Popover property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: PopoverPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Popover property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: PopoverPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Popover
public extension PopoverProtocol {
    /// The `activate`-default signal is a
    /// [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user activates the default widget
    /// of `self`.
    /// - Note: Representation of signal named `activate-default`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onActivateDefault(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PopoverRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<PopoverRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PopoverRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "activate-default", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `closed` signal is emitted when the popover is closed.
    /// - Note: Representation of signal named `closed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onClosed(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PopoverRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<PopoverRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PopoverRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "closed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::autohide`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAutohide(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PopoverRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PopoverRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PopoverRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::autohide", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::cascade-popdown`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyCascadePopdown(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PopoverRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PopoverRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PopoverRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::cascade-popdown", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::child`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyChild(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PopoverRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PopoverRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PopoverRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::child", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::default-widget`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyDefaultWidget(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PopoverRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PopoverRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PopoverRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::default-widget", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::has-arrow`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHasArrow(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PopoverRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PopoverRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PopoverRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::has-arrow", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::mnemonics-visible`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMnemonicsVisible(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PopoverRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PopoverRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PopoverRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::mnemonics-visible", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::pointing-to`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPointingTo(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PopoverRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PopoverRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PopoverRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::pointing-to", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::position`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPosition(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PopoverRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PopoverRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PopoverRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::position", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Popover Class: PopoverProtocol extension (methods and fields)
public extension PopoverProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPopover` instance.
    @inlinable var popover_ptr: UnsafeMutablePointer<GtkPopover>! { return ptr?.assumingMemoryBound(to: GtkPopover.self) }

    /// Returns whether the popover is modal.
    /// 
    /// See `gtk_popover_set_autohide()` for the
    /// implications of this.
    @inlinable func getAutohide() -> Bool {
        let rv = ((gtk_popover_get_autohide(popover_ptr)) != 0)
        return rv
    }

    /// Returns whether the popover will close after a modal child is closed.
    @inlinable func getCascadePopdown() -> Bool {
        let rv = ((gtk_popover_get_cascade_popdown(popover_ptr)) != 0)
        return rv
    }

    /// Gets the child widget of `popover`.
    @inlinable func getChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_popover_get_child(popover_ptr))) else { return nil }
        return rv
    }

    /// Gets whether this popover is showing an arrow
    /// pointing at the widget that it is relative to.
    @inlinable func getHasArrow() -> Bool {
        let rv = ((gtk_popover_get_has_arrow(popover_ptr)) != 0)
        return rv
    }

    /// Gets the value of the `GtkPopover:mnemonics`-visible property.
    @inlinable func getMnemonicsVisible() -> Bool {
        let rv = ((gtk_popover_get_mnemonics_visible(popover_ptr)) != 0)
        return rv
    }

    /// Gets the offset previous set with `gtk_popover_set_offset()`.
    @inlinable func getOffset(xOffset: UnsafeMutablePointer<gint>?, yOffset: UnsafeMutablePointer<gint>?) {
        gtk_popover_get_offset(popover_ptr, xOffset, yOffset)
    
    }

    /// If a rectangle to point to has been set, this function will
    /// return `true` and fill in `rect` with such rectangle, otherwise
    /// it will return `false` and fill in `rect` with the attached
    /// widget coordinates.
    @inlinable func getPointingTo<RectangleT: Gdk.RectangleProtocol>(rect: RectangleT) -> Bool {
        let rv = ((gtk_popover_get_pointing_to(popover_ptr, rect.rectangle_ptr)) != 0)
        return rv
    }

    /// Returns the preferred position of `popover`.
    @inlinable func getPosition() -> GtkPositionType {
        let rv = gtk_popover_get_position(popover_ptr)
        return rv
    }

    /// Pops `popover` down.This is different than a `gtk_widget_hide()` call
    /// in that it shows the popover with a transition. If you want to hide
    /// the popover without a transition, use `gtk_widget_hide()`.
    @inlinable func popdown() {
        gtk_popover_popdown(popover_ptr)
    
    }

    /// Pops `popover` up. This is different than a `gtk_widget_show()` call
    /// in that it shows the popover with a transition. If you want to show
    /// the popover without a transition, use `gtk_widget_show()`.
    @inlinable func popup() {
        gtk_popover_popup(popover_ptr)
    
    }

    /// Presents the popover to the user.
    @inlinable func present() {
        gtk_popover_present(popover_ptr)
    
    }

    /// Sets whether `popover` is modal.
    /// 
    /// A modal popover will grab the keyboard focus on it when being
    /// displayed. Clicking outside the popover area or pressing Esc will
    /// dismiss the popover.
    /// 
    /// Called this function on an already showing popup with a new autohide value
    /// different from the current one, will cause the popup to be hidden.
    @inlinable func set(autohide: Bool) {
        gtk_popover_set_autohide(popover_ptr, gboolean((autohide) ? 1 : 0))
    
    }

    /// If `cascade_popdown` is `TRUE`, the popover will be closed when a child
    /// modal popover is closed. If `FALSE`, `popover` will stay visible.
    @inlinable func set(cascadePopdown: Bool) {
        gtk_popover_set_cascade_popdown(popover_ptr, gboolean((cascadePopdown) ? 1 : 0))
    
    }

    /// Sets the child widget of `popover`.
    @inlinable func set(child: WidgetRef? = nil) {
        gtk_popover_set_child(popover_ptr, child?.widget_ptr)
    
    }
    /// Sets the child widget of `popover`.
    @inlinable func set<WidgetT: WidgetProtocol>(child: WidgetT?) {
        gtk_popover_set_child(popover_ptr, child?.widget_ptr)
    
    }

    /// The default widget is the widget that’s activated when the user
    /// presses Enter in a dialog (for example). This function sets or
    /// unsets the default widget for a `GtkPopover`.
    @inlinable func setDefault(widget: WidgetRef? = nil) {
        gtk_popover_set_default_widget(popover_ptr, widget?.widget_ptr)
    
    }
    /// The default widget is the widget that’s activated when the user
    /// presses Enter in a dialog (for example). This function sets or
    /// unsets the default widget for a `GtkPopover`.
    @inlinable func setDefault<WidgetT: WidgetProtocol>(widget: WidgetT?) {
        gtk_popover_set_default_widget(popover_ptr, widget?.widget_ptr)
    
    }

    /// Sets whether this popover should draw an arrow
    /// pointing at the widget it is relative to.
    @inlinable func set(hasArrow: Bool) {
        gtk_popover_set_has_arrow(popover_ptr, gboolean((hasArrow) ? 1 : 0))
    
    }

    /// Sets the `GtkPopover:mnemonics`-visible property.
    @inlinable func set(mnemonicsVisible: Bool) {
        gtk_popover_set_mnemonics_visible(popover_ptr, gboolean((mnemonicsVisible) ? 1 : 0))
    
    }

    /// Sets the offset to use when calculating the position of the popover.
    /// 
    /// These values are used when preparing the `GtkPopupLayout` for positioning
    /// the popover.
    @inlinable func setOffset(xOffset: Int, yOffset: Int) {
        gtk_popover_set_offset(popover_ptr, gint(xOffset), gint(yOffset))
    
    }

    /// Sets the rectangle that `popover` will point to, in the
    /// coordinate space of the `popover` parent.
    @inlinable func setPointingTo<RectangleT: Gdk.RectangleProtocol>(rect: RectangleT) {
        gtk_popover_set_pointing_to(popover_ptr, rect.rectangle_ptr)
    
    }

    /// Sets the preferred position for `popover` to appear. If the `popover`
    /// is currently visible, it will be immediately updated.
    /// 
    /// This preference will be respected where possible, although
    /// on lack of space (eg. if close to the window edges), the
    /// `GtkPopover` may choose to appear on the opposite side
    @inlinable func set(position: GtkPositionType) {
        gtk_popover_set_position(popover_ptr, position)
    
    }
    @inlinable var autohide: Bool {
        /// Returns whether the popover is modal.
        /// 
        /// See `gtk_popover_set_autohide()` for the
        /// implications of this.
        get {
            let rv = ((gtk_popover_get_autohide(popover_ptr)) != 0)
            return rv
        }
        /// Sets whether `popover` is modal.
        /// 
        /// A modal popover will grab the keyboard focus on it when being
        /// displayed. Clicking outside the popover area or pressing Esc will
        /// dismiss the popover.
        /// 
        /// Called this function on an already showing popup with a new autohide value
        /// different from the current one, will cause the popup to be hidden.
        nonmutating set {
            gtk_popover_set_autohide(popover_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the popover will close after a modal child is closed.
    @inlinable var cascadePopdown: Bool {
        /// Returns whether the popover will close after a modal child is closed.
        get {
            let rv = ((gtk_popover_get_cascade_popdown(popover_ptr)) != 0)
            return rv
        }
        /// If `cascade_popdown` is `TRUE`, the popover will be closed when a child
        /// modal popover is closed. If `FALSE`, `popover` will stay visible.
        nonmutating set {
            gtk_popover_set_cascade_popdown(popover_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var child: WidgetRef! {
        /// Gets the child widget of `popover`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_popover_get_child(popover_ptr))) else { return nil }
            return rv
        }
        /// Sets the child widget of `popover`.
        nonmutating set {
            gtk_popover_set_child(popover_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Gets whether this popover is showing an arrow
    /// pointing at the widget that it is relative to.
    @inlinable var hasArrow: Bool {
        /// Gets whether this popover is showing an arrow
        /// pointing at the widget that it is relative to.
        get {
            let rv = ((gtk_popover_get_has_arrow(popover_ptr)) != 0)
            return rv
        }
        /// Sets whether this popover should draw an arrow
        /// pointing at the widget it is relative to.
        nonmutating set {
            gtk_popover_set_has_arrow(popover_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the value of the `GtkPopover:mnemonics`-visible property.
    @inlinable var mnemonicsVisible: Bool {
        /// Gets the value of the `GtkPopover:mnemonics`-visible property.
        get {
            let rv = ((gtk_popover_get_mnemonics_visible(popover_ptr)) != 0)
            return rv
        }
        /// Sets the `GtkPopover:mnemonics`-visible property.
        nonmutating set {
            gtk_popover_set_mnemonics_visible(popover_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var position: GtkPositionType {
        /// Returns the preferred position of `popover`.
        get {
            let rv = gtk_popover_get_position(popover_ptr)
            return rv
        }
        /// Sets the preferred position for `popover` to appear. If the `popover`
        /// is currently visible, it will be immediately updated.
        /// 
        /// This preference will be respected where possible, although
        /// on lack of space (eg. if close to the window edges), the
        /// `GtkPopover` may choose to appear on the opposite side
        nonmutating set {
            gtk_popover_set_position(popover_ptr, newValue)
        }
    }

    @inlinable var parent: GtkWidget {
        get {
            let rv = popover_ptr.pointee.parent
            return rv
        }
    }

}



// MARK: - PopoverMenu Class

/// The `PopoverMenuProtocol` protocol exposes the methods and properties of an underlying `GtkPopoverMenu` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PopoverMenu`.
/// Alternatively, use `PopoverMenuRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkPopoverMenu is a subclass of `GtkPopover` that treats its
/// children like menus and allows switching between them. It
/// can open submenus as traditional, nested submenus, or in a
/// more touch-friendly sliding fashion.
/// 
/// GtkPopoverMenu is meant to be used primarily with menu models,
/// using `gtk_popover_menu_new_from_model()`. If you need to put other
/// widgets such as `GtkSpinButton` or `GtkSwitch` into a popover,
/// use a plain `GtkPopover`.
/// 
/// ## Menu models
/// 
/// The XML format understood by `GtkBuilder` for `GMenuModel` consists
/// of a toplevel `<menu>` element, which contains one or more `<item>`
/// elements. Each `<item>` element contains `<attribute>` and `<link>`
/// elements with a mandatory name attribute. `<link>` elements have the
/// same content model as `<menu>`. Instead of `<link name="submenu>` or
/// `<link name="section">`, you can use `<submenu>` or `<section>`
/// elements.
/// 
/// ```
/// <menu id='app-menu'>
///   <section>
///     <item>
///       <attribute name='label' translatable='yes'>_New Window</attribute>
///       <attribute name='action'>app.new</attribute>
///     </item>
///     <item>
///       <attribute name='label' translatable='yes'>_About Sunny</attribute>
///       <attribute name='action'>app.about</attribute>
///     </item>
///     <item>
///       <attribute name='label' translatable='yes'>_Quit</attribute>
///       <attribute name='action'>app.quit</attribute>
///     </item>
///   </section>
/// </menu>
/// ```
/// 
/// Attribute values can be translated using gettext, like other `GtkBuilder`
/// content. `<attribute>` elements can be marked for translation with a
/// `translatable="yes"` attribute. It is also possible to specify message
/// context and translator comments, using the context and comments attributes.
/// To make use of this, the `GtkBuilder` must have been given the gettext
/// domain to use.
/// 
/// The following attributes are used when constructing menu items:
/// - "label": a user-visible string to display
/// - "action": the prefixed name of the action to trigger
/// - "target": the parameter to use when activating the action
/// - "icon" and "verb-icon": names of icons that may be displayed
/// - "submenu-action": name of an action that may be used to determine
///      if a submenu can be opened
/// - "hidden-when": a string used to determine when the item will be hidden.
///      Possible values include "action-disabled", "action-missing", "macos-menubar".
///      This is mainly useful for exported menus, see `gtk_application_set_menubar()`.
/// - "custom": a string used to match against the ID of a custom child added
///      with `gtk_popover_menu_add_child()`, `gtk_popover_menu_bar_add_child()`, or
///      in the ui file with `<child type="ID">`.
/// 
/// The following attributes are used when constructing sections:
/// - "label": a user-visible string to use as section heading
/// - "display-hint": a string used to determine special formatting for the section.
///     Possible values include "horizontal-buttons", "circular-buttons" and "inline-buttons". They all indicate that section should be
///     displayed as a horizontal row of buttons.
/// - "text-direction": a string used to determine the `GtkTextDirection` to use
///     when "display-hint" is set to "horizontal-buttons". Possible values
///     include "rtl", "ltr", and "none".
/// 
/// The following attributes are used when constructing submenus:
/// - "label": a user-visible string to display
/// - "icon": icon name to display
/// 
/// Menu items will also show accelerators, which are usually associated
/// with actions via `gtk_application_set_accels_for_action()`,
/// `gtk_widget_class_add_binding_action()` or `gtk_shortcut_controller_add_shortcut()`.
/// 
/// # CSS Nodes
/// 
/// `GtkPopoverMenu` is just a subclass of `GtkPopover` that adds
/// custom content to it, therefore it has the same CSS nodes.
/// It is one of the cases that add a .menu style class to
/// the popover's main node.
/// 
/// # Accessibility
/// 
/// GtkPopoverMenu uses the `GTK_ACCESSIBLE_ROLE_MENU` role, and its
/// items use the `GTK_ACCESSIBLE_ROLE_MENU_ITEM`, `GTK_ACCESSIBLE_ROLE_MENU_ITEM_CHECKBOX` or `GTK_ACCESSIBLE_ROLE_MENU_ITEM_RADIO` roles, depending on the
/// action they are connected to.
public protocol PopoverMenuProtocol: PopoverProtocol {
        /// Untyped pointer to the underlying `GtkPopoverMenu` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPopoverMenu` instance.
    var popover_menu_ptr: UnsafeMutablePointer<GtkPopoverMenu>! { get }

}

/// The `PopoverMenuRef` type acts as a lightweight Swift reference to an underlying `GtkPopoverMenu` instance.
/// It exposes methods that can operate on this data type through `PopoverMenuProtocol` conformance.
/// Use `PopoverMenuRef` only as an `unowned` reference to an existing `GtkPopoverMenu` instance.
///
/// GtkPopoverMenu is a subclass of `GtkPopover` that treats its
/// children like menus and allows switching between them. It
/// can open submenus as traditional, nested submenus, or in a
/// more touch-friendly sliding fashion.
/// 
/// GtkPopoverMenu is meant to be used primarily with menu models,
/// using `gtk_popover_menu_new_from_model()`. If you need to put other
/// widgets such as `GtkSpinButton` or `GtkSwitch` into a popover,
/// use a plain `GtkPopover`.
/// 
/// ## Menu models
/// 
/// The XML format understood by `GtkBuilder` for `GMenuModel` consists
/// of a toplevel `<menu>` element, which contains one or more `<item>`
/// elements. Each `<item>` element contains `<attribute>` and `<link>`
/// elements with a mandatory name attribute. `<link>` elements have the
/// same content model as `<menu>`. Instead of `<link name="submenu>` or
/// `<link name="section">`, you can use `<submenu>` or `<section>`
/// elements.
/// 
/// ```
/// <menu id='app-menu'>
///   <section>
///     <item>
///       <attribute name='label' translatable='yes'>_New Window</attribute>
///       <attribute name='action'>app.new</attribute>
///     </item>
///     <item>
///       <attribute name='label' translatable='yes'>_About Sunny</attribute>
///       <attribute name='action'>app.about</attribute>
///     </item>
///     <item>
///       <attribute name='label' translatable='yes'>_Quit</attribute>
///       <attribute name='action'>app.quit</attribute>
///     </item>
///   </section>
/// </menu>
/// ```
/// 
/// Attribute values can be translated using gettext, like other `GtkBuilder`
/// content. `<attribute>` elements can be marked for translation with a
/// `translatable="yes"` attribute. It is also possible to specify message
/// context and translator comments, using the context and comments attributes.
/// To make use of this, the `GtkBuilder` must have been given the gettext
/// domain to use.
/// 
/// The following attributes are used when constructing menu items:
/// - "label": a user-visible string to display
/// - "action": the prefixed name of the action to trigger
/// - "target": the parameter to use when activating the action
/// - "icon" and "verb-icon": names of icons that may be displayed
/// - "submenu-action": name of an action that may be used to determine
///      if a submenu can be opened
/// - "hidden-when": a string used to determine when the item will be hidden.
///      Possible values include "action-disabled", "action-missing", "macos-menubar".
///      This is mainly useful for exported menus, see `gtk_application_set_menubar()`.
/// - "custom": a string used to match against the ID of a custom child added
///      with `gtk_popover_menu_add_child()`, `gtk_popover_menu_bar_add_child()`, or
///      in the ui file with `<child type="ID">`.
/// 
/// The following attributes are used when constructing sections:
/// - "label": a user-visible string to use as section heading
/// - "display-hint": a string used to determine special formatting for the section.
///     Possible values include "horizontal-buttons", "circular-buttons" and "inline-buttons". They all indicate that section should be
///     displayed as a horizontal row of buttons.
/// - "text-direction": a string used to determine the `GtkTextDirection` to use
///     when "display-hint" is set to "horizontal-buttons". Possible values
///     include "rtl", "ltr", and "none".
/// 
/// The following attributes are used when constructing submenus:
/// - "label": a user-visible string to display
/// - "icon": icon name to display
/// 
/// Menu items will also show accelerators, which are usually associated
/// with actions via `gtk_application_set_accels_for_action()`,
/// `gtk_widget_class_add_binding_action()` or `gtk_shortcut_controller_add_shortcut()`.
/// 
/// # CSS Nodes
/// 
/// `GtkPopoverMenu` is just a subclass of `GtkPopover` that adds
/// custom content to it, therefore it has the same CSS nodes.
/// It is one of the cases that add a .menu style class to
/// the popover's main node.
/// 
/// # Accessibility
/// 
/// GtkPopoverMenu uses the `GTK_ACCESSIBLE_ROLE_MENU` role, and its
/// items use the `GTK_ACCESSIBLE_ROLE_MENU_ITEM`, `GTK_ACCESSIBLE_ROLE_MENU_ITEM_CHECKBOX` or `GTK_ACCESSIBLE_ROLE_MENU_ITEM_RADIO` roles, depending on the
/// action they are connected to.
public struct PopoverMenuRef: PopoverMenuProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkPopoverMenu` instance.
    /// For type-safe access, use the generated, typed pointer `popover_menu_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PopoverMenuRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPopoverMenu>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPopoverMenu>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPopoverMenu>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPopoverMenu>?) {
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

    /// Reference intialiser for a related type that implements `PopoverMenuProtocol`
    @inlinable init<T: PopoverMenuProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: PopoverMenuProtocol>(_ other: T) -> PopoverMenuRef { PopoverMenuRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GtkPopoverMenu` and populates it according to
    /// `model`.
    /// 
    /// The created buttons are connected to actions found in the
    /// `GtkApplicationWindow` to which the popover belongs - typically
    /// by means of being attached to a widget that is contained within
    /// the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using `gtk_widget_insert_action_group()`
    /// on the menus attach widget or on any of its parent widgets.
    /// 
    /// This function creates menus with sliding submenus.
    /// See `gtk_popover_menu_new_from_model_full()` for a way
    /// to control this.
    @inlinable init<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT?) {
        let rv = gtk_popover_menu_new_from_model(model?.menu_model_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GtkPopoverMenu` and populates it according to
    /// `model`.
    /// 
    /// The created buttons are connected to actions found in the
    /// action groups that are accessible from the parent widget.
    /// This includes the `GtkApplicationWindow` to which the popover
    /// belongs. Actions can also be added using `gtk_widget_insert_action_group()`
    /// on the parent widget or on any of its parent widgets.
    /// 
    /// The only flag that is supported currently is
    /// `GTK_POPOVER_MENU_NESTED`, which makes GTK create traditional,
    /// nested submenus instead of the default sliding submenus.
    @inlinable init<MenuModelT: GIO.MenuModelProtocol>(modelFull model: MenuModelT, flags: PopoverMenuFlags) {
        let rv = gtk_popover_menu_new_from_model_full(model.menu_model_ptr, flags.value)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a `GtkPopoverMenu` and populates it according to
    /// `model`.
    /// 
    /// The created buttons are connected to actions found in the
    /// `GtkApplicationWindow` to which the popover belongs - typically
    /// by means of being attached to a widget that is contained within
    /// the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using `gtk_widget_insert_action_group()`
    /// on the menus attach widget or on any of its parent widgets.
    /// 
    /// This function creates menus with sliding submenus.
    /// See `gtk_popover_menu_new_from_model_full()` for a way
    /// to control this.
    @inlinable static func newFrom<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT?) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_popover_menu_new_from_model(model?.menu_model_ptr))) else { return nil }
        return rv
    }

    /// Creates a `GtkPopoverMenu` and populates it according to
    /// `model`.
    /// 
    /// The created buttons are connected to actions found in the
    /// action groups that are accessible from the parent widget.
    /// This includes the `GtkApplicationWindow` to which the popover
    /// belongs. Actions can also be added using `gtk_widget_insert_action_group()`
    /// on the parent widget or on any of its parent widgets.
    /// 
    /// The only flag that is supported currently is
    /// `GTK_POPOVER_MENU_NESTED`, which makes GTK create traditional,
    /// nested submenus instead of the default sliding submenus.
    @inlinable static func newFrom<MenuModelT: GIO.MenuModelProtocol>(modelFull model: MenuModelT, flags: PopoverMenuFlags) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_popover_menu_new_from_model_full(model.menu_model_ptr, flags.value))) else { return nil }
        return rv
    }
}

/// The `PopoverMenu` type acts as a reference-counted owner of an underlying `GtkPopoverMenu` instance.
/// It provides the methods that can operate on this data type through `PopoverMenuProtocol` conformance.
/// Use `PopoverMenu` as a strong reference or owner of a `GtkPopoverMenu` instance.
///
/// GtkPopoverMenu is a subclass of `GtkPopover` that treats its
/// children like menus and allows switching between them. It
/// can open submenus as traditional, nested submenus, or in a
/// more touch-friendly sliding fashion.
/// 
/// GtkPopoverMenu is meant to be used primarily with menu models,
/// using `gtk_popover_menu_new_from_model()`. If you need to put other
/// widgets such as `GtkSpinButton` or `GtkSwitch` into a popover,
/// use a plain `GtkPopover`.
/// 
/// ## Menu models
/// 
/// The XML format understood by `GtkBuilder` for `GMenuModel` consists
/// of a toplevel `<menu>` element, which contains one or more `<item>`
/// elements. Each `<item>` element contains `<attribute>` and `<link>`
/// elements with a mandatory name attribute. `<link>` elements have the
/// same content model as `<menu>`. Instead of `<link name="submenu>` or
/// `<link name="section">`, you can use `<submenu>` or `<section>`
/// elements.
/// 
/// ```
/// <menu id='app-menu'>
///   <section>
///     <item>
///       <attribute name='label' translatable='yes'>_New Window</attribute>
///       <attribute name='action'>app.new</attribute>
///     </item>
///     <item>
///       <attribute name='label' translatable='yes'>_About Sunny</attribute>
///       <attribute name='action'>app.about</attribute>
///     </item>
///     <item>
///       <attribute name='label' translatable='yes'>_Quit</attribute>
///       <attribute name='action'>app.quit</attribute>
///     </item>
///   </section>
/// </menu>
/// ```
/// 
/// Attribute values can be translated using gettext, like other `GtkBuilder`
/// content. `<attribute>` elements can be marked for translation with a
/// `translatable="yes"` attribute. It is also possible to specify message
/// context and translator comments, using the context and comments attributes.
/// To make use of this, the `GtkBuilder` must have been given the gettext
/// domain to use.
/// 
/// The following attributes are used when constructing menu items:
/// - "label": a user-visible string to display
/// - "action": the prefixed name of the action to trigger
/// - "target": the parameter to use when activating the action
/// - "icon" and "verb-icon": names of icons that may be displayed
/// - "submenu-action": name of an action that may be used to determine
///      if a submenu can be opened
/// - "hidden-when": a string used to determine when the item will be hidden.
///      Possible values include "action-disabled", "action-missing", "macos-menubar".
///      This is mainly useful for exported menus, see `gtk_application_set_menubar()`.
/// - "custom": a string used to match against the ID of a custom child added
///      with `gtk_popover_menu_add_child()`, `gtk_popover_menu_bar_add_child()`, or
///      in the ui file with `<child type="ID">`.
/// 
/// The following attributes are used when constructing sections:
/// - "label": a user-visible string to use as section heading
/// - "display-hint": a string used to determine special formatting for the section.
///     Possible values include "horizontal-buttons", "circular-buttons" and "inline-buttons". They all indicate that section should be
///     displayed as a horizontal row of buttons.
/// - "text-direction": a string used to determine the `GtkTextDirection` to use
///     when "display-hint" is set to "horizontal-buttons". Possible values
///     include "rtl", "ltr", and "none".
/// 
/// The following attributes are used when constructing submenus:
/// - "label": a user-visible string to display
/// - "icon": icon name to display
/// 
/// Menu items will also show accelerators, which are usually associated
/// with actions via `gtk_application_set_accels_for_action()`,
/// `gtk_widget_class_add_binding_action()` or `gtk_shortcut_controller_add_shortcut()`.
/// 
/// # CSS Nodes
/// 
/// `GtkPopoverMenu` is just a subclass of `GtkPopover` that adds
/// custom content to it, therefore it has the same CSS nodes.
/// It is one of the cases that add a .menu style class to
/// the popover's main node.
/// 
/// # Accessibility
/// 
/// GtkPopoverMenu uses the `GTK_ACCESSIBLE_ROLE_MENU` role, and its
/// items use the `GTK_ACCESSIBLE_ROLE_MENU_ITEM`, `GTK_ACCESSIBLE_ROLE_MENU_ITEM_CHECKBOX` or `GTK_ACCESSIBLE_ROLE_MENU_ITEM_RADIO` roles, depending on the
/// action they are connected to.
open class PopoverMenu: Popover, PopoverMenuProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopoverMenu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPopoverMenu>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopoverMenu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPopoverMenu>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopoverMenu` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopoverMenu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopoverMenu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPopoverMenu>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopoverMenu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPopoverMenu>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkPopoverMenu`.
    /// i.e., ownership is transferred to the `PopoverMenu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPopoverMenu>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PopoverMenuProtocol`
    /// Will retain `GtkPopoverMenu`.
    /// - Parameter other: an instance of a related type that implements `PopoverMenuProtocol`
    @inlinable public init<T: PopoverMenuProtocol>(popoverMenu other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a `GtkPopoverMenu` and populates it according to
    /// `model`.
    /// 
    /// The created buttons are connected to actions found in the
    /// `GtkApplicationWindow` to which the popover belongs - typically
    /// by means of being attached to a widget that is contained within
    /// the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using `gtk_widget_insert_action_group()`
    /// on the menus attach widget or on any of its parent widgets.
    /// 
    /// This function creates menus with sliding submenus.
    /// See `gtk_popover_menu_new_from_model_full()` for a way
    /// to control this.
    @inlinable public init<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT?) {
        let rv = gtk_popover_menu_new_from_model(model?.menu_model_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkPopoverMenu` and populates it according to
    /// `model`.
    /// 
    /// The created buttons are connected to actions found in the
    /// action groups that are accessible from the parent widget.
    /// This includes the `GtkApplicationWindow` to which the popover
    /// belongs. Actions can also be added using `gtk_widget_insert_action_group()`
    /// on the parent widget or on any of its parent widgets.
    /// 
    /// The only flag that is supported currently is
    /// `GTK_POPOVER_MENU_NESTED`, which makes GTK create traditional,
    /// nested submenus instead of the default sliding submenus.
    @inlinable public init<MenuModelT: GIO.MenuModelProtocol>(modelFull model: MenuModelT, flags: PopoverMenuFlags) {
        let rv = gtk_popover_menu_new_from_model_full(model.menu_model_ptr, flags.value)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkPopoverMenu` and populates it according to
    /// `model`.
    /// 
    /// The created buttons are connected to actions found in the
    /// `GtkApplicationWindow` to which the popover belongs - typically
    /// by means of being attached to a widget that is contained within
    /// the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using `gtk_widget_insert_action_group()`
    /// on the menus attach widget or on any of its parent widgets.
    /// 
    /// This function creates menus with sliding submenus.
    /// See `gtk_popover_menu_new_from_model_full()` for a way
    /// to control this.
    @inlinable public static func newFrom<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT?) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_popover_menu_new_from_model(model?.menu_model_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a `GtkPopoverMenu` and populates it according to
    /// `model`.
    /// 
    /// The created buttons are connected to actions found in the
    /// action groups that are accessible from the parent widget.
    /// This includes the `GtkApplicationWindow` to which the popover
    /// belongs. Actions can also be added using `gtk_widget_insert_action_group()`
    /// on the parent widget or on any of its parent widgets.
    /// 
    /// The only flag that is supported currently is
    /// `GTK_POPOVER_MENU_NESTED`, which makes GTK create traditional,
    /// nested submenus instead of the default sliding submenus.
    @inlinable public static func newFrom<MenuModelT: GIO.MenuModelProtocol>(modelFull model: MenuModelT, flags: PopoverMenuFlags) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_popover_menu_new_from_model_full(model.menu_model_ptr, flags.value))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum PopoverMenuPropertyName: String, PropertyNameProtocol {
    case autohide = "autohide"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    case cascadePopdown = "cascade-popdown"
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    case defaultWidget = "default-widget"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasArrow = "has-arrow"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    case menuModel = "menu-model"
    case mnemonicsVisible = "mnemonics-visible"
    case name = "name"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case pointingTo = "pointing-to"
    case position = "position"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case visibleSubmenu = "visible-submenu"
    case widthRequest = "width-request"
}

public extension PopoverMenuProtocol {
    /// Bind a `PopoverMenuPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PopoverMenuPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a PopoverMenu property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: PopoverMenuPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a PopoverMenu property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: PopoverMenuPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: PopoverMenu has no signals// MARK: PopoverMenu Class: PopoverMenuProtocol extension (methods and fields)
public extension PopoverMenuProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPopoverMenu` instance.
    @inlinable var popover_menu_ptr: UnsafeMutablePointer<GtkPopoverMenu>! { return ptr?.assumingMemoryBound(to: GtkPopoverMenu.self) }

    /// Adds a custom widget to a generated menu.
    /// 
    /// For this to work, the menu model of `popover` must have an
    /// item with a `custom` attribute that matches `id`.
    @inlinable func add<WidgetT: WidgetProtocol>(child: WidgetT, id: UnsafePointer<CChar>!) -> Bool {
        let rv = ((gtk_popover_menu_add_child(popover_menu_ptr, child.widget_ptr, id)) != 0)
        return rv
    }

    /// Returns the menu model used to populate the popover.
    @inlinable func getMenuModel() -> GIO.MenuModelRef! {
        let rv = GIO.MenuModelRef(gtk_popover_menu_get_menu_model(popover_menu_ptr))
        return rv
    }

    /// Removes a widget that has previously been added with
    /// `gtk_popover_menu_add_child()`.
    @inlinable func remove<WidgetT: WidgetProtocol>(child: WidgetT) -> Bool {
        let rv = ((gtk_popover_menu_remove_child(popover_menu_ptr, child.widget_ptr)) != 0)
        return rv
    }

    /// Sets a new menu model on `popover`.
    /// 
    /// The existing contents of `popover` are removed, and
    /// the `popover` is populated with new contents according
    /// to `model`.
    @inlinable func setMenu(model: GIO.MenuModelRef? = nil) {
        gtk_popover_menu_set_menu_model(popover_menu_ptr, model?.menu_model_ptr)
    
    }
    /// Sets a new menu model on `popover`.
    /// 
    /// The existing contents of `popover` are removed, and
    /// the `popover` is populated with new contents according
    /// to `model`.
    @inlinable func setMenu<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT?) {
        gtk_popover_menu_set_menu_model(popover_menu_ptr, model?.menu_model_ptr)
    
    }
    /// Returns the menu model used to populate the popover.
    @inlinable var menuModel: GIO.MenuModelRef! {
        /// Returns the menu model used to populate the popover.
        get {
            let rv = GIO.MenuModelRef(gtk_popover_menu_get_menu_model(popover_menu_ptr))
            return rv
        }
        /// Sets a new menu model on `popover`.
        /// 
        /// The existing contents of `popover` are removed, and
        /// the `popover` is populated with new contents according
        /// to `model`.
        nonmutating set {
            gtk_popover_menu_set_menu_model(popover_menu_ptr, UnsafeMutablePointer<GMenuModel>(newValue?.menu_model_ptr))
        }
    }


}



// MARK: - PopoverMenuBar Class

/// The `PopoverMenuBarProtocol` protocol exposes the methods and properties of an underlying `GtkPopoverMenuBar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PopoverMenuBar`.
/// Alternatively, use `PopoverMenuBarRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkPopoverMenuBar presents a horizontal bar of items that pop
/// up popover menus when clicked.
/// 
/// The only way to create instances of GtkPopoverMenuBar is
/// from a `GMenuModel`.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// menubar
/// ├── item[.active]
/// ┊   ╰── popover
/// ╰── item
///     ╰── popover
/// ```
/// 
/// GtkPopoverMenuBar has a single CSS node with name menubar, below which
/// each item has its CSS node, and below that the corresponding popover.
/// 
/// The item whose popover is currently open gets the .active
/// style class.
/// 
/// # Accessibility
/// 
/// GtkPopoverMenuBar uses the `GTK_ACCESSIBLE_ROLE_MENU_BAR` role,
/// the menu items use the `GTK_ACCESSIBLE_ROLE_MENU_ITEM` role and
/// the menus use the `GTK_ACCESSIBLE_ROLE_MENU` role.
public protocol PopoverMenuBarProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkPopoverMenuBar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPopoverMenuBar` instance.
    var popover_menu_bar_ptr: UnsafeMutablePointer<GtkPopoverMenuBar>! { get }

}

/// The `PopoverMenuBarRef` type acts as a lightweight Swift reference to an underlying `GtkPopoverMenuBar` instance.
/// It exposes methods that can operate on this data type through `PopoverMenuBarProtocol` conformance.
/// Use `PopoverMenuBarRef` only as an `unowned` reference to an existing `GtkPopoverMenuBar` instance.
///
/// GtkPopoverMenuBar presents a horizontal bar of items that pop
/// up popover menus when clicked.
/// 
/// The only way to create instances of GtkPopoverMenuBar is
/// from a `GMenuModel`.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// menubar
/// ├── item[.active]
/// ┊   ╰── popover
/// ╰── item
///     ╰── popover
/// ```
/// 
/// GtkPopoverMenuBar has a single CSS node with name menubar, below which
/// each item has its CSS node, and below that the corresponding popover.
/// 
/// The item whose popover is currently open gets the .active
/// style class.
/// 
/// # Accessibility
/// 
/// GtkPopoverMenuBar uses the `GTK_ACCESSIBLE_ROLE_MENU_BAR` role,
/// the menu items use the `GTK_ACCESSIBLE_ROLE_MENU_ITEM` role and
/// the menus use the `GTK_ACCESSIBLE_ROLE_MENU` role.
public struct PopoverMenuBarRef: PopoverMenuBarProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkPopoverMenuBar` instance.
    /// For type-safe access, use the generated, typed pointer `popover_menu_bar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PopoverMenuBarRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPopoverMenuBar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPopoverMenuBar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPopoverMenuBar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPopoverMenuBar>?) {
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

    /// Reference intialiser for a related type that implements `PopoverMenuBarProtocol`
    @inlinable init<T: PopoverMenuBarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: PopoverMenuBarProtocol>(_ other: T) -> PopoverMenuBarRef { PopoverMenuBarRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuBarProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuBarProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuBarProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuBarProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuBarProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GtkPopoverMenuBar` from a `GMenuModel`.
    @inlinable init<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT?) {
        let rv = gtk_popover_menu_bar_new_from_model(model?.menu_model_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a `GtkPopoverMenuBar` from a `GMenuModel`.
    @inlinable static func newFrom<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT?) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_popover_menu_bar_new_from_model(model?.menu_model_ptr))) else { return nil }
        return rv
    }
}

/// The `PopoverMenuBar` type acts as a reference-counted owner of an underlying `GtkPopoverMenuBar` instance.
/// It provides the methods that can operate on this data type through `PopoverMenuBarProtocol` conformance.
/// Use `PopoverMenuBar` as a strong reference or owner of a `GtkPopoverMenuBar` instance.
///
/// GtkPopoverMenuBar presents a horizontal bar of items that pop
/// up popover menus when clicked.
/// 
/// The only way to create instances of GtkPopoverMenuBar is
/// from a `GMenuModel`.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// menubar
/// ├── item[.active]
/// ┊   ╰── popover
/// ╰── item
///     ╰── popover
/// ```
/// 
/// GtkPopoverMenuBar has a single CSS node with name menubar, below which
/// each item has its CSS node, and below that the corresponding popover.
/// 
/// The item whose popover is currently open gets the .active
/// style class.
/// 
/// # Accessibility
/// 
/// GtkPopoverMenuBar uses the `GTK_ACCESSIBLE_ROLE_MENU_BAR` role,
/// the menu items use the `GTK_ACCESSIBLE_ROLE_MENU_ITEM` role and
/// the menus use the `GTK_ACCESSIBLE_ROLE_MENU` role.
open class PopoverMenuBar: Widget, PopoverMenuBarProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopoverMenuBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPopoverMenuBar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopoverMenuBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPopoverMenuBar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopoverMenuBar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopoverMenuBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopoverMenuBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPopoverMenuBar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopoverMenuBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPopoverMenuBar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkPopoverMenuBar`.
    /// i.e., ownership is transferred to the `PopoverMenuBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPopoverMenuBar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PopoverMenuBarProtocol`
    /// Will retain `GtkPopoverMenuBar`.
    /// - Parameter other: an instance of a related type that implements `PopoverMenuBarProtocol`
    @inlinable public init<T: PopoverMenuBarProtocol>(popoverMenuBar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuBarProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuBarProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuBarProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuBarProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a `GtkPopoverMenuBar` from a `GMenuModel`.
    @inlinable public init<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT?) {
        let rv = gtk_popover_menu_bar_new_from_model(model?.menu_model_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkPopoverMenuBar` from a `GMenuModel`.
    @inlinable public static func newFrom<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT?) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_popover_menu_bar_new_from_model(model?.menu_model_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum PopoverMenuBarPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    /// The `GMenuModel` from which the menu bar is created.
    /// 
    /// The model should only contain submenus as toplevel elements.
    case menuModel = "menu-model"
    case name = "name"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
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
}

public extension PopoverMenuBarProtocol {
    /// Bind a `PopoverMenuBarPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PopoverMenuBarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a PopoverMenuBar property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: PopoverMenuBarPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a PopoverMenuBar property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: PopoverMenuBarPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: PopoverMenuBar has no signals// MARK: PopoverMenuBar Class: PopoverMenuBarProtocol extension (methods and fields)
public extension PopoverMenuBarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPopoverMenuBar` instance.
    @inlinable var popover_menu_bar_ptr: UnsafeMutablePointer<GtkPopoverMenuBar>! { return ptr?.assumingMemoryBound(to: GtkPopoverMenuBar.self) }

    /// Adds a custom widget to a generated menubar.
    /// 
    /// For this to work, the menu model of `bar` must have an
    /// item with a `custom` attribute that matches `id`.
    @inlinable func add<WidgetT: WidgetProtocol>(child: WidgetT, id: UnsafePointer<CChar>!) -> Bool {
        let rv = ((gtk_popover_menu_bar_add_child(popover_menu_bar_ptr, child.widget_ptr, id)) != 0)
        return rv
    }

    /// Returns the model from which the contents of `bar` are taken.
    @inlinable func getMenuModel() -> GIO.MenuModelRef! {
        let rv = GIO.MenuModelRef(gtk_popover_menu_bar_get_menu_model(popover_menu_bar_ptr))
        return rv
    }

    /// Removes a widget that has previously been added with
    /// `gtk_popover_menu_bar_add_child()`.
    @inlinable func remove<WidgetT: WidgetProtocol>(child: WidgetT) -> Bool {
        let rv = ((gtk_popover_menu_bar_remove_child(popover_menu_bar_ptr, child.widget_ptr)) != 0)
        return rv
    }

    /// Sets a menu model from which `bar` should take
    /// its contents.
    @inlinable func setMenu(model: GIO.MenuModelRef? = nil) {
        gtk_popover_menu_bar_set_menu_model(popover_menu_bar_ptr, model?.menu_model_ptr)
    
    }
    /// Sets a menu model from which `bar` should take
    /// its contents.
    @inlinable func setMenu<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT?) {
        gtk_popover_menu_bar_set_menu_model(popover_menu_bar_ptr, model?.menu_model_ptr)
    
    }
    /// Returns the model from which the contents of `bar` are taken.
    @inlinable var menuModel: GIO.MenuModelRef! {
        /// Returns the model from which the contents of `bar` are taken.
        get {
            let rv = GIO.MenuModelRef(gtk_popover_menu_bar_get_menu_model(popover_menu_bar_ptr))
            return rv
        }
        /// Sets a menu model from which `bar` should take
        /// its contents.
        nonmutating set {
            gtk_popover_menu_bar_set_menu_model(popover_menu_bar_ptr, UnsafeMutablePointer<GMenuModel>(newValue?.menu_model_ptr))
        }
    }


}



// MARK: - PrintContext Class

/// The `PrintContextProtocol` protocol exposes the methods and properties of an underlying `GtkPrintContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PrintContext`.
/// Alternatively, use `PrintContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkPrintContext encapsulates context information that is required when
/// drawing pages for printing, such as the cairo context and important
/// parameters like page size and resolution. It also lets you easily
/// create `PangoLayout` and `PangoContext` objects that match the font metrics
/// of the cairo surface.
/// 
/// GtkPrintContext objects gets passed to the `GtkPrintOperation::begin`-print,
/// `GtkPrintOperation::end`-print, `GtkPrintOperation::request`-page-setup and
/// `GtkPrintOperation::draw`-page signals on the `GtkPrintOperation`.
/// 
/// ## Using GtkPrintContext in a `GtkPrintOperation::draw`-page callback
/// 
/// (C Language Example):
/// ```C
/// static void
/// draw_page (GtkPrintOperation *operation,
/// 	   GtkPrintContext   *context,
/// 	   int                page_nr)
/// {
///   cairo_t *cr;
///   PangoLayout *layout;
///   PangoFontDescription *desc;
/// 
///   cr = gtk_print_context_get_cairo_context (context);
/// 
///   // Draw a red rectangle, as wide as the paper (inside the margins)
///   cairo_set_source_rgb (cr, 1.0, 0, 0);
///   cairo_rectangle (cr, 0, 0, gtk_print_context_get_width (context), 50);
/// 
///   cairo_fill (cr);
/// 
///   // Draw some lines
///   cairo_move_to (cr, 20, 10);
///   cairo_line_to (cr, 40, 20);
///   cairo_arc (cr, 60, 60, 20, 0, M_PI);
///   cairo_line_to (cr, 80, 20);
/// 
///   cairo_set_source_rgb (cr, 0, 0, 0);
///   cairo_set_line_width (cr, 5);
///   cairo_set_line_cap (cr, CAIRO_LINE_CAP_ROUND);
///   cairo_set_line_join (cr, CAIRO_LINE_JOIN_ROUND);
/// 
///   cairo_stroke (cr);
/// 
///   // Draw some text
///   layout = gtk_print_context_create_pango_layout (context);
///   pango_layout_set_text (layout, "Hello World! Printing is easy", -1);
///   desc = pango_font_description_from_string ("sans 28");
///   pango_layout_set_font_description (layout, desc);
///   pango_font_description_free (desc);
/// 
///   cairo_move_to (cr, 30, 20);
///   pango_cairo_layout_path (cr, layout);
/// 
///   // Font Outline
///   cairo_set_source_rgb (cr, 0.93, 1.0, 0.47);
///   cairo_set_line_width (cr, 0.5);
///   cairo_stroke_preserve (cr);
/// 
///   // Font Fill
///   cairo_set_source_rgb (cr, 0, 0.0, 1.0);
///   cairo_fill (cr);
/// 
///   g_object_unref (layout);
/// }
/// ```
/// 
public protocol PrintContextProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkPrintContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPrintContext` instance.
    var print_context_ptr: UnsafeMutablePointer<GtkPrintContext>! { get }

}

/// The `PrintContextRef` type acts as a lightweight Swift reference to an underlying `GtkPrintContext` instance.
/// It exposes methods that can operate on this data type through `PrintContextProtocol` conformance.
/// Use `PrintContextRef` only as an `unowned` reference to an existing `GtkPrintContext` instance.
///
/// A GtkPrintContext encapsulates context information that is required when
/// drawing pages for printing, such as the cairo context and important
/// parameters like page size and resolution. It also lets you easily
/// create `PangoLayout` and `PangoContext` objects that match the font metrics
/// of the cairo surface.
/// 
/// GtkPrintContext objects gets passed to the `GtkPrintOperation::begin`-print,
/// `GtkPrintOperation::end`-print, `GtkPrintOperation::request`-page-setup and
/// `GtkPrintOperation::draw`-page signals on the `GtkPrintOperation`.
/// 
/// ## Using GtkPrintContext in a `GtkPrintOperation::draw`-page callback
/// 
/// (C Language Example):
/// ```C
/// static void
/// draw_page (GtkPrintOperation *operation,
/// 	   GtkPrintContext   *context,
/// 	   int                page_nr)
/// {
///   cairo_t *cr;
///   PangoLayout *layout;
///   PangoFontDescription *desc;
/// 
///   cr = gtk_print_context_get_cairo_context (context);
/// 
///   // Draw a red rectangle, as wide as the paper (inside the margins)
///   cairo_set_source_rgb (cr, 1.0, 0, 0);
///   cairo_rectangle (cr, 0, 0, gtk_print_context_get_width (context), 50);
/// 
///   cairo_fill (cr);
/// 
///   // Draw some lines
///   cairo_move_to (cr, 20, 10);
///   cairo_line_to (cr, 40, 20);
///   cairo_arc (cr, 60, 60, 20, 0, M_PI);
///   cairo_line_to (cr, 80, 20);
/// 
///   cairo_set_source_rgb (cr, 0, 0, 0);
///   cairo_set_line_width (cr, 5);
///   cairo_set_line_cap (cr, CAIRO_LINE_CAP_ROUND);
///   cairo_set_line_join (cr, CAIRO_LINE_JOIN_ROUND);
/// 
///   cairo_stroke (cr);
/// 
///   // Draw some text
///   layout = gtk_print_context_create_pango_layout (context);
///   pango_layout_set_text (layout, "Hello World! Printing is easy", -1);
///   desc = pango_font_description_from_string ("sans 28");
///   pango_layout_set_font_description (layout, desc);
///   pango_font_description_free (desc);
/// 
///   cairo_move_to (cr, 30, 20);
///   pango_cairo_layout_path (cr, layout);
/// 
///   // Font Outline
///   cairo_set_source_rgb (cr, 0.93, 1.0, 0.47);
///   cairo_set_line_width (cr, 0.5);
///   cairo_stroke_preserve (cr);
/// 
///   // Font Fill
///   cairo_set_source_rgb (cr, 0, 0.0, 1.0);
///   cairo_fill (cr);
/// 
///   g_object_unref (layout);
/// }
/// ```
/// 
public struct PrintContextRef: PrintContextProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkPrintContext` instance.
    /// For type-safe access, use the generated, typed pointer `print_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PrintContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPrintContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPrintContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPrintContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPrintContext>?) {
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

    /// Reference intialiser for a related type that implements `PrintContextProtocol`
    @inlinable init<T: PrintContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: PrintContextProtocol>(_ other: T) -> PrintContextRef { PrintContextRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PrintContext` type acts as a reference-counted owner of an underlying `GtkPrintContext` instance.
/// It provides the methods that can operate on this data type through `PrintContextProtocol` conformance.
/// Use `PrintContext` as a strong reference or owner of a `GtkPrintContext` instance.
///
/// A GtkPrintContext encapsulates context information that is required when
/// drawing pages for printing, such as the cairo context and important
/// parameters like page size and resolution. It also lets you easily
/// create `PangoLayout` and `PangoContext` objects that match the font metrics
/// of the cairo surface.
/// 
/// GtkPrintContext objects gets passed to the `GtkPrintOperation::begin`-print,
/// `GtkPrintOperation::end`-print, `GtkPrintOperation::request`-page-setup and
/// `GtkPrintOperation::draw`-page signals on the `GtkPrintOperation`.
/// 
/// ## Using GtkPrintContext in a `GtkPrintOperation::draw`-page callback
/// 
/// (C Language Example):
/// ```C
/// static void
/// draw_page (GtkPrintOperation *operation,
/// 	   GtkPrintContext   *context,
/// 	   int                page_nr)
/// {
///   cairo_t *cr;
///   PangoLayout *layout;
///   PangoFontDescription *desc;
/// 
///   cr = gtk_print_context_get_cairo_context (context);
/// 
///   // Draw a red rectangle, as wide as the paper (inside the margins)
///   cairo_set_source_rgb (cr, 1.0, 0, 0);
///   cairo_rectangle (cr, 0, 0, gtk_print_context_get_width (context), 50);
/// 
///   cairo_fill (cr);
/// 
///   // Draw some lines
///   cairo_move_to (cr, 20, 10);
///   cairo_line_to (cr, 40, 20);
///   cairo_arc (cr, 60, 60, 20, 0, M_PI);
///   cairo_line_to (cr, 80, 20);
/// 
///   cairo_set_source_rgb (cr, 0, 0, 0);
///   cairo_set_line_width (cr, 5);
///   cairo_set_line_cap (cr, CAIRO_LINE_CAP_ROUND);
///   cairo_set_line_join (cr, CAIRO_LINE_JOIN_ROUND);
/// 
///   cairo_stroke (cr);
/// 
///   // Draw some text
///   layout = gtk_print_context_create_pango_layout (context);
///   pango_layout_set_text (layout, "Hello World! Printing is easy", -1);
///   desc = pango_font_description_from_string ("sans 28");
///   pango_layout_set_font_description (layout, desc);
///   pango_font_description_free (desc);
/// 
///   cairo_move_to (cr, 30, 20);
///   pango_cairo_layout_path (cr, layout);
/// 
///   // Font Outline
///   cairo_set_source_rgb (cr, 0.93, 1.0, 0.47);
///   cairo_set_line_width (cr, 0.5);
///   cairo_stroke_preserve (cr);
/// 
///   // Font Fill
///   cairo_set_source_rgb (cr, 0, 0.0, 1.0);
///   cairo_fill (cr);
/// 
///   g_object_unref (layout);
/// }
/// ```
/// 
open class PrintContext: GLibObject.Object, PrintContextProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPrintContext>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPrintContext>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPrintContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPrintContext>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkPrintContext`.
    /// i.e., ownership is transferred to the `PrintContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPrintContext>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PrintContextProtocol`
    /// Will retain `GtkPrintContext`.
    /// - Parameter other: an instance of a related type that implements `PrintContextProtocol`
    @inlinable public init<T: PrintContextProtocol>(printContext other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no PrintContext properties

// MARK: PrintContext has no signals// MARK: PrintContext Class: PrintContextProtocol extension (methods and fields)
public extension PrintContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPrintContext` instance.
    @inlinable var print_context_ptr: UnsafeMutablePointer<GtkPrintContext>! { return ptr?.assumingMemoryBound(to: GtkPrintContext.self) }

    /// Creates a new `PangoContext` that can be used with the
    /// `GtkPrintContext`.
    @inlinable func createPangoContext() -> Pango.ContextRef! {
        let rv = Pango.ContextRef(gtk_print_context_create_pango_context(print_context_ptr))
        return rv
    }

    /// Creates a new `PangoLayout` that is suitable for use
    /// with the `GtkPrintContext`.
    @inlinable func createPangoLayout() -> Pango.LayoutRef! {
        let rv = Pango.LayoutRef(gtk_print_context_create_pango_layout(print_context_ptr))
        return rv
    }

    /// Obtains the cairo context that is associated with the
    /// `GtkPrintContext`.
    @inlinable func getCairoContext() -> Cairo.ContextRef! {
        let rv = Cairo.ContextRef(gtk_print_context_get_cairo_context(print_context_ptr))
        return rv
    }

    /// Obtains the horizontal resolution of the `GtkPrintContext`,
    /// in dots per inch.
    @inlinable func getDpiX() -> CDouble {
        let rv = gtk_print_context_get_dpi_x(print_context_ptr)
        return rv
    }

    /// Obtains the vertical resolution of the `GtkPrintContext`,
    /// in dots per inch.
    @inlinable func getDpiY() -> CDouble {
        let rv = gtk_print_context_get_dpi_y(print_context_ptr)
        return rv
    }

    /// Obtains the hardware printer margins of the `GtkPrintContext`, in units.
    @inlinable func getHardMargins(top: UnsafeMutablePointer<CDouble>!, bottom: UnsafeMutablePointer<CDouble>!, `left`: UnsafeMutablePointer<CDouble>!, `right`: UnsafeMutablePointer<CDouble>!) -> Bool {
        let rv = ((gtk_print_context_get_hard_margins(print_context_ptr, top, bottom, `left`, `right`)) != 0)
        return rv
    }

    /// Obtains the height of the `GtkPrintContext`, in pixels.
    @inlinable func getHeight() -> CDouble {
        let rv = gtk_print_context_get_height(print_context_ptr)
        return rv
    }

    /// Obtains the `GtkPageSetup` that determines the page
    /// dimensions of the `GtkPrintContext`.
    @inlinable func getPageSetup() -> PageSetupRef! {
        let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_print_context_get_page_setup(print_context_ptr)))
        return rv
    }

    /// Returns a `PangoFontMap` that is suitable for use
    /// with the `GtkPrintContext`.
    @inlinable func getPangoFontmap() -> Pango.FontMapRef! {
        let rv = Pango.FontMapRef(gtk_print_context_get_pango_fontmap(print_context_ptr))
        return rv
    }

    /// Obtains the width of the `GtkPrintContext`, in pixels.
    @inlinable func getWidth() -> CDouble {
        let rv = gtk_print_context_get_width(print_context_ptr)
        return rv
    }

    /// Sets a new cairo context on a print context.
    /// 
    /// This function is intended to be used when implementing
    /// an internal print preview, it is not needed for printing,
    /// since GTK itself creates a suitable cairo context in that
    /// case.
    @inlinable func setCairoContext<ContextT: Cairo.ContextProtocol>(cr: ContextT, dpiX: CDouble, dpiY: CDouble) {
        gtk_print_context_set_cairo_context(print_context_ptr, cr._ptr, dpiX, dpiY)
    
    }
    /// Obtains the cairo context that is associated with the
    /// `GtkPrintContext`.
    @inlinable var cairoContext: Cairo.ContextRef! {
        /// Obtains the cairo context that is associated with the
        /// `GtkPrintContext`.
        get {
            let rv = Cairo.ContextRef(gtk_print_context_get_cairo_context(print_context_ptr))
            return rv
        }
    }

    /// Obtains the horizontal resolution of the `GtkPrintContext`,
    /// in dots per inch.
    @inlinable var dpiX: CDouble {
        /// Obtains the horizontal resolution of the `GtkPrintContext`,
        /// in dots per inch.
        get {
            let rv = gtk_print_context_get_dpi_x(print_context_ptr)
            return rv
        }
    }

    /// Obtains the vertical resolution of the `GtkPrintContext`,
    /// in dots per inch.
    @inlinable var dpiY: CDouble {
        /// Obtains the vertical resolution of the `GtkPrintContext`,
        /// in dots per inch.
        get {
            let rv = gtk_print_context_get_dpi_y(print_context_ptr)
            return rv
        }
    }

    /// Obtains the height of the `GtkPrintContext`, in pixels.
    @inlinable var height: CDouble {
        /// Obtains the height of the `GtkPrintContext`, in pixels.
        get {
            let rv = gtk_print_context_get_height(print_context_ptr)
            return rv
        }
    }

    /// Obtains the `GtkPageSetup` that determines the page
    /// dimensions of the `GtkPrintContext`.
    @inlinable var pageSetup: PageSetupRef! {
        /// Obtains the `GtkPageSetup` that determines the page
        /// dimensions of the `GtkPrintContext`.
        get {
            let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_print_context_get_page_setup(print_context_ptr)))
            return rv
        }
    }

    /// Returns a `PangoFontMap` that is suitable for use
    /// with the `GtkPrintContext`.
    @inlinable var pangoFontmap: Pango.FontMapRef! {
        /// Returns a `PangoFontMap` that is suitable for use
        /// with the `GtkPrintContext`.
        get {
            let rv = Pango.FontMapRef(gtk_print_context_get_pango_fontmap(print_context_ptr))
            return rv
        }
    }

    /// Obtains the width of the `GtkPrintContext`, in pixels.
    @inlinable var width: CDouble {
        /// Obtains the width of the `GtkPrintContext`, in pixels.
        get {
            let rv = gtk_print_context_get_width(print_context_ptr)
            return rv
        }
    }


}



// MARK: - PrintOperation Class

/// The `PrintOperationProtocol` protocol exposes the methods and properties of an underlying `GtkPrintOperation` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PrintOperation`.
/// Alternatively, use `PrintOperationRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkPrintOperation is the high-level, portable printing API.
/// It looks a bit different than other GTK dialogs such as the
/// `GtkFileChooser`, since some platforms don’t expose enough
/// infrastructure to implement a good print dialog. On such
/// platforms, GtkPrintOperation uses the native print dialog.
/// On platforms which do not provide a native print dialog, GTK
/// uses its own, see `GtkPrintUnixDialog`.
/// 
/// The typical way to use the high-level printing API is to create
/// a GtkPrintOperation object with `gtk_print_operation_new()` when
/// the user selects to print. Then you set some properties on it,
/// e.g. the page size, any `GtkPrintSettings` from previous print
/// operations, the number of pages, the current page, etc.
/// 
/// Then you start the print operation by calling `gtk_print_operation_run()`.
/// It will then show a dialog, let the user select a printer and
/// options. When the user finished the dialog various signals will
/// be emitted on the `GtkPrintOperation`, the main one being
/// `GtkPrintOperation::draw`-page, which you are supposed to catch
/// and render the page on the provided `GtkPrintContext` using Cairo.
/// 
/// # The high-level printing API
/// 
/// (C Language Example):
/// ```C
/// static GtkPrintSettings *settings = NULL;
/// 
/// static void
/// do_print (void)
/// {
///   GtkPrintOperation *print;
///   GtkPrintOperationResult res;
/// 
///   print = gtk_print_operation_new ();
/// 
///   if (settings != NULL)
///     gtk_print_operation_set_print_settings (print, settings);
/// 
///   g_signal_connect (print, "begin_print", G_CALLBACK (begin_print), NULL);
///   g_signal_connect (print, "draw_page", G_CALLBACK (draw_page), NULL);
/// 
///   res = gtk_print_operation_run (print, GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG,
///                                  GTK_WINDOW (main_window), NULL);
/// 
///   if (res == GTK_PRINT_OPERATION_RESULT_APPLY)
///     {
///       if (settings != NULL)
///         g_object_unref (settings);
///       settings = g_object_ref (gtk_print_operation_get_print_settings (print));
///     }
/// 
///   g_object_unref (print);
/// }
/// ```
/// 
/// By default GtkPrintOperation uses an external application to do
/// print preview. To implement a custom print preview, an application
/// must connect to the preview signal. The functions
/// `gtk_print_operation_preview_render_page()`,
/// `gtk_print_operation_preview_end_preview()` and
/// `gtk_print_operation_preview_is_selected()`
/// are useful when implementing a print preview.
public protocol PrintOperationProtocol: GLibObject.ObjectProtocol, PrintOperationPreviewProtocol {
        /// Untyped pointer to the underlying `GtkPrintOperation` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPrintOperation` instance.
    var print_operation_ptr: UnsafeMutablePointer<GtkPrintOperation>! { get }

}

/// The `PrintOperationRef` type acts as a lightweight Swift reference to an underlying `GtkPrintOperation` instance.
/// It exposes methods that can operate on this data type through `PrintOperationProtocol` conformance.
/// Use `PrintOperationRef` only as an `unowned` reference to an existing `GtkPrintOperation` instance.
///
/// GtkPrintOperation is the high-level, portable printing API.
/// It looks a bit different than other GTK dialogs such as the
/// `GtkFileChooser`, since some platforms don’t expose enough
/// infrastructure to implement a good print dialog. On such
/// platforms, GtkPrintOperation uses the native print dialog.
/// On platforms which do not provide a native print dialog, GTK
/// uses its own, see `GtkPrintUnixDialog`.
/// 
/// The typical way to use the high-level printing API is to create
/// a GtkPrintOperation object with `gtk_print_operation_new()` when
/// the user selects to print. Then you set some properties on it,
/// e.g. the page size, any `GtkPrintSettings` from previous print
/// operations, the number of pages, the current page, etc.
/// 
/// Then you start the print operation by calling `gtk_print_operation_run()`.
/// It will then show a dialog, let the user select a printer and
/// options. When the user finished the dialog various signals will
/// be emitted on the `GtkPrintOperation`, the main one being
/// `GtkPrintOperation::draw`-page, which you are supposed to catch
/// and render the page on the provided `GtkPrintContext` using Cairo.
/// 
/// # The high-level printing API
/// 
/// (C Language Example):
/// ```C
/// static GtkPrintSettings *settings = NULL;
/// 
/// static void
/// do_print (void)
/// {
///   GtkPrintOperation *print;
///   GtkPrintOperationResult res;
/// 
///   print = gtk_print_operation_new ();
/// 
///   if (settings != NULL)
///     gtk_print_operation_set_print_settings (print, settings);
/// 
///   g_signal_connect (print, "begin_print", G_CALLBACK (begin_print), NULL);
///   g_signal_connect (print, "draw_page", G_CALLBACK (draw_page), NULL);
/// 
///   res = gtk_print_operation_run (print, GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG,
///                                  GTK_WINDOW (main_window), NULL);
/// 
///   if (res == GTK_PRINT_OPERATION_RESULT_APPLY)
///     {
///       if (settings != NULL)
///         g_object_unref (settings);
///       settings = g_object_ref (gtk_print_operation_get_print_settings (print));
///     }
/// 
///   g_object_unref (print);
/// }
/// ```
/// 
/// By default GtkPrintOperation uses an external application to do
/// print preview. To implement a custom print preview, an application
/// must connect to the preview signal. The functions
/// `gtk_print_operation_preview_render_page()`,
/// `gtk_print_operation_preview_end_preview()` and
/// `gtk_print_operation_preview_is_selected()`
/// are useful when implementing a print preview.
public struct PrintOperationRef: PrintOperationProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkPrintOperation` instance.
    /// For type-safe access, use the generated, typed pointer `print_operation_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PrintOperationRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPrintOperation>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPrintOperation>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPrintOperation>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPrintOperation>?) {
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

    /// Reference intialiser for a related type that implements `PrintOperationProtocol`
    @inlinable init<T: PrintOperationProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: PrintOperationProtocol>(_ other: T) -> PrintOperationRef { PrintOperationRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkPrintOperation`.
    @inlinable init() {
        let rv = gtk_print_operation_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `PrintOperation` type acts as a reference-counted owner of an underlying `GtkPrintOperation` instance.
/// It provides the methods that can operate on this data type through `PrintOperationProtocol` conformance.
/// Use `PrintOperation` as a strong reference or owner of a `GtkPrintOperation` instance.
///
/// GtkPrintOperation is the high-level, portable printing API.
/// It looks a bit different than other GTK dialogs such as the
/// `GtkFileChooser`, since some platforms don’t expose enough
/// infrastructure to implement a good print dialog. On such
/// platforms, GtkPrintOperation uses the native print dialog.
/// On platforms which do not provide a native print dialog, GTK
/// uses its own, see `GtkPrintUnixDialog`.
/// 
/// The typical way to use the high-level printing API is to create
/// a GtkPrintOperation object with `gtk_print_operation_new()` when
/// the user selects to print. Then you set some properties on it,
/// e.g. the page size, any `GtkPrintSettings` from previous print
/// operations, the number of pages, the current page, etc.
/// 
/// Then you start the print operation by calling `gtk_print_operation_run()`.
/// It will then show a dialog, let the user select a printer and
/// options. When the user finished the dialog various signals will
/// be emitted on the `GtkPrintOperation`, the main one being
/// `GtkPrintOperation::draw`-page, which you are supposed to catch
/// and render the page on the provided `GtkPrintContext` using Cairo.
/// 
/// # The high-level printing API
/// 
/// (C Language Example):
/// ```C
/// static GtkPrintSettings *settings = NULL;
/// 
/// static void
/// do_print (void)
/// {
///   GtkPrintOperation *print;
///   GtkPrintOperationResult res;
/// 
///   print = gtk_print_operation_new ();
/// 
///   if (settings != NULL)
///     gtk_print_operation_set_print_settings (print, settings);
/// 
///   g_signal_connect (print, "begin_print", G_CALLBACK (begin_print), NULL);
///   g_signal_connect (print, "draw_page", G_CALLBACK (draw_page), NULL);
/// 
///   res = gtk_print_operation_run (print, GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG,
///                                  GTK_WINDOW (main_window), NULL);
/// 
///   if (res == GTK_PRINT_OPERATION_RESULT_APPLY)
///     {
///       if (settings != NULL)
///         g_object_unref (settings);
///       settings = g_object_ref (gtk_print_operation_get_print_settings (print));
///     }
/// 
///   g_object_unref (print);
/// }
/// ```
/// 
/// By default GtkPrintOperation uses an external application to do
/// print preview. To implement a custom print preview, an application
/// must connect to the preview signal. The functions
/// `gtk_print_operation_preview_render_page()`,
/// `gtk_print_operation_preview_end_preview()` and
/// `gtk_print_operation_preview_is_selected()`
/// are useful when implementing a print preview.
open class PrintOperation: GLibObject.Object, PrintOperationProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPrintOperation>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPrintOperation>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintOperation` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPrintOperation>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPrintOperation>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkPrintOperation`.
    /// i.e., ownership is transferred to the `PrintOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPrintOperation>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PrintOperationProtocol`
    /// Will retain `GtkPrintOperation`.
    /// - Parameter other: an instance of a related type that implements `PrintOperationProtocol`
    @inlinable public init<T: PrintOperationProtocol>(printOperation other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkPrintOperation`.
    @inlinable public init() {
        let rv = gtk_print_operation_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum PrintOperationPropertyName: String, PropertyNameProtocol {
    /// Determines whether the print operation may run asynchronously or not.
    /// 
    /// Some systems don't support asynchronous printing, but those that do
    /// will return `GTK_PRINT_OPERATION_RESULT_IN_PROGRESS` as the status, and
    /// emit the `GtkPrintOperation::done` signal when the operation is actually
    /// done.
    /// 
    /// The Windows port does not support asynchronous operation at all (this
    /// is unlikely to change). On other platforms, all actions except for
    /// `GTK_PRINT_OPERATION_ACTION_EXPORT` support asynchronous operation.
    case allowAsync = "allow-async"
    /// The current page in the document.
    /// 
    /// If this is set before `gtk_print_operation_run()`,
    /// the user will be able to select to print only the current page.
    /// 
    /// Note that this only makes sense for pre-paginated documents.
    case currentPage = "current-page"
    /// Used as the label of the tab containing custom widgets.
    /// Note that this property may be ignored on some platforms.
    /// 
    /// If this is `nil`, GTK uses a default label.
    case customTabLabel = "custom-tab-label"
    /// The `GtkPageSetup` used by default.
    /// 
    /// This page setup will be used by `gtk_print_operation_run()`,
    /// but it can be overridden on a per-page basis by connecting
    /// to the `GtkPrintOperation::request`-page-setup signal.
    case defaultPageSetup = "default-page-setup"
    /// If `true`, page size combo box and orientation combo box are embedded into page setup page.
    case embedPageSetup = "embed-page-setup"
    /// The name of a file to generate instead of showing the print dialog.
    /// Currently, PDF is the only supported format.
    /// 
    /// The intended use of this property is for implementing
    /// “Export to PDF” actions.
    /// 
    /// “Print to PDF” support is independent of this and is done
    /// by letting the user pick the “Print to PDF” item from the
    /// list of printers in the print dialog.
    case exportFilename = "export-filename"
    /// Determines whether there is a selection in your application.
    /// This can allow your application to print the selection.
    /// This is typically used to make a "Selection" button sensitive.
    case hasSelection = "has-selection"
    /// A string used to identify the job (e.g. in monitoring
    /// applications like eggcups).
    /// 
    /// If you don't set a job name, GTK picks a default one
    /// by numbering successive print jobs.
    case jobName = "job-name"
    /// The number of pages in the document.
    /// 
    /// This must be set to a positive number
    /// before the rendering starts. It may be set in a
    /// `GtkPrintOperation::begin`-print signal handler.
    /// 
    /// Note that the page numbers passed to the
    /// `GtkPrintOperation::request`-page-setup and
    /// `GtkPrintOperation::draw`-page signals are 0-based, i.e. if
    /// the user chooses to print all pages, the last `draw`-page signal
    /// will be for page `n_pages` - 1.
    case nPages = "n-pages"
    /// The number of pages that will be printed.
    /// 
    /// Note that this value is set during print preparation phase
    /// (`GTK_PRINT_STATUS_PREPARING`), so this value should never be
    /// get before the data generation phase (`GTK_PRINT_STATUS_GENERATING_DATA`).
    /// You can connect to the `GtkPrintOperation::status`-changed signal
    /// and call `gtk_print_operation_get_n_pages_to_print()` when
    /// print status is `GTK_PRINT_STATUS_GENERATING_DATA`.
    /// This is typically used to track the progress of print operation.
    case nPagesToPrint = "n-pages-to-print"
    /// The `GtkPrintSettings` used for initializing the dialog.
    /// 
    /// Setting this property is typically used to re-establish
    /// print settings from a previous print operation, see
    /// `gtk_print_operation_run()`.
    case printSettings = "print-settings"
    /// Determines whether to show a progress dialog during the
    /// print operation.
    case showProgress = "show-progress"
    /// The status of the print operation.
    case status = "status"
    /// A string representation of the status of the print operation.
    /// The string is translated and suitable for displaying the print
    /// status e.g. in a `GtkStatusbar`.
    /// 
    /// See the `GtkPrintOperation:status` property for a status value that
    /// is suitable for programmatic use.
    case statusString = "status-string"
    /// If `true`, the print operation will support print of selection.
    /// This allows the print dialog to show a "Selection" button.
    case supportSelection = "support-selection"
    /// If `true`, the print operation will try to continue report on
    /// the status of the print job in the printer queues and printer.
    /// This can allow your application to show things like “out of paper”
    /// issues, and when the print job actually reaches the printer.
    /// However, this is often implemented using polling, and should
    /// not be enabled unless needed.
    case trackPrintStatus = "track-print-status"
    /// The transformation for the cairo context obtained from
    /// `GtkPrintContext` is set up in such a way that distances
    /// are measured in units of `unit`.
    case unit = "unit"
    /// If `true`, the transformation for the cairo context obtained
    /// from `GtkPrintContext` puts the origin at the top left corner
    /// of the page (which may not be the top left corner of the sheet,
    /// depending on page orientation and the number of pages per sheet).
    /// Otherwise, the origin is at the top left corner of the imageable
    /// area (i.e. inside the margins).
    case useFullPage = "use-full-page"
}

public extension PrintOperationProtocol {
    /// Bind a `PrintOperationPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PrintOperationPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a PrintOperation property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: PrintOperationPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a PrintOperation property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: PrintOperationPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of PrintOperation
public extension PrintOperationProtocol {
    /// Emitted when displaying the print dialog. If you return a
    /// widget in a handler for this signal it will be added to a custom
    /// tab in the print dialog. You typically return a container widget
    /// with multiple widgets in it.
    /// 
    /// The print dialog owns the returned widget, and its lifetime is not
    /// controlled by the application. However, the widget is guaranteed
    /// to stay around until the `GtkPrintOperation::custom`-widget-apply
    /// signal is emitted on the operation. Then you can read out any
    /// information you need from the widgets.
    /// - Note: Representation of signal named `create-custom-widget`
    /// - Parameter flags: Flags
    /// - Parameter handler: A custom widget that gets embedded in          the print dialog, or `nil`
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Warning: Wrapper of this signal could not be generated because it contains unimplemented features: { (9)  Record return is not yet supported }
    /// - Note: Use this string for `signalConnectData` method
    static var onCreateCustomWidget: String { "create-custom-widget" }
    /// Emitted after the user has finished changing print settings
    /// in the dialog, before the actual rendering starts.
    /// 
    /// A typical use for `begin`-print is to use the parameters from the
    /// `GtkPrintContext` and paginate the document accordingly, and then
    /// set the number of pages with `gtk_print_operation_set_n_pages()`.
    /// - Note: Representation of signal named `begin-print`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter context: the `GtkPrintContext` for the current operation
    @discardableResult
    func onBeginPrint(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ context: PrintContextRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, PrintContextRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), PrintContextRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "begin-print", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted right before `GtkPrintOperation::begin`-print if you added
    /// a custom widget in the `GtkPrintOperation::create`-custom-widget handler.
    /// When you get this signal you should read the information from the
    /// custom widgets, as the widgets are not guaraneed to be around at a
    /// later time.
    /// - Note: Representation of signal named `custom-widget-apply`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter widget: the custom widget added in create-custom-widget
    @discardableResult
    func onCustomWidgetApply(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ widget: WidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, WidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), WidgetRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "custom-widget-apply", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted when the print operation run has finished doing
    /// everything required for printing.
    /// 
    /// `result` gives you information about what happened during the run.
    /// If `result` is `GTK_PRINT_OPERATION_RESULT_ERROR` then you can call
    /// `gtk_print_operation_get_error()` for more information.
    /// 
    /// If you enabled print status tracking then
    /// `gtk_print_operation_is_finished()` may still return `false`
    /// after `GtkPrintOperation::done` was emitted.
    /// - Note: Representation of signal named `done`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter result: the result of the print operation
    @discardableResult
    func onDone(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ result: PrintOperationResult) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, PrintOperationResult, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), PrintOperationResult(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "done", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted for every page that is printed. The signal handler
    /// must render the `page_nr`'s page onto the cairo context obtained
    /// from `context` using `gtk_print_context_get_cairo_context()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// draw_page (GtkPrintOperation *operation,
    ///            GtkPrintContext   *context,
    ///            int                page_nr,
    ///            gpointer           user_data)
    /// {
    ///   cairo_t *cr;
    ///   PangoLayout *layout;
    ///   double width, text_height;
    ///   int layout_height;
    ///   PangoFontDescription *desc;
    ///   
    ///   cr = gtk_print_context_get_cairo_context (context);
    ///   width = gtk_print_context_get_width (context);
    ///   
    ///   cairo_rectangle (cr, 0, 0, width, HEADER_HEIGHT);
    ///   
    ///   cairo_set_source_rgb (cr, 0.8, 0.8, 0.8);
    ///   cairo_fill (cr);
    ///   
    ///   layout = gtk_print_context_create_pango_layout (context);
    ///   
    ///   desc = pango_font_description_from_string ("sans 14");
    ///   pango_layout_set_font_description (layout, desc);
    ///   pango_font_description_free (desc);
    ///   
    ///   pango_layout_set_text (layout, "some text", -1);
    ///   pango_layout_set_width (layout, width * PANGO_SCALE);
    ///   pango_layout_set_alignment (layout, PANGO_ALIGN_CENTER);
    ///      		      
    ///   pango_layout_get_size (layout, NULL, &layout_height);
    ///   text_height = (double)layout_height / PANGO_SCALE;
    ///   
    ///   cairo_move_to (cr, width / 2,  (HEADER_HEIGHT - text_height) / 2);
    ///   pango_cairo_show_layout (cr, layout);
    ///   
    ///   g_object_unref (layout);
    /// }
    /// ```
    /// 
    /// Use `gtk_print_operation_set_use_full_page()` and
    /// `gtk_print_operation_set_unit()` before starting the print operation
    /// to set up the transformation of the cairo context according to your
    /// needs.
    /// - Note: Representation of signal named `draw-page`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter context: the `GtkPrintContext` for the current operation
    /// - Parameter pageNr: the number of the currently printed page (0-based)
    @discardableResult
    func onDrawPage(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ context: PrintContextRef, _ pageNr: Int) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<PrintOperationRef, PrintContextRef, Int, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), PrintContextRef(raw: arg1), Int(arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "draw-page", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted after all pages have been rendered.
    /// A handler for this signal can clean up any resources that have
    /// been allocated in the `GtkPrintOperation::begin`-print handler.
    /// - Note: Representation of signal named `end-print`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter context: the `GtkPrintContext` for the current operation
    @discardableResult
    func onEndPrint(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ context: PrintContextRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, PrintContextRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), PrintContextRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "end-print", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted after the `GtkPrintOperation::begin`-print signal, but before
    /// the actual rendering starts. It keeps getting emitted until a connected
    /// signal handler returns `true`.
    /// 
    /// The `paginate` signal is intended to be used for paginating a document
    /// in small chunks, to avoid blocking the user interface for a long
    /// time. The signal handler should update the number of pages using
    /// `gtk_print_operation_set_n_pages()`, and return `true` if the document
    /// has been completely paginated.
    /// 
    /// If you don't need to do pagination in chunks, you can simply do
    /// it all in the `begin`-print handler, and set the number of pages
    /// from there.
    /// - Note: Representation of signal named `paginate`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` if pagination is complete
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter context: the `GtkPrintContext` for the current operation
    @discardableResult
    func onPaginate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ context: PrintContextRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, PrintContextRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(PrintOperationRef(raw: unownedSelf), PrintContextRef(raw: arg1))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "paginate", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Gets emitted when a preview is requested from the native dialog.
    /// 
    /// The default handler for this signal uses an external viewer
    /// application to preview.
    /// 
    /// To implement a custom print preview, an application must return
    /// `true` from its handler for this signal. In order to use the
    /// provided `context` for the preview implementation, it must be
    /// given a suitable cairo context with `gtk_print_context_set_cairo_context()`.
    /// 
    /// The custom preview implementation can use
    /// `gtk_print_operation_preview_is_selected()` and
    /// `gtk_print_operation_preview_render_page()` to find pages which
    /// are selected for print and render them. The preview must be
    /// finished by calling `gtk_print_operation_preview_end_preview()`
    /// (typically in response to the user clicking a close button).
    /// - Note: Representation of signal named `preview`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` if the listener wants to take over control of the preview
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter preview: the `GtkPrintOperationPreview` for the current operation
    /// - Parameter context: the `GtkPrintContext` that will be used
    /// - Parameter parent: the `GtkWindow` to use as window parent, or `nil`
    @discardableResult
    func onPreview(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ preview: PrintOperationPreviewRef, _ context: PrintContextRef, _ parent: WindowRef?) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<PrintOperationRef, PrintOperationPreviewRef, PrintContextRef, WindowRef?, Bool>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer, gpointer?, gpointer) -> gboolean = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(PrintOperationRef(raw: unownedSelf), PrintOperationPreviewRef(raw: arg1), PrintContextRef(raw: arg2), arg3.flatMap(WindowRef.init(raw:)))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "preview", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted once for every page that is printed, to give
    /// the application a chance to modify the page setup. Any changes
    /// done to `setup` will be in force only for printing this page.
    /// - Note: Representation of signal named `request-page-setup`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter context: the `GtkPrintContext` for the current operation
    /// - Parameter pageNr: the number of the currently printed page (0-based)
    /// - Parameter setup: the `GtkPageSetup`
    @discardableResult
    func onRequestPageSetup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ context: PrintContextRef, _ pageNr: Int, _ setup: PageSetupRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<PrintOperationRef, PrintContextRef, Int, PageSetupRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gint, gpointer, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), PrintContextRef(raw: arg1), Int(arg2), PageSetupRef(raw: arg3))
            return output
        }
        return signalConnectData(
            detailedSignal: "request-page-setup", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted at between the various phases of the print operation.
    /// See `GtkPrintStatus` for the phases that are being discriminated.
    /// Use `gtk_print_operation_get_status()` to find out the current
    /// status.
    /// - Note: Representation of signal named `status-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onStatusChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<PrintOperationRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "status-changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted after change of selected printer. The actual page setup and
    /// print settings are passed to the custom widget, which can actualize
    /// itself according to this change.
    /// - Note: Representation of signal named `update-custom-widget`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter widget: the custom widget added in create-custom-widget
    /// - Parameter setup: actual page setup
    /// - Parameter settings: actual print settings
    @discardableResult
    func onUpdateCustomWidget(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ widget: WidgetRef, _ setup: PageSetupRef, _ settings: PrintSettingsRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<PrintOperationRef, WidgetRef, PageSetupRef, PrintSettingsRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), WidgetRef(raw: arg1), PageSetupRef(raw: arg2), PrintSettingsRef(raw: arg3))
            return output
        }
        return signalConnectData(
            detailedSignal: "update-custom-widget", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::allow-async`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAllowAsync(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::allow-async", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::current-page`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyCurrentPage(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::current-page", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::custom-tab-label`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyCustomTabLabel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::custom-tab-label", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::default-page-setup`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyDefaultPageSetup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::default-page-setup", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::embed-page-setup`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyEmbedPageSetup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::embed-page-setup", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::export-filename`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyExportFilename(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::export-filename", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::has-selection`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHasSelection(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::has-selection", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::job-name`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyJobName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::job-name", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::n-pages`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyNPages(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::n-pages", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::n-pages-to-print`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyNPagesToPrint(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::n-pages-to-print", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::print-settings`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrintSettings(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::print-settings", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::show-progress`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowProgress(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-progress", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::status`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyStatus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::status", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::status-string`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyStatusString(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::status-string", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::support-selection`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySupportSelection(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::support-selection", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::track-print-status`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTrackPrintStatus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::track-print-status", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::unit`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyUnit(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::unit", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::use-full-page`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyUseFullPage(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::use-full-page", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: PrintOperation Class: PrintOperationProtocol extension (methods and fields)
public extension PrintOperationProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPrintOperation` instance.
    @inlinable var print_operation_ptr: UnsafeMutablePointer<GtkPrintOperation>! { return ptr?.assumingMemoryBound(to: GtkPrintOperation.self) }

    /// Cancels a running print operation. This function may
    /// be called from a `GtkPrintOperation::begin`-print,
    /// `GtkPrintOperation::paginate` or `GtkPrintOperation::draw`-page
    /// signal handler to stop the currently running print
    /// operation.
    @inlinable func cancel() {
        gtk_print_operation_cancel(print_operation_ptr)
    
    }

    /// Signalize that drawing of particular page is complete.
    /// 
    /// It is called after completion of page drawing (e.g. drawing in another
    /// thread).
    /// If `gtk_print_operation_set_defer_drawing()` was called before, then this function
    /// has to be called by application. In another case it is called by the library
    /// itself.
    @inlinable func drawPageFinish() {
        gtk_print_operation_draw_page_finish(print_operation_ptr)
    
    }

    /// Returns the default page setup, see
    /// `gtk_print_operation_set_default_page_setup()`.
    @inlinable func getDefaultPageSetup() -> PageSetupRef! {
        let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_print_operation_get_default_page_setup(print_operation_ptr)))
        return rv
    }

    /// Gets the value of `GtkPrintOperation:embed`-page-setup property.
    @inlinable func getEmbedPageSetup() -> Bool {
        let rv = ((gtk_print_operation_get_embed_page_setup(print_operation_ptr)) != 0)
        return rv
    }

    /// Call this when the result of a print operation is
    /// `GTK_PRINT_OPERATION_RESULT_ERROR`, either as returned by
    /// `gtk_print_operation_run()`, or in the `GtkPrintOperation::done` signal
    /// handler. The returned `GError` will contain more details on what went wrong.
    @inlinable func getError() throws {
        var error: UnsafeMutablePointer<GError>?
        gtk_print_operation_get_error(print_operation_ptr, &error)
        if let error = error { throw GLibError(error) }
    
    }

    /// Gets the value of `GtkPrintOperation:has`-selection property.
    @inlinable func getHasSelection() -> Bool {
        let rv = ((gtk_print_operation_get_has_selection(print_operation_ptr)) != 0)
        return rv
    }

    /// Returns the number of pages that will be printed.
    /// 
    /// Note that this value is set during print preparation phase
    /// (`GTK_PRINT_STATUS_PREPARING`), so this function should never be
    /// called before the data generation phase (`GTK_PRINT_STATUS_GENERATING_DATA`).
    /// You can connect to the `GtkPrintOperation::status`-changed signal
    /// and call `gtk_print_operation_get_n_pages_to_print()` when
    /// print status is `GTK_PRINT_STATUS_GENERATING_DATA`.
    /// This is typically used to track the progress of print operation.
    @inlinable func getNPagesToPrint() -> Int {
        let rv = Int(gtk_print_operation_get_n_pages_to_print(print_operation_ptr))
        return rv
    }

    /// Returns the current print settings.
    /// 
    /// Note that the return value is `nil` until either
    /// `gtk_print_operation_set_print_settings()` or
    /// `gtk_print_operation_run()` have been called.
    @inlinable func getPrintSettings() -> PrintSettingsRef! {
        let rv = PrintSettingsRef(gconstpointer: gconstpointer(gtk_print_operation_get_print_settings(print_operation_ptr)))
        return rv
    }

    /// Returns the status of the print operation.
    /// Also see `gtk_print_operation_get_status_string()`.
    @inlinable func getStatus() -> GtkPrintStatus {
        let rv = gtk_print_operation_get_status(print_operation_ptr)
        return rv
    }

    /// Returns a string representation of the status of the
    /// print operation. The string is translated and suitable
    /// for displaying the print status e.g. in a `GtkStatusbar`.
    /// 
    /// Use `gtk_print_operation_get_status()` to obtain a status
    /// value that is suitable for programmatic use.
    @inlinable func getStatusString() -> String! {
        let rv = gtk_print_operation_get_status_string(print_operation_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the value of `GtkPrintOperation:support`-selection property.
    @inlinable func getSupportSelection() -> Bool {
        let rv = ((gtk_print_operation_get_support_selection(print_operation_ptr)) != 0)
        return rv
    }

    /// Runs the print operation, by first letting the user modify
    /// print settings in the print dialog, and then print the document.
    /// 
    /// Normally that this function does not return until the rendering of all
    /// pages is complete. You can connect to the
    /// `GtkPrintOperation::status`-changed signal on `op` to obtain some
    /// information about the progress of the print operation.
    /// Furthermore, it may use a recursive mainloop to show the print dialog.
    /// 
    /// If you call `gtk_print_operation_set_allow_async()` or set the
    /// `GtkPrintOperation:allow`-async property the operation will run
    /// asynchronously if this is supported on the platform. The
    /// `GtkPrintOperation::done` signal will be emitted with the result of the
    /// operation when the it is done (i.e. when the dialog is canceled, or when
    /// the print succeeds or fails).
    /// (C Language Example):
    /// ```C
    /// if (settings != NULL)
    ///   gtk_print_operation_set_print_settings (print, settings);
    ///   
    /// if (page_setup != NULL)
    ///   gtk_print_operation_set_default_page_setup (print, page_setup);
    ///   
    /// g_signal_connect (print, "begin-print",
    ///                   G_CALLBACK (begin_print), &data);
    /// g_signal_connect (print, "draw-page",
    ///                   G_CALLBACK (draw_page), &data);
    ///  
    /// res = gtk_print_operation_run (print,
    ///                                GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG,
    ///                                parent,
    ///                                &error);
    ///  
    /// if (res == GTK_PRINT_OPERATION_RESULT_ERROR)
    ///  {
    ///    error_dialog = gtk_message_dialog_new (GTK_WINDOW (parent),
    ///   			                     GTK_DIALOG_DESTROY_WITH_PARENT,
    /// 					     GTK_MESSAGE_ERROR,
    /// 					     GTK_BUTTONS_CLOSE,
    /// 					     "Error printing file:\n%s",
    /// 					     error->message);
    ///    g_signal_connect (error_dialog, "response",
    ///                      G_CALLBACK (gtk_window_destroy), NULL);
    ///    gtk_widget_show (error_dialog);
    ///    g_error_free (error);
    ///  }
    /// else if (res == GTK_PRINT_OPERATION_RESULT_APPLY)
    ///  {
    ///    if (settings != NULL)
    /// g_object_unref (settings);
    ///    settings = g_object_ref (gtk_print_operation_get_print_settings (print));
    ///  }
    /// ```
    /// 
    /// Note that `gtk_print_operation_run()` can only be called once on a
    /// given `GtkPrintOperation`.
    @inlinable func run(action: GtkPrintOperationAction, parent: WindowRef? = nil) throws -> GtkPrintOperationResult {
        var error: UnsafeMutablePointer<GError>?
        let rv = gtk_print_operation_run(print_operation_ptr, action, parent?.window_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Runs the print operation, by first letting the user modify
    /// print settings in the print dialog, and then print the document.
    /// 
    /// Normally that this function does not return until the rendering of all
    /// pages is complete. You can connect to the
    /// `GtkPrintOperation::status`-changed signal on `op` to obtain some
    /// information about the progress of the print operation.
    /// Furthermore, it may use a recursive mainloop to show the print dialog.
    /// 
    /// If you call `gtk_print_operation_set_allow_async()` or set the
    /// `GtkPrintOperation:allow`-async property the operation will run
    /// asynchronously if this is supported on the platform. The
    /// `GtkPrintOperation::done` signal will be emitted with the result of the
    /// operation when the it is done (i.e. when the dialog is canceled, or when
    /// the print succeeds or fails).
    /// (C Language Example):
    /// ```C
    /// if (settings != NULL)
    ///   gtk_print_operation_set_print_settings (print, settings);
    ///   
    /// if (page_setup != NULL)
    ///   gtk_print_operation_set_default_page_setup (print, page_setup);
    ///   
    /// g_signal_connect (print, "begin-print",
    ///                   G_CALLBACK (begin_print), &data);
    /// g_signal_connect (print, "draw-page",
    ///                   G_CALLBACK (draw_page), &data);
    ///  
    /// res = gtk_print_operation_run (print,
    ///                                GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG,
    ///                                parent,
    ///                                &error);
    ///  
    /// if (res == GTK_PRINT_OPERATION_RESULT_ERROR)
    ///  {
    ///    error_dialog = gtk_message_dialog_new (GTK_WINDOW (parent),
    ///   			                     GTK_DIALOG_DESTROY_WITH_PARENT,
    /// 					     GTK_MESSAGE_ERROR,
    /// 					     GTK_BUTTONS_CLOSE,
    /// 					     "Error printing file:\n%s",
    /// 					     error->message);
    ///    g_signal_connect (error_dialog, "response",
    ///                      G_CALLBACK (gtk_window_destroy), NULL);
    ///    gtk_widget_show (error_dialog);
    ///    g_error_free (error);
    ///  }
    /// else if (res == GTK_PRINT_OPERATION_RESULT_APPLY)
    ///  {
    ///    if (settings != NULL)
    /// g_object_unref (settings);
    ///    settings = g_object_ref (gtk_print_operation_get_print_settings (print));
    ///  }
    /// ```
    /// 
    /// Note that `gtk_print_operation_run()` can only be called once on a
    /// given `GtkPrintOperation`.
    @inlinable func run<WindowT: WindowProtocol>(action: GtkPrintOperationAction, parent: WindowT?) throws -> GtkPrintOperationResult {
        var error: UnsafeMutablePointer<GError>?
        let rv = gtk_print_operation_run(print_operation_ptr, action, parent?.window_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets whether the `gtk_print_operation_run()` may return
    /// before the print operation is completed. Note that
    /// some platforms may not allow asynchronous operation.
    @inlinable func set(allowAsync: Bool) {
        gtk_print_operation_set_allow_async(print_operation_ptr, gboolean((allowAsync) ? 1 : 0))
    
    }

    /// Sets the current page.
    /// 
    /// If this is called before `gtk_print_operation_run()`,
    /// the user will be able to select to print only the current page.
    /// 
    /// Note that this only makes sense for pre-paginated documents.
    @inlinable func set(currentPage: Int) {
        gtk_print_operation_set_current_page(print_operation_ptr, gint(currentPage))
    
    }

    /// Sets the label for the tab holding custom widgets.
    @inlinable func setCustomTab(label: UnsafePointer<CChar>? = nil) {
        gtk_print_operation_set_custom_tab_label(print_operation_ptr, label)
    
    }

    /// Makes `default_page_setup` the default page setup for `op`.
    /// 
    /// This page setup will be used by `gtk_print_operation_run()`,
    /// but it can be overridden on a per-page basis by connecting
    /// to the `GtkPrintOperation::request`-page-setup signal.
    @inlinable func set(defaultPageSetup: PageSetupRef? = nil) {
        gtk_print_operation_set_default_page_setup(print_operation_ptr, defaultPageSetup?.page_setup_ptr)
    
    }
    /// Makes `default_page_setup` the default page setup for `op`.
    /// 
    /// This page setup will be used by `gtk_print_operation_run()`,
    /// but it can be overridden on a per-page basis by connecting
    /// to the `GtkPrintOperation::request`-page-setup signal.
    @inlinable func set<PageSetupT: PageSetupProtocol>(defaultPageSetup: PageSetupT?) {
        gtk_print_operation_set_default_page_setup(print_operation_ptr, defaultPageSetup?.page_setup_ptr)
    
    }

    /// Sets up the `GtkPrintOperation` to wait for calling of
    /// `gtk_print_operation_draw_page_finish()` from application. It can
    /// be used for drawing page in another thread.
    /// 
    /// This function must be called in the callback of “draw-page” signal.
    @inlinable func setDeferDrawing() {
        gtk_print_operation_set_defer_drawing(print_operation_ptr)
    
    }

    /// Embed page size combo box and orientation combo box into page setup page.
    /// Selected page setup is stored as default page setup in `GtkPrintOperation`.
    @inlinable func setEmbedPageSetup(embed: Bool) {
        gtk_print_operation_set_embed_page_setup(print_operation_ptr, gboolean((embed) ? 1 : 0))
    
    }

    /// Sets up the `GtkPrintOperation` to generate a file instead
    /// of showing the print dialog. The intended use of this function
    /// is for implementing “Export to PDF” actions. Currently, PDF
    /// is the only supported format.
    /// 
    /// “Print to PDF” support is independent of this and is done
    /// by letting the user pick the “Print to PDF” item from the list
    /// of printers in the print dialog.
    @inlinable func setExport(filename: UnsafePointer<CChar>!) {
        gtk_print_operation_set_export_filename(print_operation_ptr, filename)
    
    }

    /// Sets whether there is a selection to print.
    /// 
    /// Application has to set number of pages to which the selection
    /// will draw by `gtk_print_operation_set_n_pages()` in a callback of
    /// `GtkPrintOperation::begin`-print.
    @inlinable func set(hasSelection: Bool) {
        gtk_print_operation_set_has_selection(print_operation_ptr, gboolean((hasSelection) ? 1 : 0))
    
    }

    /// Sets the name of the print job. The name is used to identify
    /// the job (e.g. in monitoring applications like eggcups).
    /// 
    /// If you don’t set a job name, GTK picks a default one by
    /// numbering successive print jobs.
    @inlinable func set(jobName: UnsafePointer<CChar>!) {
        gtk_print_operation_set_job_name(print_operation_ptr, jobName)
    
    }

    /// Sets the number of pages in the document.
    /// 
    /// This must be set to a positive number
    /// before the rendering starts. It may be set in a
    /// `GtkPrintOperation::begin`-print signal handler.
    /// 
    /// Note that the page numbers passed to the
    /// `GtkPrintOperation::request`-page-setup
    /// and `GtkPrintOperation::draw`-page signals are 0-based, i.e. if
    /// the user chooses to print all pages, the last `draw`-page signal
    /// will be for page `n_pages` - 1.
    @inlinable func set(nPages: Int) {
        gtk_print_operation_set_n_pages(print_operation_ptr, gint(nPages))
    
    }

    /// Sets the print settings for `op`. This is typically used to
    /// re-establish print settings from a previous print operation,
    /// see `gtk_print_operation_run()`.
    @inlinable func set(printSettings: PrintSettingsRef? = nil) {
        gtk_print_operation_set_print_settings(print_operation_ptr, printSettings?.print_settings_ptr)
    
    }
    /// Sets the print settings for `op`. This is typically used to
    /// re-establish print settings from a previous print operation,
    /// see `gtk_print_operation_run()`.
    @inlinable func set<PrintSettingsT: PrintSettingsProtocol>(printSettings: PrintSettingsT?) {
        gtk_print_operation_set_print_settings(print_operation_ptr, printSettings?.print_settings_ptr)
    
    }

    /// If `show_progress` is `true`, the print operation will show a
    /// progress dialog during the print operation.
    @inlinable func set(showProgress: Bool) {
        gtk_print_operation_set_show_progress(print_operation_ptr, gboolean((showProgress) ? 1 : 0))
    
    }

    /// Sets whether selection is supported by `GtkPrintOperation`.
    @inlinable func set(supportSelection: Bool) {
        gtk_print_operation_set_support_selection(print_operation_ptr, gboolean((supportSelection) ? 1 : 0))
    
    }

    /// If track_status is `true`, the print operation will try to continue report
    /// on the status of the print job in the printer queues and printer. This
    /// can allow your application to show things like “out of paper” issues,
    /// and when the print job actually reaches the printer.
    /// 
    /// This function is often implemented using some form of polling, so it should
    /// not be enabled unless needed.
    @inlinable func setTrackPrintStatus(trackStatus: Bool) {
        gtk_print_operation_set_track_print_status(print_operation_ptr, gboolean((trackStatus) ? 1 : 0))
    
    }

    /// Sets up the transformation for the cairo context obtained from
    /// `GtkPrintContext` in such a way that distances are measured in
    /// units of `unit`.
    @inlinable func set(unit: GtkUnit) {
        gtk_print_operation_set_unit(print_operation_ptr, unit)
    
    }

    /// If `full_page` is `true`, the transformation for the cairo context
    /// obtained from `GtkPrintContext` puts the origin at the top left
    /// corner of the page (which may not be the top left corner of the
    /// sheet, depending on page orientation and the number of pages per
    /// sheet). Otherwise, the origin is at the top left corner of the
    /// imageable area (i.e. inside the margins).
    @inlinable func setUse(fullPage: Bool) {
        gtk_print_operation_set_use_full_page(print_operation_ptr, gboolean((fullPage) ? 1 : 0))
    
    }
    /// Returns the default page setup, see
    /// `gtk_print_operation_set_default_page_setup()`.
    @inlinable var defaultPageSetup: PageSetupRef! {
        /// Returns the default page setup, see
        /// `gtk_print_operation_set_default_page_setup()`.
        get {
            let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_print_operation_get_default_page_setup(print_operation_ptr)))
            return rv
        }
        /// Makes `default_page_setup` the default page setup for `op`.
        /// 
        /// This page setup will be used by `gtk_print_operation_run()`,
        /// but it can be overridden on a per-page basis by connecting
        /// to the `GtkPrintOperation::request`-page-setup signal.
        nonmutating set {
            gtk_print_operation_set_default_page_setup(print_operation_ptr, UnsafeMutablePointer<GtkPageSetup>(newValue?.page_setup_ptr))
        }
    }

    /// Gets the value of `GtkPrintOperation:embed`-page-setup property.
    @inlinable var embedPageSetup: Bool {
        /// Gets the value of `GtkPrintOperation:embed`-page-setup property.
        get {
            let rv = ((gtk_print_operation_get_embed_page_setup(print_operation_ptr)) != 0)
            return rv
        }
        /// Embed page size combo box and orientation combo box into page setup page.
        /// Selected page setup is stored as default page setup in `GtkPrintOperation`.
        nonmutating set {
            gtk_print_operation_set_embed_page_setup(print_operation_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    // var error is unavailable because it does not have a valid getter or setter

    /// Gets the value of `GtkPrintOperation:has`-selection property.
    @inlinable var hasSelection: Bool {
        /// Gets the value of `GtkPrintOperation:has`-selection property.
        get {
            let rv = ((gtk_print_operation_get_has_selection(print_operation_ptr)) != 0)
            return rv
        }
        /// Sets whether there is a selection to print.
        /// 
        /// Application has to set number of pages to which the selection
        /// will draw by `gtk_print_operation_set_n_pages()` in a callback of
        /// `GtkPrintOperation::begin`-print.
        nonmutating set {
            gtk_print_operation_set_has_selection(print_operation_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// A convenience function to find out if the print operation
    /// is finished, either successfully (`GTK_PRINT_STATUS_FINISHED`)
    /// or unsuccessfully (`GTK_PRINT_STATUS_FINISHED_ABORTED`).
    /// 
    /// Note: when you enable print status tracking the print operation
    /// can be in a non-finished state even after done has been called, as
    /// the operation status then tracks the print job status on the printer.
    @inlinable var isFinished: Bool {
        /// A convenience function to find out if the print operation
        /// is finished, either successfully (`GTK_PRINT_STATUS_FINISHED`)
        /// or unsuccessfully (`GTK_PRINT_STATUS_FINISHED_ABORTED`).
        /// 
        /// Note: when you enable print status tracking the print operation
        /// can be in a non-finished state even after done has been called, as
        /// the operation status then tracks the print job status on the printer.
        get {
            let rv = ((gtk_print_operation_is_finished(print_operation_ptr)) != 0)
            return rv
        }
    }

    /// Returns the number of pages that will be printed.
    /// 
    /// Note that this value is set during print preparation phase
    /// (`GTK_PRINT_STATUS_PREPARING`), so this function should never be
    /// called before the data generation phase (`GTK_PRINT_STATUS_GENERATING_DATA`).
    /// You can connect to the `GtkPrintOperation::status`-changed signal
    /// and call `gtk_print_operation_get_n_pages_to_print()` when
    /// print status is `GTK_PRINT_STATUS_GENERATING_DATA`.
    /// This is typically used to track the progress of print operation.
    @inlinable var nPagesToPrint: Int {
        /// Returns the number of pages that will be printed.
        /// 
        /// Note that this value is set during print preparation phase
        /// (`GTK_PRINT_STATUS_PREPARING`), so this function should never be
        /// called before the data generation phase (`GTK_PRINT_STATUS_GENERATING_DATA`).
        /// You can connect to the `GtkPrintOperation::status`-changed signal
        /// and call `gtk_print_operation_get_n_pages_to_print()` when
        /// print status is `GTK_PRINT_STATUS_GENERATING_DATA`.
        /// This is typically used to track the progress of print operation.
        get {
            let rv = Int(gtk_print_operation_get_n_pages_to_print(print_operation_ptr))
            return rv
        }
    }

    /// Returns the current print settings.
    /// 
    /// Note that the return value is `nil` until either
    /// `gtk_print_operation_set_print_settings()` or
    /// `gtk_print_operation_run()` have been called.
    @inlinable var printSettings: PrintSettingsRef! {
        /// Returns the current print settings.
        /// 
        /// Note that the return value is `nil` until either
        /// `gtk_print_operation_set_print_settings()` or
        /// `gtk_print_operation_run()` have been called.
        get {
            let rv = PrintSettingsRef(gconstpointer: gconstpointer(gtk_print_operation_get_print_settings(print_operation_ptr)))
            return rv
        }
        /// Sets the print settings for `op`. This is typically used to
        /// re-establish print settings from a previous print operation,
        /// see `gtk_print_operation_run()`.
        nonmutating set {
            gtk_print_operation_set_print_settings(print_operation_ptr, UnsafeMutablePointer<GtkPrintSettings>(newValue?.print_settings_ptr))
        }
    }

    /// The status of the print operation.
    @inlinable var status: GtkPrintStatus {
        /// Returns the status of the print operation.
        /// Also see `gtk_print_operation_get_status_string()`.
        get {
            let rv = gtk_print_operation_get_status(print_operation_ptr)
            return rv
        }
    }

    /// Returns a string representation of the status of the
    /// print operation. The string is translated and suitable
    /// for displaying the print status e.g. in a `GtkStatusbar`.
    /// 
    /// Use `gtk_print_operation_get_status()` to obtain a status
    /// value that is suitable for programmatic use.
    @inlinable var statusString: String! {
        /// Returns a string representation of the status of the
        /// print operation. The string is translated and suitable
        /// for displaying the print status e.g. in a `GtkStatusbar`.
        /// 
        /// Use `gtk_print_operation_get_status()` to obtain a status
        /// value that is suitable for programmatic use.
        get {
            let rv = gtk_print_operation_get_status_string(print_operation_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the value of `GtkPrintOperation:support`-selection property.
    @inlinable var supportSelection: Bool {
        /// Gets the value of `GtkPrintOperation:support`-selection property.
        get {
            let rv = ((gtk_print_operation_get_support_selection(print_operation_ptr)) != 0)
            return rv
        }
        /// Sets whether selection is supported by `GtkPrintOperation`.
        nonmutating set {
            gtk_print_operation_set_support_selection(print_operation_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = print_operation_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - PrintSettings Class

/// The `PrintSettingsProtocol` protocol exposes the methods and properties of an underlying `GtkPrintSettings` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PrintSettings`.
/// Alternatively, use `PrintSettingsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkPrintSettings object represents the settings of a print dialog in
/// a system-independent way. The main use for this object is that once
/// you’ve printed you can get a settings object that represents the settings
/// the user chose, and the next time you print you can pass that object in so
/// that the user doesn’t have to re-set all his settings.
/// 
/// Its also possible to enumerate the settings so that you can easily save
/// the settings for the next time your app runs, or even store them in a
/// document. The predefined keys try to use shared values as much as possible
/// so that moving such a document between systems still works.
public protocol PrintSettingsProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkPrintSettings` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPrintSettings` instance.
    var print_settings_ptr: UnsafeMutablePointer<GtkPrintSettings>! { get }

}

/// The `PrintSettingsRef` type acts as a lightweight Swift reference to an underlying `GtkPrintSettings` instance.
/// It exposes methods that can operate on this data type through `PrintSettingsProtocol` conformance.
/// Use `PrintSettingsRef` only as an `unowned` reference to an existing `GtkPrintSettings` instance.
///
/// A GtkPrintSettings object represents the settings of a print dialog in
/// a system-independent way. The main use for this object is that once
/// you’ve printed you can get a settings object that represents the settings
/// the user chose, and the next time you print you can pass that object in so
/// that the user doesn’t have to re-set all his settings.
/// 
/// Its also possible to enumerate the settings so that you can easily save
/// the settings for the next time your app runs, or even store them in a
/// document. The predefined keys try to use shared values as much as possible
/// so that moving such a document between systems still works.
public struct PrintSettingsRef: PrintSettingsProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkPrintSettings` instance.
    /// For type-safe access, use the generated, typed pointer `print_settings_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PrintSettingsRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPrintSettings>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPrintSettings>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPrintSettings>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPrintSettings>?) {
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

    /// Reference intialiser for a related type that implements `PrintSettingsProtocol`
    @inlinable init<T: PrintSettingsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: PrintSettingsProtocol>(_ other: T) -> PrintSettingsRef { PrintSettingsRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkPrintSettings` object.
    @inlinable init() {
        let rv = gtk_print_settings_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Reads the print settings from `file_name`. Returns a new `GtkPrintSettings`
    /// object with the restored settings, or `nil` if an error occurred. If the
    /// file could not be loaded then error is set to either a `GFileError` or
    /// `GKeyFileError`.  See `gtk_print_settings_to_file()`.
    @inlinable init(file fileName: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gtk_print_settings_new_from_file(fileName, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Deserialize print settings from an a{sv} variant in
    /// the format produced by `gtk_print_settings_to_gvariant()`.
    @inlinable init<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) {
        let rv = gtk_print_settings_new_from_gvariant(variant.variant_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Reads the print settings from the group `group_name` in `key_file`.  Returns a
    /// new `GtkPrintSettings` object with the restored settings, or `nil` if an
    /// error occurred. If the file could not be loaded then error is set to either
    /// a `GFileError` or `GKeyFileError`.
    @inlinable init<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gtk_print_settings_new_from_key_file(keyFile.key_file_ptr, groupName, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Reads the print settings from `file_name`. Returns a new `GtkPrintSettings`
    /// object with the restored settings, or `nil` if an error occurred. If the
    /// file could not be loaded then error is set to either a `GFileError` or
    /// `GKeyFileError`.  See `gtk_print_settings_to_file()`.
    @inlinable static func newFrom(file fileName: UnsafePointer<CChar>!) throws -> PrintSettingsRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PrintSettingsRef(gconstpointer: gconstpointer(gtk_print_settings_new_from_file(fileName, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Deserialize print settings from an a{sv} variant in
    /// the format produced by `gtk_print_settings_to_gvariant()`.
    @inlinable static func newFromG<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) -> PrintSettingsRef! {
        guard let rv = PrintSettingsRef(gconstpointer: gconstpointer(gtk_print_settings_new_from_gvariant(variant.variant_ptr))) else { return nil }
        return rv
    }

    /// Reads the print settings from the group `group_name` in `key_file`.  Returns a
    /// new `GtkPrintSettings` object with the restored settings, or `nil` if an
    /// error occurred. If the file could not be loaded then error is set to either
    /// a `GFileError` or `GKeyFileError`.
    @inlinable static func newFrom<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) throws -> PrintSettingsRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PrintSettingsRef(gconstpointer: gconstpointer(gtk_print_settings_new_from_key_file(keyFile.key_file_ptr, groupName, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// The `PrintSettings` type acts as a reference-counted owner of an underlying `GtkPrintSettings` instance.
/// It provides the methods that can operate on this data type through `PrintSettingsProtocol` conformance.
/// Use `PrintSettings` as a strong reference or owner of a `GtkPrintSettings` instance.
///
/// A GtkPrintSettings object represents the settings of a print dialog in
/// a system-independent way. The main use for this object is that once
/// you’ve printed you can get a settings object that represents the settings
/// the user chose, and the next time you print you can pass that object in so
/// that the user doesn’t have to re-set all his settings.
/// 
/// Its also possible to enumerate the settings so that you can easily save
/// the settings for the next time your app runs, or even store them in a
/// document. The predefined keys try to use shared values as much as possible
/// so that moving such a document between systems still works.
open class PrintSettings: GLibObject.Object, PrintSettingsProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintSettings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPrintSettings>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintSettings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPrintSettings>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintSettings` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintSettings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintSettings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPrintSettings>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintSettings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPrintSettings>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkPrintSettings`.
    /// i.e., ownership is transferred to the `PrintSettings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPrintSettings>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PrintSettingsProtocol`
    /// Will retain `GtkPrintSettings`.
    /// - Parameter other: an instance of a related type that implements `PrintSettingsProtocol`
    @inlinable public init<T: PrintSettingsProtocol>(printSettings other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkPrintSettings` object.
    @inlinable public init() {
        let rv = gtk_print_settings_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Reads the print settings from `file_name`. Returns a new `GtkPrintSettings`
    /// object with the restored settings, or `nil` if an error occurred. If the
    /// file could not be loaded then error is set to either a `GFileError` or
    /// `GKeyFileError`.  See `gtk_print_settings_to_file()`.
    @inlinable public init(file fileName: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gtk_print_settings_new_from_file(fileName, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Deserialize print settings from an a{sv} variant in
    /// the format produced by `gtk_print_settings_to_gvariant()`.
    @inlinable public init<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) {
        let rv = gtk_print_settings_new_from_gvariant(variant.variant_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Reads the print settings from the group `group_name` in `key_file`.  Returns a
    /// new `GtkPrintSettings` object with the restored settings, or `nil` if an
    /// error occurred. If the file could not be loaded then error is set to either
    /// a `GFileError` or `GKeyFileError`.
    @inlinable public init<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gtk_print_settings_new_from_key_file(keyFile.key_file_ptr, groupName, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Reads the print settings from `file_name`. Returns a new `GtkPrintSettings`
    /// object with the restored settings, or `nil` if an error occurred. If the
    /// file could not be loaded then error is set to either a `GFileError` or
    /// `GKeyFileError`.  See `gtk_print_settings_to_file()`.
    @inlinable public static func newFrom(file fileName: UnsafePointer<CChar>!) throws -> PrintSettings! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PrintSettings(gconstpointer: gconstpointer(gtk_print_settings_new_from_file(fileName, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Deserialize print settings from an a{sv} variant in
    /// the format produced by `gtk_print_settings_to_gvariant()`.
    @inlinable public static func newFromG<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) -> PrintSettings! {
        guard let rv = PrintSettings(gconstpointer: gconstpointer(gtk_print_settings_new_from_gvariant(variant.variant_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Reads the print settings from the group `group_name` in `key_file`.  Returns a
    /// new `GtkPrintSettings` object with the restored settings, or `nil` if an
    /// error occurred. If the file could not be loaded then error is set to either
    /// a `GFileError` or `GKeyFileError`.
    @inlinable public static func newFrom<KeyFileT: GLib.KeyFileProtocol>(keyFile keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) throws -> PrintSettings! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PrintSettings(gconstpointer: gconstpointer(gtk_print_settings_new_from_key_file(keyFile.key_file_ptr, groupName, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

// MARK: no PrintSettings properties

// MARK: PrintSettings has no signals// MARK: PrintSettings Class: PrintSettingsProtocol extension (methods and fields)
public extension PrintSettingsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPrintSettings` instance.
    @inlinable var print_settings_ptr: UnsafeMutablePointer<GtkPrintSettings>! { return ptr?.assumingMemoryBound(to: GtkPrintSettings.self) }

    /// Copies a `GtkPrintSettings` object.
    @inlinable func copy() -> PrintSettingsRef! {
        guard let rv = PrintSettingsRef(gconstpointer: gconstpointer(gtk_print_settings_copy(print_settings_ptr))) else { return nil }
        return rv
    }

    /// Calls `func` for each key-value pair of `settings`.
    @inlinable func foreach(`func`: GtkPrintSettingsFunc?, userData: gpointer! = nil) {
        gtk_print_settings_foreach(print_settings_ptr, `func`, userData)
    
    }

    /// Looks up the string value associated with `key`.
    @inlinable func get(key: UnsafePointer<CChar>!) -> String! {
        let rv = gtk_print_settings_get(print_settings_ptr, key).map({ String(cString: $0) })
        return rv
    }

    /// Returns the boolean represented by the value
    /// that is associated with `key`.
    /// 
    /// The string “true” represents `true`, any other
    /// string `false`.
    @inlinable func getBool(key: UnsafePointer<CChar>!) -> Bool {
        let rv = ((gtk_print_settings_get_bool(print_settings_ptr, key)) != 0)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_COLLATE`.
    @inlinable func getCollate() -> Bool {
        let rv = ((gtk_print_settings_get_collate(print_settings_ptr)) != 0)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_DEFAULT_SOURCE`.
    @inlinable func getDefaultSource() -> String! {
        let rv = gtk_print_settings_get_default_source(print_settings_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_DITHER`.
    @inlinable func getDither() -> String! {
        let rv = gtk_print_settings_get_dither(print_settings_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the double value associated with `key`, or 0.
    @inlinable func getDouble(key: UnsafePointer<CChar>!) -> CDouble {
        let rv = gtk_print_settings_get_double(print_settings_ptr, key)
        return rv
    }

    /// Returns the floating point number represented by
    /// the value that is associated with `key`, or `default_val`
    /// if the value does not represent a floating point number.
    /// 
    /// Floating point numbers are parsed with `g_ascii_strtod()`.
    @inlinable func getDoubleWithDefault(key: UnsafePointer<CChar>!, def: CDouble) -> CDouble {
        let rv = gtk_print_settings_get_double_with_default(print_settings_ptr, key, def)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_DUPLEX`.
    @inlinable func getDuplex() -> GtkPrintDuplex {
        let rv = gtk_print_settings_get_duplex(print_settings_ptr)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_FINISHINGS`.
    @inlinable func getFinishings() -> String! {
        let rv = gtk_print_settings_get_finishings(print_settings_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the integer value of `key`, or 0.
    @inlinable func getInt(key: UnsafePointer<CChar>!) -> Int {
        let rv = Int(gtk_print_settings_get_int(print_settings_ptr, key))
        return rv
    }

    /// Returns the value of `key`, interpreted as
    /// an integer, or the default value.
    @inlinable func getIntWithDefault(key: UnsafePointer<CChar>!, def: Int) -> Int {
        let rv = Int(gtk_print_settings_get_int_with_default(print_settings_ptr, key, gint(def)))
        return rv
    }

    /// Returns the value associated with `key`, interpreted
    /// as a length. The returned value is converted to `units`.
    @inlinable func getLength(key: UnsafePointer<CChar>!, unit: GtkUnit) -> CDouble {
        let rv = gtk_print_settings_get_length(print_settings_ptr, key, unit)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_MEDIA_TYPE`.
    /// 
    /// The set of media types is defined in PWG 5101.1-2002 PWG.
    @inlinable func getMediaType() -> String! {
        let rv = gtk_print_settings_get_media_type(print_settings_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_N_COPIES`.
    @inlinable func getNCopies() -> Int {
        let rv = Int(gtk_print_settings_get_n_copies(print_settings_ptr))
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_NUMBER_UP`.
    @inlinable func getNumberUp() -> Int {
        let rv = Int(gtk_print_settings_get_number_up(print_settings_ptr))
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT`.
    @inlinable func getNumberUpLayout() -> GtkNumberUpLayout {
        let rv = gtk_print_settings_get_number_up_layout(print_settings_ptr)
        return rv
    }

    /// Get the value of `GTK_PRINT_SETTINGS_ORIENTATION`,
    /// converted to a `GtkPageOrientation`.
    @inlinable func getOrientation() -> GtkPageOrientation {
        let rv = gtk_print_settings_get_orientation(print_settings_ptr)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_OUTPUT_BIN`.
    @inlinable func getOutputBin() -> String! {
        let rv = gtk_print_settings_get_output_bin(print_settings_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PAGE_RANGES`.
    @inlinable func getPageRanges(numRanges: UnsafeMutablePointer<gint>!) -> UnsafeMutablePointer<GtkPageRange>! {
        let rv = gtk_print_settings_get_page_ranges(print_settings_ptr, numRanges)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PAGE_SET`.
    @inlinable func getPageSet() -> GtkPageSet {
        let rv = gtk_print_settings_get_page_set(print_settings_ptr)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PAPER_HEIGHT`,
    /// converted to `unit`.
    @inlinable func getPaperHeight(unit: GtkUnit) -> CDouble {
        let rv = gtk_print_settings_get_paper_height(print_settings_ptr, unit)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PAPER_FORMAT`,
    /// converted to a `GtkPaperSize`.
    @inlinable func getPaperSize() -> PaperSizeRef! {
        let rv = PaperSizeRef(gconstpointer: gconstpointer(gtk_print_settings_get_paper_size(print_settings_ptr)))
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PAPER_WIDTH`,
    /// converted to `unit`.
    @inlinable func getPaperWidth(unit: GtkUnit) -> CDouble {
        let rv = gtk_print_settings_get_paper_width(print_settings_ptr, unit)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PRINT_PAGES`.
    @inlinable func getPrintPages() -> GtkPrintPages {
        let rv = gtk_print_settings_get_print_pages(print_settings_ptr)
        return rv
    }

    /// Convenience function to obtain the value of
    /// `GTK_PRINT_SETTINGS_PRINTER`.
    @inlinable func getPrinter() -> String! {
        let rv = gtk_print_settings_get_printer(print_settings_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PRINTER_LPI`.
    @inlinable func getPrinterLpi() -> CDouble {
        let rv = gtk_print_settings_get_printer_lpi(print_settings_ptr)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_QUALITY`.
    @inlinable func getQuality() -> GtkPrintQuality {
        let rv = gtk_print_settings_get_quality(print_settings_ptr)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION`.
    @inlinable func getResolution() -> Int {
        let rv = Int(gtk_print_settings_get_resolution(print_settings_ptr))
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION_X`.
    @inlinable func getResolutionX() -> Int {
        let rv = Int(gtk_print_settings_get_resolution_x(print_settings_ptr))
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION_Y`.
    @inlinable func getResolutionY() -> Int {
        let rv = Int(gtk_print_settings_get_resolution_y(print_settings_ptr))
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_REVERSE`.
    @inlinable func getReverse() -> Bool {
        let rv = ((gtk_print_settings_get_reverse(print_settings_ptr)) != 0)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_SCALE`.
    @inlinable func getScale() -> CDouble {
        let rv = gtk_print_settings_get_scale(print_settings_ptr)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_USE_COLOR`.
    @inlinable func getUseColor() -> Bool {
        let rv = ((gtk_print_settings_get_use_color(print_settings_ptr)) != 0)
        return rv
    }

    /// Returns `true`, if a value is associated with `key`.
    @inlinable func has(key: UnsafePointer<CChar>!) -> Bool {
        let rv = ((gtk_print_settings_has_key(print_settings_ptr, key)) != 0)
        return rv
    }

    /// Reads the print settings from `file_name`. If the file could not be loaded
    /// then error is set to either a `GFileError` or `GKeyFileError`.
    /// See `gtk_print_settings_to_file()`.
    @inlinable func loadFile(fileName: UnsafePointer<CChar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_print_settings_load_file(print_settings_ptr, fileName, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads the print settings from the group `group_name` in `key_file`. If the
    /// file could not be loaded then error is set to either a `GFileError` or
    /// `GKeyFileError`.
    @inlinable func load<KeyFileT: GLib.KeyFileProtocol>(keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_print_settings_load_key_file(print_settings_ptr, keyFile.key_file_ptr, groupName, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Associates `value` with `key`.
    @inlinable func set(key: UnsafePointer<CChar>!, value: UnsafePointer<CChar>? = nil) {
        gtk_print_settings_set(print_settings_ptr, key, value)
    
    }

    /// Sets `key` to a boolean value.
    @inlinable func setBool(key: UnsafePointer<CChar>!, value: Bool) {
        gtk_print_settings_set_bool(print_settings_ptr, key, gboolean((value) ? 1 : 0))
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_COLLATE`.
    @inlinable func set(collate: Bool) {
        gtk_print_settings_set_collate(print_settings_ptr, gboolean((collate) ? 1 : 0))
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_DEFAULT_SOURCE`.
    @inlinable func set(defaultSource: UnsafePointer<CChar>!) {
        gtk_print_settings_set_default_source(print_settings_ptr, defaultSource)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_DITHER`.
    @inlinable func set(dither: UnsafePointer<CChar>!) {
        gtk_print_settings_set_dither(print_settings_ptr, dither)
    
    }

    /// Sets `key` to a double value.
    @inlinable func setDouble(key: UnsafePointer<CChar>!, value: CDouble) {
        gtk_print_settings_set_double(print_settings_ptr, key, value)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_DUPLEX`.
    @inlinable func set(duplex: GtkPrintDuplex) {
        gtk_print_settings_set_duplex(print_settings_ptr, duplex)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_FINISHINGS`.
    @inlinable func set(finishings: UnsafePointer<CChar>!) {
        gtk_print_settings_set_finishings(print_settings_ptr, finishings)
    
    }

    /// Sets `key` to an integer value.
    @inlinable func setInt(key: UnsafePointer<CChar>!, value: Int) {
        gtk_print_settings_set_int(print_settings_ptr, key, gint(value))
    
    }

    /// Associates a length in units of `unit` with `key`.
    @inlinable func setLength(key: UnsafePointer<CChar>!, value: CDouble, unit: GtkUnit) {
        gtk_print_settings_set_length(print_settings_ptr, key, value, unit)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_MEDIA_TYPE`.
    /// 
    /// The set of media types is defined in PWG 5101.1-2002 PWG.
    @inlinable func set(mediaType: UnsafePointer<CChar>!) {
        gtk_print_settings_set_media_type(print_settings_ptr, mediaType)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_N_COPIES`.
    @inlinable func setNCopies(numCopies: Int) {
        gtk_print_settings_set_n_copies(print_settings_ptr, gint(numCopies))
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_NUMBER_UP`.
    @inlinable func set(numberUp: Int) {
        gtk_print_settings_set_number_up(print_settings_ptr, gint(numberUp))
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT`.
    @inlinable func set(numberUpLayout: GtkNumberUpLayout) {
        gtk_print_settings_set_number_up_layout(print_settings_ptr, numberUpLayout)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_ORIENTATION`.
    @inlinable func set(orientation: GtkPageOrientation) {
        gtk_print_settings_set_orientation(print_settings_ptr, orientation)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_OUTPUT_BIN`.
    @inlinable func set(outputBin: UnsafePointer<CChar>!) {
        gtk_print_settings_set_output_bin(print_settings_ptr, outputBin)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_PAGE_RANGES`.
    @inlinable func set(pageRanges: UnsafeMutablePointer<GtkPageRange>!, numRanges: Int) {
        gtk_print_settings_set_page_ranges(print_settings_ptr, pageRanges, gint(numRanges))
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_PAGE_SET`.
    @inlinable func set(pageSet: GtkPageSet) {
        gtk_print_settings_set_page_set(print_settings_ptr, pageSet)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_PAPER_HEIGHT`.
    @inlinable func setPaper(height: CDouble, unit: GtkUnit) {
        gtk_print_settings_set_paper_height(print_settings_ptr, height, unit)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_PAPER_FORMAT`,
    /// `GTK_PRINT_SETTINGS_PAPER_WIDTH` and
    /// `GTK_PRINT_SETTINGS_PAPER_HEIGHT`.
    @inlinable func set<PaperSizeT: PaperSizeProtocol>(paperSize: PaperSizeT) {
        gtk_print_settings_set_paper_size(print_settings_ptr, paperSize.paper_size_ptr)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_PAPER_WIDTH`.
    @inlinable func setPaper(width: CDouble, unit: GtkUnit) {
        gtk_print_settings_set_paper_width(print_settings_ptr, width, unit)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_PRINT_PAGES`.
    @inlinable func setPrint(pages: GtkPrintPages) {
        gtk_print_settings_set_print_pages(print_settings_ptr, pages)
    
    }

    /// Convenience function to set `GTK_PRINT_SETTINGS_PRINTER`
    /// to `printer`.
    @inlinable func set(printer: UnsafePointer<CChar>!) {
        gtk_print_settings_set_printer(print_settings_ptr, printer)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_PRINTER_LPI`.
    @inlinable func setPrinter(lpi: CDouble) {
        gtk_print_settings_set_printer_lpi(print_settings_ptr, lpi)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_QUALITY`.
    @inlinable func set(quality: GtkPrintQuality) {
        gtk_print_settings_set_quality(print_settings_ptr, quality)
    
    }

    /// Sets the values of `GTK_PRINT_SETTINGS_RESOLUTION`,
    /// `GTK_PRINT_SETTINGS_RESOLUTION_X` and
    /// `GTK_PRINT_SETTINGS_RESOLUTION_Y`.
    @inlinable func set(resolution: Int) {
        gtk_print_settings_set_resolution(print_settings_ptr, gint(resolution))
    
    }

    /// Sets the values of `GTK_PRINT_SETTINGS_RESOLUTION`,
    /// `GTK_PRINT_SETTINGS_RESOLUTION_X` and
    /// `GTK_PRINT_SETTINGS_RESOLUTION_Y`.
    @inlinable func setResolutionXy(resolutionX: Int, resolutionY: Int) {
        gtk_print_settings_set_resolution_xy(print_settings_ptr, gint(resolutionX), gint(resolutionY))
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_REVERSE`.
    @inlinable func set(reverse: Bool) {
        gtk_print_settings_set_reverse(print_settings_ptr, gboolean((reverse) ? 1 : 0))
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_SCALE`.
    @inlinable func set(scale: CDouble) {
        gtk_print_settings_set_scale(print_settings_ptr, scale)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_USE_COLOR`.
    @inlinable func set(useColor: Bool) {
        gtk_print_settings_set_use_color(print_settings_ptr, gboolean((useColor) ? 1 : 0))
    
    }

    /// This function saves the print settings from `settings` to `file_name`. If the
    /// file could not be loaded then error is set to either a `GFileError` or
    /// `GKeyFileError`.
    @inlinable func toFile(fileName: UnsafePointer<CChar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_print_settings_to_file(print_settings_ptr, fileName, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Serialize print settings to an a{sv} variant.
    @inlinable func toGvariant() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(gtk_print_settings_to_gvariant(print_settings_ptr))
        return rv
    }

    /// This function adds the print settings from `settings` to `key_file`.
    @inlinable func to<KeyFileT: GLib.KeyFileProtocol>(keyFile: KeyFileT, groupName: UnsafePointer<CChar>? = nil) {
        gtk_print_settings_to_key_file(print_settings_ptr, keyFile.key_file_ptr, groupName)
    
    }

    /// Removes any value associated with `key`.
    /// This has the same effect as setting the value to `nil`.
    @inlinable func unset(key: UnsafePointer<CChar>!) {
        gtk_print_settings_unset(print_settings_ptr, key)
    
    }

    /// Runs a page setup dialog, letting the user modify the values from
    /// `page_setup`. If the user cancels the dialog, the returned `GtkPageSetup`
    /// is identical to the passed in `page_setup`, otherwise it contains the
    /// modifications done in the dialog.
    /// 
    /// Note that this function may use a recursive mainloop to show the page
    /// setup dialog. See `gtk_print_run_page_setup_dialog_async()` if this is
    /// a problem.
    @inlinable func printRunPageSetupDialog(parent: WindowRef? = nil, pageSetup: PageSetupRef? = nil) -> PageSetupRef! {
        let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_print_run_page_setup_dialog(parent?.window_ptr, pageSetup?.page_setup_ptr, print_settings_ptr)))
        return rv
    }
    /// Runs a page setup dialog, letting the user modify the values from
    /// `page_setup`. If the user cancels the dialog, the returned `GtkPageSetup`
    /// is identical to the passed in `page_setup`, otherwise it contains the
    /// modifications done in the dialog.
    /// 
    /// Note that this function may use a recursive mainloop to show the page
    /// setup dialog. See `gtk_print_run_page_setup_dialog_async()` if this is
    /// a problem.
    @inlinable func printRunPageSetupDialog<PageSetupT: PageSetupProtocol, WindowT: WindowProtocol>(parent: WindowT?, pageSetup: PageSetupT?) -> PageSetupRef! {
        let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_print_run_page_setup_dialog(parent?.window_ptr, pageSetup?.page_setup_ptr, print_settings_ptr)))
        return rv
    }

    /// Runs a page setup dialog, letting the user modify the values from `page_setup`.
    /// 
    /// In contrast to `gtk_print_run_page_setup_dialog()`, this function  returns after
    /// showing the page setup dialog on platforms that support this, and calls `done_cb`
    /// from a signal handler for the `response` signal of the dialog.
    @inlinable func printRunPageSetupDialogAsync(parent: WindowRef? = nil, pageSetup: PageSetupRef? = nil, doneCb: GtkPageSetupDoneFunc?, data: gpointer! = nil) {
        gtk_print_run_page_setup_dialog_async(parent?.window_ptr, pageSetup?.page_setup_ptr, print_settings_ptr, doneCb, data)
    
    }
    /// Runs a page setup dialog, letting the user modify the values from `page_setup`.
    /// 
    /// In contrast to `gtk_print_run_page_setup_dialog()`, this function  returns after
    /// showing the page setup dialog on platforms that support this, and calls `done_cb`
    /// from a signal handler for the `response` signal of the dialog.
    @inlinable func printRunPageSetupDialogAsync<PageSetupT: PageSetupProtocol, WindowT: WindowProtocol>(parent: WindowT?, pageSetup: PageSetupT?, doneCb: GtkPageSetupDoneFunc?, data: gpointer! = nil) {
        gtk_print_run_page_setup_dialog_async(parent?.window_ptr, pageSetup?.page_setup_ptr, print_settings_ptr, doneCb, data)
    
    }
    /// Gets the value of `GTK_PRINT_SETTINGS_COLLATE`.
    @inlinable var collate: Bool {
        /// Gets the value of `GTK_PRINT_SETTINGS_COLLATE`.
        get {
            let rv = ((gtk_print_settings_get_collate(print_settings_ptr)) != 0)
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_COLLATE`.
        nonmutating set {
            gtk_print_settings_set_collate(print_settings_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_DEFAULT_SOURCE`.
    @inlinable var defaultSource: String! {
        /// Gets the value of `GTK_PRINT_SETTINGS_DEFAULT_SOURCE`.
        get {
            let rv = gtk_print_settings_get_default_source(print_settings_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_DEFAULT_SOURCE`.
        nonmutating set {
            gtk_print_settings_set_default_source(print_settings_ptr, newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_DITHER`.
    @inlinable var dither: String! {
        /// Gets the value of `GTK_PRINT_SETTINGS_DITHER`.
        get {
            let rv = gtk_print_settings_get_dither(print_settings_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_DITHER`.
        nonmutating set {
            gtk_print_settings_set_dither(print_settings_ptr, newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_DUPLEX`.
    @inlinable var duplex: GtkPrintDuplex {
        /// Gets the value of `GTK_PRINT_SETTINGS_DUPLEX`.
        get {
            let rv = gtk_print_settings_get_duplex(print_settings_ptr)
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_DUPLEX`.
        nonmutating set {
            gtk_print_settings_set_duplex(print_settings_ptr, newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_FINISHINGS`.
    @inlinable var finishings: String! {
        /// Gets the value of `GTK_PRINT_SETTINGS_FINISHINGS`.
        get {
            let rv = gtk_print_settings_get_finishings(print_settings_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_FINISHINGS`.
        nonmutating set {
            gtk_print_settings_set_finishings(print_settings_ptr, newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_MEDIA_TYPE`.
    /// 
    /// The set of media types is defined in PWG 5101.1-2002 PWG.
    @inlinable var mediaType: String! {
        /// Gets the value of `GTK_PRINT_SETTINGS_MEDIA_TYPE`.
        /// 
        /// The set of media types is defined in PWG 5101.1-2002 PWG.
        get {
            let rv = gtk_print_settings_get_media_type(print_settings_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_MEDIA_TYPE`.
        /// 
        /// The set of media types is defined in PWG 5101.1-2002 PWG.
        nonmutating set {
            gtk_print_settings_set_media_type(print_settings_ptr, newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_N_COPIES`.
    @inlinable var nCopies: Int {
        /// Gets the value of `GTK_PRINT_SETTINGS_N_COPIES`.
        get {
            let rv = Int(gtk_print_settings_get_n_copies(print_settings_ptr))
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_N_COPIES`.
        nonmutating set {
            gtk_print_settings_set_n_copies(print_settings_ptr, gint(newValue))
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_NUMBER_UP`.
    @inlinable var numberUp: Int {
        /// Gets the value of `GTK_PRINT_SETTINGS_NUMBER_UP`.
        get {
            let rv = Int(gtk_print_settings_get_number_up(print_settings_ptr))
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_NUMBER_UP`.
        nonmutating set {
            gtk_print_settings_set_number_up(print_settings_ptr, gint(newValue))
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT`.
    @inlinable var numberUpLayout: GtkNumberUpLayout {
        /// Gets the value of `GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT`.
        get {
            let rv = gtk_print_settings_get_number_up_layout(print_settings_ptr)
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT`.
        nonmutating set {
            gtk_print_settings_set_number_up_layout(print_settings_ptr, newValue)
        }
    }

    /// Get the value of `GTK_PRINT_SETTINGS_ORIENTATION`,
    /// converted to a `GtkPageOrientation`.
    @inlinable var orientation: GtkPageOrientation {
        /// Get the value of `GTK_PRINT_SETTINGS_ORIENTATION`,
        /// converted to a `GtkPageOrientation`.
        get {
            let rv = gtk_print_settings_get_orientation(print_settings_ptr)
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_ORIENTATION`.
        nonmutating set {
            gtk_print_settings_set_orientation(print_settings_ptr, newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_OUTPUT_BIN`.
    @inlinable var outputBin: String! {
        /// Gets the value of `GTK_PRINT_SETTINGS_OUTPUT_BIN`.
        get {
            let rv = gtk_print_settings_get_output_bin(print_settings_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_OUTPUT_BIN`.
        nonmutating set {
            gtk_print_settings_set_output_bin(print_settings_ptr, newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PAGE_SET`.
    @inlinable var pageSet: GtkPageSet {
        /// Gets the value of `GTK_PRINT_SETTINGS_PAGE_SET`.
        get {
            let rv = gtk_print_settings_get_page_set(print_settings_ptr)
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_PAGE_SET`.
        nonmutating set {
            gtk_print_settings_set_page_set(print_settings_ptr, newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PAPER_FORMAT`,
    /// converted to a `GtkPaperSize`.
    @inlinable var paperSize: PaperSizeRef! {
        /// Gets the value of `GTK_PRINT_SETTINGS_PAPER_FORMAT`,
        /// converted to a `GtkPaperSize`.
        get {
            let rv = PaperSizeRef(gconstpointer: gconstpointer(gtk_print_settings_get_paper_size(print_settings_ptr)))
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_PAPER_FORMAT`,
        /// `GTK_PRINT_SETTINGS_PAPER_WIDTH` and
        /// `GTK_PRINT_SETTINGS_PAPER_HEIGHT`.
        nonmutating set {
            gtk_print_settings_set_paper_size(print_settings_ptr, UnsafeMutablePointer<GtkPaperSize>(newValue?.paper_size_ptr))
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PRINT_PAGES`.
    @inlinable var printPages: GtkPrintPages {
        /// Gets the value of `GTK_PRINT_SETTINGS_PRINT_PAGES`.
        get {
            let rv = gtk_print_settings_get_print_pages(print_settings_ptr)
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_PRINT_PAGES`.
        nonmutating set {
            gtk_print_settings_set_print_pages(print_settings_ptr, newValue)
        }
    }

    /// Convenience function to obtain the value of
    /// `GTK_PRINT_SETTINGS_PRINTER`.
    @inlinable var printer: String! {
        /// Convenience function to obtain the value of
        /// `GTK_PRINT_SETTINGS_PRINTER`.
        get {
            let rv = gtk_print_settings_get_printer(print_settings_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Convenience function to set `GTK_PRINT_SETTINGS_PRINTER`
        /// to `printer`.
        nonmutating set {
            gtk_print_settings_set_printer(print_settings_ptr, newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PRINTER_LPI`.
    @inlinable var printerLpi: CDouble {
        /// Gets the value of `GTK_PRINT_SETTINGS_PRINTER_LPI`.
        get {
            let rv = gtk_print_settings_get_printer_lpi(print_settings_ptr)
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_PRINTER_LPI`.
        nonmutating set {
            gtk_print_settings_set_printer_lpi(print_settings_ptr, newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_QUALITY`.
    @inlinable var quality: GtkPrintQuality {
        /// Gets the value of `GTK_PRINT_SETTINGS_QUALITY`.
        get {
            let rv = gtk_print_settings_get_quality(print_settings_ptr)
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_QUALITY`.
        nonmutating set {
            gtk_print_settings_set_quality(print_settings_ptr, newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION`.
    @inlinable var resolution: Int {
        /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION`.
        get {
            let rv = Int(gtk_print_settings_get_resolution(print_settings_ptr))
            return rv
        }
        /// Sets the values of `GTK_PRINT_SETTINGS_RESOLUTION`,
        /// `GTK_PRINT_SETTINGS_RESOLUTION_X` and
        /// `GTK_PRINT_SETTINGS_RESOLUTION_Y`.
        nonmutating set {
            gtk_print_settings_set_resolution(print_settings_ptr, gint(newValue))
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION_X`.
    @inlinable var resolutionX: Int {
        /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION_X`.
        get {
            let rv = Int(gtk_print_settings_get_resolution_x(print_settings_ptr))
            return rv
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION_Y`.
    @inlinable var resolutionY: Int {
        /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION_Y`.
        get {
            let rv = Int(gtk_print_settings_get_resolution_y(print_settings_ptr))
            return rv
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_REVERSE`.
    @inlinable var reverse: Bool {
        /// Gets the value of `GTK_PRINT_SETTINGS_REVERSE`.
        get {
            let rv = ((gtk_print_settings_get_reverse(print_settings_ptr)) != 0)
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_REVERSE`.
        nonmutating set {
            gtk_print_settings_set_reverse(print_settings_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_SCALE`.
    @inlinable var scale: CDouble {
        /// Gets the value of `GTK_PRINT_SETTINGS_SCALE`.
        get {
            let rv = gtk_print_settings_get_scale(print_settings_ptr)
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_SCALE`.
        nonmutating set {
            gtk_print_settings_set_scale(print_settings_ptr, newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_USE_COLOR`.
    @inlinable var useColor: Bool {
        /// Gets the value of `GTK_PRINT_SETTINGS_USE_COLOR`.
        get {
            let rv = ((gtk_print_settings_get_use_color(print_settings_ptr)) != 0)
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_USE_COLOR`.
        nonmutating set {
            gtk_print_settings_set_use_color(print_settings_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - ProgressBar Class

/// The `ProgressBarProtocol` protocol exposes the methods and properties of an underlying `GtkProgressBar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProgressBar`.
/// Alternatively, use `ProgressBarRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkProgressBar` is typically used to display the progress of a long
/// running operation. It provides a visual clue that processing is underway.
/// The GtkProgressBar can be used in two different modes: percentage mode
/// and activity mode.
/// 
/// When an application can determine how much work needs to take place
/// (e.g. read a fixed number of bytes from a file) and can monitor its
/// progress, it can use the GtkProgressBar in percentage mode and the
/// user sees a growing bar indicating the percentage of the work that
/// has been completed. In this mode, the application is required to call
/// `gtk_progress_bar_set_fraction()` periodically to update the progress bar.
/// 
/// When an application has no accurate way of knowing the amount of work
/// to do, it can use the `GtkProgressBar` in activity mode, which shows
/// activity by a block moving back and forth within the progress area. In
/// this mode, the application is required to call `gtk_progress_bar_pulse()`
/// periodically to update the progress bar.
/// 
/// There is quite a bit of flexibility provided to control the appearance
/// of the `GtkProgressBar`. Functions are provided to control the orientation
/// of the bar, optional text can be displayed along with the bar, and the
/// step size used in activity mode can be set.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// progressbar[.osd]
/// ├── [text]
/// ╰── trough[.empty][.full]
///     ╰── progress[.pulse]
/// ```
/// 
/// GtkProgressBar has a main CSS node with name progressbar and subnodes with
/// names text and trough, of which the latter has a subnode named progress. The
/// text subnode is only present if text is shown. The progress subnode has the
/// style class .pulse when in activity mode. It gets the style classes .left,
/// .right, .top or .bottom added when the progress 'touches' the corresponding
/// end of the GtkProgressBar. The .osd class on the progressbar node is for use
/// in overlays like the one Epiphany has for page loading progress.
/// 
/// # Accessibility
/// 
/// GtkProgressBar uses the `GTK_ACCESSIBLE_ROLE_PROGRESS_BAR` role.
public protocol ProgressBarProtocol: WidgetProtocol, OrientableProtocol {
        /// Untyped pointer to the underlying `GtkProgressBar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkProgressBar` instance.
    var progress_bar_ptr: UnsafeMutablePointer<GtkProgressBar>! { get }

}

/// The `ProgressBarRef` type acts as a lightweight Swift reference to an underlying `GtkProgressBar` instance.
/// It exposes methods that can operate on this data type through `ProgressBarProtocol` conformance.
/// Use `ProgressBarRef` only as an `unowned` reference to an existing `GtkProgressBar` instance.
///
/// The `GtkProgressBar` is typically used to display the progress of a long
/// running operation. It provides a visual clue that processing is underway.
/// The GtkProgressBar can be used in two different modes: percentage mode
/// and activity mode.
/// 
/// When an application can determine how much work needs to take place
/// (e.g. read a fixed number of bytes from a file) and can monitor its
/// progress, it can use the GtkProgressBar in percentage mode and the
/// user sees a growing bar indicating the percentage of the work that
/// has been completed. In this mode, the application is required to call
/// `gtk_progress_bar_set_fraction()` periodically to update the progress bar.
/// 
/// When an application has no accurate way of knowing the amount of work
/// to do, it can use the `GtkProgressBar` in activity mode, which shows
/// activity by a block moving back and forth within the progress area. In
/// this mode, the application is required to call `gtk_progress_bar_pulse()`
/// periodically to update the progress bar.
/// 
/// There is quite a bit of flexibility provided to control the appearance
/// of the `GtkProgressBar`. Functions are provided to control the orientation
/// of the bar, optional text can be displayed along with the bar, and the
/// step size used in activity mode can be set.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// progressbar[.osd]
/// ├── [text]
/// ╰── trough[.empty][.full]
///     ╰── progress[.pulse]
/// ```
/// 
/// GtkProgressBar has a main CSS node with name progressbar and subnodes with
/// names text and trough, of which the latter has a subnode named progress. The
/// text subnode is only present if text is shown. The progress subnode has the
/// style class .pulse when in activity mode. It gets the style classes .left,
/// .right, .top or .bottom added when the progress 'touches' the corresponding
/// end of the GtkProgressBar. The .osd class on the progressbar node is for use
/// in overlays like the one Epiphany has for page loading progress.
/// 
/// # Accessibility
/// 
/// GtkProgressBar uses the `GTK_ACCESSIBLE_ROLE_PROGRESS_BAR` role.
public struct ProgressBarRef: ProgressBarProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkProgressBar` instance.
    /// For type-safe access, use the generated, typed pointer `progress_bar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ProgressBarRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkProgressBar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkProgressBar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkProgressBar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkProgressBar>?) {
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

    /// Reference intialiser for a related type that implements `ProgressBarProtocol`
    @inlinable init<T: ProgressBarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ProgressBarProtocol>(_ other: T) -> ProgressBarRef { ProgressBarRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkProgressBar`.
    @inlinable init() {
        let rv = gtk_progress_bar_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ProgressBar` type acts as a reference-counted owner of an underlying `GtkProgressBar` instance.
/// It provides the methods that can operate on this data type through `ProgressBarProtocol` conformance.
/// Use `ProgressBar` as a strong reference or owner of a `GtkProgressBar` instance.
///
/// The `GtkProgressBar` is typically used to display the progress of a long
/// running operation. It provides a visual clue that processing is underway.
/// The GtkProgressBar can be used in two different modes: percentage mode
/// and activity mode.
/// 
/// When an application can determine how much work needs to take place
/// (e.g. read a fixed number of bytes from a file) and can monitor its
/// progress, it can use the GtkProgressBar in percentage mode and the
/// user sees a growing bar indicating the percentage of the work that
/// has been completed. In this mode, the application is required to call
/// `gtk_progress_bar_set_fraction()` periodically to update the progress bar.
/// 
/// When an application has no accurate way of knowing the amount of work
/// to do, it can use the `GtkProgressBar` in activity mode, which shows
/// activity by a block moving back and forth within the progress area. In
/// this mode, the application is required to call `gtk_progress_bar_pulse()`
/// periodically to update the progress bar.
/// 
/// There is quite a bit of flexibility provided to control the appearance
/// of the `GtkProgressBar`. Functions are provided to control the orientation
/// of the bar, optional text can be displayed along with the bar, and the
/// step size used in activity mode can be set.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// progressbar[.osd]
/// ├── [text]
/// ╰── trough[.empty][.full]
///     ╰── progress[.pulse]
/// ```
/// 
/// GtkProgressBar has a main CSS node with name progressbar and subnodes with
/// names text and trough, of which the latter has a subnode named progress. The
/// text subnode is only present if text is shown. The progress subnode has the
/// style class .pulse when in activity mode. It gets the style classes .left,
/// .right, .top or .bottom added when the progress 'touches' the corresponding
/// end of the GtkProgressBar. The .osd class on the progressbar node is for use
/// in overlays like the one Epiphany has for page loading progress.
/// 
/// # Accessibility
/// 
/// GtkProgressBar uses the `GTK_ACCESSIBLE_ROLE_PROGRESS_BAR` role.
open class ProgressBar: Widget, ProgressBarProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProgressBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkProgressBar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProgressBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkProgressBar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProgressBar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProgressBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProgressBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkProgressBar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProgressBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkProgressBar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkProgressBar`.
    /// i.e., ownership is transferred to the `ProgressBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkProgressBar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ProgressBarProtocol`
    /// Will retain `GtkProgressBar`.
    /// - Parameter other: an instance of a related type that implements `ProgressBarProtocol`
    @inlinable public init<T: ProgressBarProtocol>(progressBar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkProgressBar`.
    @inlinable public init() {
        let rv = gtk_progress_bar_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ProgressBarPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// The preferred place to ellipsize the string, if the progress bar does
    /// not have enough room to display the entire string, specified as a
    /// `PangoEllipsizeMode`.
    /// 
    /// Note that setting this property to a value other than
    /// `PANGO_ELLIPSIZE_NONE` has the side-effect that the progress bar requests
    /// only enough space to display the ellipsis ("..."). Another means to set a
    /// progress bar's width is `gtk_widget_set_size_request()`.
    case ellipsize = "ellipsize"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    case fraction = "fraction"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case inverted = "inverted"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case pulseStep = "pulse-step"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// Sets whether the progress bar will show a text in addition
    /// to the bar itself. The shown text is either the value of
    /// the `GtkProgressBar:text` property or, if that is `nil`,
    /// the `GtkProgressBar:fraction` value, as a percentage.
    /// 
    /// To make a progress bar that is styled and sized suitably for
    /// showing text (even if the actual text is blank), set
    /// `GtkProgressBar:show`-text to `true` and `GtkProgressBar:text`
    /// to the empty string (not `nil`).
    case showText = "show-text"
    case text = "text"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
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
}

public extension ProgressBarProtocol {
    /// Bind a `ProgressBarPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ProgressBarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ProgressBar property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ProgressBarPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ProgressBar property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ProgressBarPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: ProgressBar has no signals// MARK: ProgressBar Class: ProgressBarProtocol extension (methods and fields)
public extension ProgressBarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkProgressBar` instance.
    @inlinable var progress_bar_ptr: UnsafeMutablePointer<GtkProgressBar>! { return ptr?.assumingMemoryBound(to: GtkProgressBar.self) }

    /// Returns the ellipsizing position of the progress bar.
    /// See `gtk_progress_bar_set_ellipsize()`.
    @inlinable func getEllipsize() -> PangoEllipsizeMode {
        let rv = gtk_progress_bar_get_ellipsize(progress_bar_ptr)
        return rv
    }

    /// Returns the current fraction of the task that’s been completed.
    @inlinable func getFraction() -> CDouble {
        let rv = gtk_progress_bar_get_fraction(progress_bar_ptr)
        return rv
    }

    /// Gets the value set by `gtk_progress_bar_set_inverted()`.
    @inlinable func getInverted() -> Bool {
        let rv = ((gtk_progress_bar_get_inverted(progress_bar_ptr)) != 0)
        return rv
    }

    /// Retrieves the pulse step set with `gtk_progress_bar_set_pulse_step()`.
    @inlinable func getPulseStep() -> CDouble {
        let rv = gtk_progress_bar_get_pulse_step(progress_bar_ptr)
        return rv
    }

    /// Gets the value of the `GtkProgressBar:show`-text property.
    /// See `gtk_progress_bar_set_show_text()`.
    @inlinable func getShowText() -> Bool {
        let rv = ((gtk_progress_bar_get_show_text(progress_bar_ptr)) != 0)
        return rv
    }

    /// Retrieves the text that is displayed with the progress bar,
    /// if any, otherwise `nil`. The return value is a reference
    /// to the text, not a copy of it, so will become invalid
    /// if you change the text in the progress bar.
    @inlinable func getText() -> String! {
        let rv = gtk_progress_bar_get_text(progress_bar_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Indicates that some progress has been made, but you don’t know how much.
    /// Causes the progress bar to enter “activity mode,” where a block
    /// bounces back and forth. Each call to `gtk_progress_bar_pulse()`
    /// causes the block to move by a little bit (the amount of movement
    /// per pulse is determined by `gtk_progress_bar_set_pulse_step()`).
    @inlinable func pulse() {
        gtk_progress_bar_pulse(progress_bar_ptr)
    
    }

    /// Sets the mode used to ellipsize (add an ellipsis: "...") the
    /// text if there is not enough space to render the entire string.
    @inlinable func setEllipsize(mode: PangoEllipsizeMode) {
        gtk_progress_bar_set_ellipsize(progress_bar_ptr, mode)
    
    }

    /// Causes the progress bar to “fill in” the given fraction
    /// of the bar. The fraction should be between 0.0 and 1.0,
    /// inclusive.
    @inlinable func set(fraction: CDouble) {
        gtk_progress_bar_set_fraction(progress_bar_ptr, fraction)
    
    }

    /// Progress bars normally grow from top to bottom or left to right.
    /// Inverted progress bars grow in the opposite direction.
    @inlinable func set(inverted: Bool) {
        gtk_progress_bar_set_inverted(progress_bar_ptr, gboolean((inverted) ? 1 : 0))
    
    }

    /// Sets the fraction of total progress bar length to move the
    /// bouncing block for each call to `gtk_progress_bar_pulse()`.
    @inlinable func setPulseStep(fraction: CDouble) {
        gtk_progress_bar_set_pulse_step(progress_bar_ptr, fraction)
    
    }

    /// Sets whether the progress bar will show text next to the bar.
    /// The shown text is either the value of the `GtkProgressBar:text`
    /// property or, if that is `nil`, the `GtkProgressBar:fraction` value,
    /// as a percentage.
    /// 
    /// To make a progress bar that is styled and sized suitably for containing
    /// text (even if the actual text is blank), set `GtkProgressBar:show`-text to
    /// `true` and `GtkProgressBar:text` to the empty string (not `nil`).
    @inlinable func set(showText: Bool) {
        gtk_progress_bar_set_show_text(progress_bar_ptr, gboolean((showText) ? 1 : 0))
    
    }

    /// Causes the given `text` to appear next to the progress bar.
    /// 
    /// If `text` is `nil` and `GtkProgressBar:show`-text is `true`, the current
    /// value of `GtkProgressBar:fraction` will be displayed as a percentage.
    /// 
    /// If `text` is non-`nil` and `GtkProgressBar:show`-text is `true`, the text
    /// will be displayed. In this case, it will not display the progress
    /// percentage. If `text` is the empty string, the progress bar will still
    /// be styled and sized suitably for containing text, as long as
    /// `GtkProgressBar:show`-text is `true`.
    @inlinable func set(text: UnsafePointer<CChar>? = nil) {
        gtk_progress_bar_set_text(progress_bar_ptr, text)
    
    }
    /// The preferred place to ellipsize the string, if the progress bar does
    /// not have enough room to display the entire string, specified as a
    /// `PangoEllipsizeMode`.
    /// 
    /// Note that setting this property to a value other than
    /// `PANGO_ELLIPSIZE_NONE` has the side-effect that the progress bar requests
    /// only enough space to display the ellipsis ("..."). Another means to set a
    /// progress bar's width is `gtk_widget_set_size_request()`.
    @inlinable var ellipsize: PangoEllipsizeMode {
        /// Returns the ellipsizing position of the progress bar.
        /// See `gtk_progress_bar_set_ellipsize()`.
        get {
            let rv = gtk_progress_bar_get_ellipsize(progress_bar_ptr)
            return rv
        }
        /// Sets the mode used to ellipsize (add an ellipsis: "...") the
        /// text if there is not enough space to render the entire string.
        nonmutating set {
            gtk_progress_bar_set_ellipsize(progress_bar_ptr, newValue)
        }
    }

    @inlinable var fraction: CDouble {
        /// Returns the current fraction of the task that’s been completed.
        get {
            let rv = gtk_progress_bar_get_fraction(progress_bar_ptr)
            return rv
        }
        /// Causes the progress bar to “fill in” the given fraction
        /// of the bar. The fraction should be between 0.0 and 1.0,
        /// inclusive.
        nonmutating set {
            gtk_progress_bar_set_fraction(progress_bar_ptr, newValue)
        }
    }

    @inlinable var inverted: Bool {
        /// Gets the value set by `gtk_progress_bar_set_inverted()`.
        get {
            let rv = ((gtk_progress_bar_get_inverted(progress_bar_ptr)) != 0)
            return rv
        }
        /// Progress bars normally grow from top to bottom or left to right.
        /// Inverted progress bars grow in the opposite direction.
        nonmutating set {
            gtk_progress_bar_set_inverted(progress_bar_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the pulse step set with `gtk_progress_bar_set_pulse_step()`.
    @inlinable var pulseStep: CDouble {
        /// Retrieves the pulse step set with `gtk_progress_bar_set_pulse_step()`.
        get {
            let rv = gtk_progress_bar_get_pulse_step(progress_bar_ptr)
            return rv
        }
        /// Sets the fraction of total progress bar length to move the
        /// bouncing block for each call to `gtk_progress_bar_pulse()`.
        nonmutating set {
            gtk_progress_bar_set_pulse_step(progress_bar_ptr, newValue)
        }
    }

    /// Gets the value of the `GtkProgressBar:show`-text property.
    /// See `gtk_progress_bar_set_show_text()`.
    @inlinable var showText: Bool {
        /// Gets the value of the `GtkProgressBar:show`-text property.
        /// See `gtk_progress_bar_set_show_text()`.
        get {
            let rv = ((gtk_progress_bar_get_show_text(progress_bar_ptr)) != 0)
            return rv
        }
        /// Sets whether the progress bar will show text next to the bar.
        /// The shown text is either the value of the `GtkProgressBar:text`
        /// property or, if that is `nil`, the `GtkProgressBar:fraction` value,
        /// as a percentage.
        /// 
        /// To make a progress bar that is styled and sized suitably for containing
        /// text (even if the actual text is blank), set `GtkProgressBar:show`-text to
        /// `true` and `GtkProgressBar:text` to the empty string (not `nil`).
        nonmutating set {
            gtk_progress_bar_set_show_text(progress_bar_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var text: String! {
        /// Retrieves the text that is displayed with the progress bar,
        /// if any, otherwise `nil`. The return value is a reference
        /// to the text, not a copy of it, so will become invalid
        /// if you change the text in the progress bar.
        get {
            let rv = gtk_progress_bar_get_text(progress_bar_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Causes the given `text` to appear next to the progress bar.
        /// 
        /// If `text` is `nil` and `GtkProgressBar:show`-text is `true`, the current
        /// value of `GtkProgressBar:fraction` will be displayed as a percentage.
        /// 
        /// If `text` is non-`nil` and `GtkProgressBar:show`-text is `true`, the text
        /// will be displayed. In this case, it will not display the progress
        /// percentage. If `text` is the empty string, the progress bar will still
        /// be styled and sized suitably for containing text, as long as
        /// `GtkProgressBar:show`-text is `true`.
        nonmutating set {
            gtk_progress_bar_set_text(progress_bar_ptr, newValue)
        }
    }


}



// MARK: - PropertyExpression Class

/// The `PropertyExpressionProtocol` protocol exposes the methods and properties of an underlying `GtkPropertyExpression` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PropertyExpression`.
/// Alternatively, use `PropertyExpressionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PropertyExpressionProtocol: ExpressionProtocol {
        /// Untyped pointer to the underlying `GtkPropertyExpression` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPropertyExpression` instance.
    var property_expression_ptr: UnsafeMutablePointer<GtkPropertyExpression>! { get }

}

/// The `PropertyExpressionRef` type acts as a lightweight Swift reference to an underlying `GtkPropertyExpression` instance.
/// It exposes methods that can operate on this data type through `PropertyExpressionProtocol` conformance.
/// Use `PropertyExpressionRef` only as an `unowned` reference to an existing `GtkPropertyExpression` instance.
///

public struct PropertyExpressionRef: PropertyExpressionProtocol {
        /// Untyped pointer to the underlying `GtkPropertyExpression` instance.
    /// For type-safe access, use the generated, typed pointer `property_expression_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PropertyExpressionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPropertyExpression>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPropertyExpression>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPropertyExpression>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPropertyExpression>?) {
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

    /// Reference intialiser for a related type that implements `PropertyExpressionProtocol`
    @inlinable init<T: PropertyExpressionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyExpressionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyExpressionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyExpressionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyExpressionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyExpressionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates an expression that looks up a property via the
    /// given `expression` or the `this` argument when `expression`
    /// is `nil`.
    /// 
    /// If the resulting object conforms to `this_type`, its property
    /// named `property_name` will be queried.
    /// Otherwise, this expression's evaluation will fail.
    /// 
    /// The given `this_type` must have a property with `property_name`.
    @inlinable init<ExpressionT: ExpressionProtocol>( thisType: GType, expression: ExpressionT?, propertyName: UnsafePointer<CChar>!) {
        let rv = gtk_property_expression_new(thisType, expression?.expression_ptr, propertyName)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates an expression that looks up a property via the
    /// given `expression` or the `this` argument when `expression`
    /// is `nil`.
    /// 
    /// If the resulting object conforms to `this_type`, its
    /// property specified by `pspec` will be queried.
    /// Otherwise, this expression's evaluation will fail.
    @inlinable init<ExpressionT: ExpressionProtocol, ParamSpecT: GLibObject.ParamSpecProtocol>(pspec expression: ExpressionT?, pspec: ParamSpecT) {
        let rv = gtk_property_expression_new_for_pspec(expression?.expression_ptr, pspec.param_spec_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates an expression that looks up a property via the
    /// given `expression` or the `this` argument when `expression`
    /// is `nil`.
    /// 
    /// If the resulting object conforms to `this_type`, its
    /// property specified by `pspec` will be queried.
    /// Otherwise, this expression's evaluation will fail.
    @inlinable static func newFor<ExpressionT: ExpressionProtocol, ParamSpecT: GLibObject.ParamSpecProtocol>(pspec expression: ExpressionT?, pspec: ParamSpecT) -> ExpressionRef! {
        guard let rv = ExpressionRef(gconstpointer: gconstpointer(gtk_property_expression_new_for_pspec(expression?.expression_ptr, pspec.param_spec_ptr))) else { return nil }
        return rv
    }

    /// Gets the expression specifying the object of
    /// a property expression.
    @inlinable static func get<PropertyExpressionT: PropertyExpressionProtocol>(expression: PropertyExpressionT) -> ExpressionRef! {
        guard let rv = ExpressionRef(gconstpointer: gconstpointer(gtk_property_expression_get_expression(expression.expression_ptr))) else { return nil }
        return rv
    }
}

/// The `PropertyExpression` type acts as a reference-counted owner of an underlying `GtkPropertyExpression` instance.
/// It provides the methods that can operate on this data type through `PropertyExpressionProtocol` conformance.
/// Use `PropertyExpression` as a strong reference or owner of a `GtkPropertyExpression` instance.
///

open class PropertyExpression: Expression, PropertyExpressionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PropertyExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPropertyExpression>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PropertyExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPropertyExpression>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PropertyExpression` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PropertyExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PropertyExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPropertyExpression>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PropertyExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPropertyExpression>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkPropertyExpression`.
    /// i.e., ownership is transferred to the `PropertyExpression` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPropertyExpression>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PropertyExpressionProtocol`
    /// Will retain `GtkPropertyExpression`.
    /// - Parameter other: an instance of a related type that implements `PropertyExpressionProtocol`
    @inlinable public init<T: PropertyExpressionProtocol>(propertyExpression other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyExpressionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyExpressionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyExpressionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyExpressionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyExpressionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyExpressionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyExpressionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyExpressionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates an expression that looks up a property via the
    /// given `expression` or the `this` argument when `expression`
    /// is `nil`.
    /// 
    /// If the resulting object conforms to `this_type`, its property
    /// named `property_name` will be queried.
    /// Otherwise, this expression's evaluation will fail.
    /// 
    /// The given `this_type` must have a property with `property_name`.
    @inlinable public init<ExpressionT: ExpressionProtocol>( thisType: GType, expression: ExpressionT?, propertyName: UnsafePointer<CChar>!) {
        let rv = gtk_property_expression_new(thisType, expression?.expression_ptr, propertyName)
        super.init(gpointer: gpointer(rv))
    }

    /// Creates an expression that looks up a property via the
    /// given `expression` or the `this` argument when `expression`
    /// is `nil`.
    /// 
    /// If the resulting object conforms to `this_type`, its
    /// property specified by `pspec` will be queried.
    /// Otherwise, this expression's evaluation will fail.
    @inlinable public init<ExpressionT: ExpressionProtocol, ParamSpecT: GLibObject.ParamSpecProtocol>(pspec expression: ExpressionT?, pspec: ParamSpecT) {
        let rv = gtk_property_expression_new_for_pspec(expression?.expression_ptr, pspec.param_spec_ptr)
        super.init(gpointer: gpointer(rv))
    }

    /// Creates an expression that looks up a property via the
    /// given `expression` or the `this` argument when `expression`
    /// is `nil`.
    /// 
    /// If the resulting object conforms to `this_type`, its
    /// property specified by `pspec` will be queried.
    /// Otherwise, this expression's evaluation will fail.
    @inlinable public static func newFor<ExpressionT: ExpressionProtocol, ParamSpecT: GLibObject.ParamSpecProtocol>(pspec expression: ExpressionT?, pspec: ParamSpecT) -> Expression! {
        guard let rv = Expression(gconstpointer: gconstpointer(gtk_property_expression_new_for_pspec(expression?.expression_ptr, pspec.param_spec_ptr))) else { return nil }
        return rv
    }

    /// Gets the expression specifying the object of
    /// a property expression.
    @inlinable public static func get<PropertyExpressionT: PropertyExpressionProtocol>(expression: PropertyExpressionT) -> Expression! {
        guard let rv = Expression(gconstpointer: gconstpointer(gtk_property_expression_get_expression(expression.expression_ptr))) else { return nil }
        return rv
    }

}

// MARK: no PropertyExpression properties

// MARK: PropertyExpression has no signals// MARK: PropertyExpression Class: PropertyExpressionProtocol extension (methods and fields)
public extension PropertyExpressionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPropertyExpression` instance.
    @inlinable var property_expression_ptr: UnsafeMutablePointer<GtkPropertyExpression>! { return ptr?.assumingMemoryBound(to: GtkPropertyExpression.self) }

    /// Gets the expression specifying the object of
    /// a property expression.
    @inlinable func getExpression() -> ExpressionRef! {
        guard let rv = ExpressionRef(gconstpointer: gconstpointer(gtk_property_expression_get_expression(expression_ptr))) else { return nil }
        return rv
    }

    /// Gets the `GParamSpec` specifying the property of
    /// a property expression.
    @inlinable func getPspec() -> GLibObject.ParamSpecRef! {
        let rv = GLibObject.ParamSpecRef(gtk_property_expression_get_pspec(expression_ptr))
        return rv
    }
    /// Gets the expression specifying the object of
    /// a property expression.
    @inlinable var expression: ExpressionRef! {
        /// Gets the expression specifying the object of
        /// a property expression.
        get {
            guard let rv = ExpressionRef(gconstpointer: gconstpointer(gtk_property_expression_get_expression(expression_ptr))) else { return nil }
            return rv
        }
    }

    /// Gets the `GParamSpec` specifying the property of
    /// a property expression.
    @inlinable var pspec: GLibObject.ParamSpecRef! {
        /// Gets the `GParamSpec` specifying the property of
        /// a property expression.
        get {
            let rv = GLibObject.ParamSpecRef(gtk_property_expression_get_pspec(expression_ptr))
            return rv
        }
    }


}



// MARK: - Range Class

/// The `RangeProtocol` protocol exposes the methods and properties of an underlying `GtkRange` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Range`.
/// Alternatively, use `RangeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkRange` is the common base class for widgets which visualize an
/// adjustment, e.g `GtkScale` or `GtkScrollbar`.
/// 
/// Apart from signals for monitoring the parameters of the adjustment,
/// `GtkRange` provides properties and methods for setting a
/// “fill level” on range widgets. See `gtk_range_set_fill_level()`.
public protocol RangeProtocol: WidgetProtocol, OrientableProtocol {
        /// Untyped pointer to the underlying `GtkRange` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRange` instance.
    var range_ptr: UnsafeMutablePointer<GtkRange>! { get }

}

/// The `RangeRef` type acts as a lightweight Swift reference to an underlying `GtkRange` instance.
/// It exposes methods that can operate on this data type through `RangeProtocol` conformance.
/// Use `RangeRef` only as an `unowned` reference to an existing `GtkRange` instance.
///
/// `GtkRange` is the common base class for widgets which visualize an
/// adjustment, e.g `GtkScale` or `GtkScrollbar`.
/// 
/// Apart from signals for monitoring the parameters of the adjustment,
/// `GtkRange` provides properties and methods for setting a
/// “fill level” on range widgets. See `gtk_range_set_fill_level()`.
public struct RangeRef: RangeProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRange` instance.
    /// For type-safe access, use the generated, typed pointer `range_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RangeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRange>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRange>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRange>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRange>?) {
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

    /// Reference intialiser for a related type that implements `RangeProtocol`
    @inlinable init<T: RangeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RangeProtocol>(_ other: T) -> RangeRef { RangeRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Range` type acts as a reference-counted owner of an underlying `GtkRange` instance.
/// It provides the methods that can operate on this data type through `RangeProtocol` conformance.
/// Use `Range` as a strong reference or owner of a `GtkRange` instance.
///
/// `GtkRange` is the common base class for widgets which visualize an
/// adjustment, e.g `GtkScale` or `GtkScrollbar`.
/// 
/// Apart from signals for monitoring the parameters of the adjustment,
/// `GtkRange` provides properties and methods for setting a
/// “fill level” on range widgets. See `gtk_range_set_fill_level()`.
open class Range: Widget, RangeProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Range` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRange>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Range` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRange>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Range` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Range` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Range` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRange>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Range` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRange>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRange`.
    /// i.e., ownership is transferred to the `Range` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRange>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RangeProtocol`
    /// Will retain `GtkRange`.
    /// - Parameter other: an instance of a related type that implements `RangeProtocol`
    @inlinable public init<T: RangeProtocol>(range other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum RangePropertyName: String, PropertyNameProtocol {
    case adjustment = "adjustment"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// The fill level (e.g. prebuffering of a network stream).
    /// See `gtk_range_set_fill_level()`.
    case fillLevel = "fill-level"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case inverted = "inverted"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The restrict-to-fill-level property controls whether slider
    /// movement is restricted to an upper boundary set by the
    /// fill level. See `gtk_range_set_restrict_to_fill_level()`.
    case restrictToFillLevel = "restrict-to-fill-level"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The number of digits to round the value to when
    /// it changes, or -1. See `GtkRange::change`-value.
    case roundDigits = "round-digits"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The show-fill-level property controls whether fill level indicator
    /// graphics are displayed on the trough. See
    /// `gtk_range_set_show_fill_level()`.
    case showFillLevel = "show-fill-level"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
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
}

public extension RangeProtocol {
    /// Bind a `RangePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RangePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Range property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RangePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Range property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RangePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Range
public extension RangeProtocol {
    /// Emitted before clamping a value, to give the application a
    /// chance to adjust the bounds.
    /// - Note: Representation of signal named `adjust-bounds`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter value: the value before we clamp
    @discardableResult
    func onAdjustBounds(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ value: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), Double(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "adjust-bounds", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `GtkRange::change`-value signal is emitted when a scroll action is
    /// performed on a range.  It allows an application to determine the
    /// type of scroll event that occurred and the resultant new value.
    /// The application can handle the event itself and return `true` to
    /// prevent further processing.  Or, by returning `false`, it can pass
    /// the event to other handlers until the default GTK handler is
    /// reached.
    /// 
    /// The value parameter is unrounded.  An application that overrides
    /// the GtkRange`change`-value signal is responsible for clamping the
    /// value to the desired number of decimal digits; the default GTK
    /// handler clamps the value based on `GtkRange:round`-digits.
    /// - Note: Representation of signal named `change-value`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` to prevent other handlers from being invoked for     the signal, `false` to propagate the signal further
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter scroll: the type of scroll action that was performed
    /// - Parameter value: the new value resulting from the scroll action
    @discardableResult
    func onChangeValue(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ scroll: ScrollType, _ value: Double) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<RangeRef, ScrollType, Double, Bool>
        let cCallback: @convention(c) (gpointer, UInt32, gdouble, gpointer) -> gboolean = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(RangeRef(raw: unownedSelf), ScrollType(arg1), Double(arg2))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "change-value", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Virtual function that moves the slider. Used for keybindings.
    /// - Note: Representation of signal named `move-slider`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter step: how to move the slider
    @discardableResult
    func onMoveSlider(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ step: ScrollType) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ScrollType, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ScrollType(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "move-slider", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted when the range value changes.
    /// - Note: Representation of signal named `value-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onValueChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<RangeRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "value-changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::adjustment`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAdjustment(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::adjustment", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::fill-level`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyFillLevel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::fill-level", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::inverted`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyInverted(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::inverted", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::restrict-to-fill-level`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyRestrictToFillLevel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::restrict-to-fill-level", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::round-digits`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyRoundDigits(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::round-digits", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::show-fill-level`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowFillLevel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-fill-level", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Range Class: RangeProtocol extension (methods and fields)
public extension RangeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRange` instance.
    @inlinable var range_ptr: UnsafeMutablePointer<GtkRange>! { return ptr?.assumingMemoryBound(to: GtkRange.self) }

    /// Get the `GtkAdjustment` which is the “model” object for `GtkRange`.
    /// See `gtk_range_set_adjustment()` for details.
    /// The return value does not have a reference added, so should not
    /// be unreferenced.
    @inlinable func getAdjustment() -> AdjustmentRef! {
        let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_range_get_adjustment(range_ptr)))
        return rv
    }

    /// Gets the current position of the fill level indicator.
    @inlinable func getFillLevel() -> CDouble {
        let rv = gtk_range_get_fill_level(range_ptr)
        return rv
    }

    /// Gets the value set by `gtk_range_set_flippable()`.
    @inlinable func getFlippable() -> Bool {
        let rv = ((gtk_range_get_flippable(range_ptr)) != 0)
        return rv
    }

    /// Gets the value set by `gtk_range_set_inverted()`.
    @inlinable func getInverted() -> Bool {
        let rv = ((gtk_range_get_inverted(range_ptr)) != 0)
        return rv
    }

    /// This function returns the area that contains the range’s trough,
    /// in coordinates relative to `range`'s origin.
    /// 
    /// This function is useful mainly for `GtkRange` subclasses.
    @inlinable func get<RectangleT: Gdk.RectangleProtocol>(rangeRect: RectangleT) {
        gtk_range_get_range_rect(range_ptr, rangeRect.rectangle_ptr)
    
    }

    /// Gets whether the range is restricted to the fill level.
    @inlinable func getRestrictToFillLevel() -> Bool {
        let rv = ((gtk_range_get_restrict_to_fill_level(range_ptr)) != 0)
        return rv
    }

    /// Gets the number of digits to round the value to when
    /// it changes. See `GtkRange::change`-value.
    @inlinable func getRoundDigits() -> Int {
        let rv = Int(gtk_range_get_round_digits(range_ptr))
        return rv
    }

    /// Gets whether the range displays the fill level graphically.
    @inlinable func getShowFillLevel() -> Bool {
        let rv = ((gtk_range_get_show_fill_level(range_ptr)) != 0)
        return rv
    }

    /// This function returns sliders range along the long dimension,
    /// in widget->window coordinates.
    /// 
    /// This function is useful mainly for `GtkRange` subclasses.
    @inlinable func getSliderRange(sliderStart: UnsafeMutablePointer<gint>! = nil, sliderEnd: UnsafeMutablePointer<gint>! = nil) {
        gtk_range_get_slider_range(range_ptr, sliderStart, sliderEnd)
    
    }

    /// This function is useful mainly for `GtkRange` subclasses.
    /// 
    /// See `gtk_range_set_slider_size_fixed()`.
    @inlinable func getSliderSizeFixed() -> Bool {
        let rv = ((gtk_range_get_slider_size_fixed(range_ptr)) != 0)
        return rv
    }

    /// Gets the current value of the range.
    @inlinable func getValue() -> CDouble {
        let rv = gtk_range_get_value(range_ptr)
        return rv
    }

    /// Sets the adjustment to be used as the “model” object for this range
    /// widget. The adjustment indicates the current range value, the
    /// minimum and maximum range values, the step/page increments used
    /// for keybindings and scrolling, and the page size. The page size
    /// is normally 0 for `GtkScale` and nonzero for `GtkScrollbar`, and
    /// indicates the size of the visible area of the widget being scrolled.
    /// The page size affects the size of the scrollbar slider.
    @inlinable func set<AdjustmentT: AdjustmentProtocol>(adjustment: AdjustmentT) {
        gtk_range_set_adjustment(range_ptr, adjustment.adjustment_ptr)
    
    }

    /// Set the new position of the fill level indicator.
    /// 
    /// The “fill level” is probably best described by its most prominent
    /// use case, which is an indicator for the amount of pre-buffering in
    /// a streaming media player. In that use case, the value of the range
    /// would indicate the current play position, and the fill level would
    /// be the position up to which the file/stream has been downloaded.
    /// 
    /// This amount of prebuffering can be displayed on the range’s trough
    /// and is themeable separately from the trough. To enable fill level
    /// display, use `gtk_range_set_show_fill_level()`. The range defaults
    /// to not showing the fill level.
    /// 
    /// Additionally, it’s possible to restrict the range’s slider position
    /// to values which are smaller than the fill level. This is controller
    /// by `gtk_range_set_restrict_to_fill_level()` and is by default
    /// enabled.
    @inlinable func set(fillLevel: CDouble) {
        gtk_range_set_fill_level(range_ptr, fillLevel)
    
    }

    /// If a range is flippable, it will switch its direction if it is
    /// horizontal and its direction is `GTK_TEXT_DIR_RTL`.
    /// 
    /// See `gtk_widget_get_direction()`.
    @inlinable func set(flippable: Bool) {
        gtk_range_set_flippable(range_ptr, gboolean((flippable) ? 1 : 0))
    
    }

    /// Sets the step and page sizes for the range.
    /// The step size is used when the user clicks the `GtkScrollbar`
    /// arrows or moves `GtkScale` via arrow keys. The page size
    /// is used for example when moving via Page Up or Page Down keys.
    @inlinable func setIncrements(step: CDouble, page: CDouble) {
        gtk_range_set_increments(range_ptr, step, page)
    
    }

    /// Ranges normally move from lower to higher values as the
    /// slider moves from top to bottom or left to right. Inverted
    /// ranges have higher values at the top or on the right rather than
    /// on the bottom or left.
    @inlinable func setInverted(setting: Bool) {
        gtk_range_set_inverted(range_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the allowable values in the `GtkRange`, and clamps the range
    /// value to be between `min` and `max`. (If the range has a non-zero
    /// page size, it is clamped between `min` and `max` - page-size.)
    @inlinable func setRange(min: CDouble, max: CDouble) {
        gtk_range_set_range(range_ptr, min, max)
    
    }

    /// Sets whether the slider is restricted to the fill level. See
    /// `gtk_range_set_fill_level()` for a general description of the fill
    /// level concept.
    @inlinable func set(restrictToFillLevel: Bool) {
        gtk_range_set_restrict_to_fill_level(range_ptr, gboolean((restrictToFillLevel) ? 1 : 0))
    
    }

    /// Sets the number of digits to round the value to when
    /// it changes. See `GtkRange::change`-value.
    @inlinable func set(roundDigits: Int) {
        gtk_range_set_round_digits(range_ptr, gint(roundDigits))
    
    }

    /// Sets whether a graphical fill level is show on the trough. See
    /// `gtk_range_set_fill_level()` for a general description of the fill
    /// level concept.
    @inlinable func set(showFillLevel: Bool) {
        gtk_range_set_show_fill_level(range_ptr, gboolean((showFillLevel) ? 1 : 0))
    
    }

    /// Sets whether the range’s slider has a fixed size, or a size that
    /// depends on its adjustment’s page size.
    /// 
    /// This function is useful mainly for `GtkRange` subclasses.
    @inlinable func setSlider(sizeFixed: Bool) {
        gtk_range_set_slider_size_fixed(range_ptr, gboolean((sizeFixed) ? 1 : 0))
    
    }

    /// Sets the current value of the range; if the value is outside the
    /// minimum or maximum range values, it will be clamped to fit inside
    /// them. The range emits the `GtkRange::value`-changed signal if the
    /// value changes.
    @inlinable func set(value: CDouble) {
        gtk_range_set_value(range_ptr, value)
    
    }
    @inlinable var adjustment: AdjustmentRef! {
        /// Get the `GtkAdjustment` which is the “model” object for `GtkRange`.
        /// See `gtk_range_set_adjustment()` for details.
        /// The return value does not have a reference added, so should not
        /// be unreferenced.
        get {
            let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_range_get_adjustment(range_ptr)))
            return rv
        }
        /// Sets the adjustment to be used as the “model” object for this range
        /// widget. The adjustment indicates the current range value, the
        /// minimum and maximum range values, the step/page increments used
        /// for keybindings and scrolling, and the page size. The page size
        /// is normally 0 for `GtkScale` and nonzero for `GtkScrollbar`, and
        /// indicates the size of the visible area of the widget being scrolled.
        /// The page size affects the size of the scrollbar slider.
        nonmutating set {
            gtk_range_set_adjustment(range_ptr, UnsafeMutablePointer<GtkAdjustment>(newValue?.adjustment_ptr))
        }
    }

    /// Gets the current position of the fill level indicator.
    @inlinable var fillLevel: CDouble {
        /// Gets the current position of the fill level indicator.
        get {
            let rv = gtk_range_get_fill_level(range_ptr)
            return rv
        }
        /// Set the new position of the fill level indicator.
        /// 
        /// The “fill level” is probably best described by its most prominent
        /// use case, which is an indicator for the amount of pre-buffering in
        /// a streaming media player. In that use case, the value of the range
        /// would indicate the current play position, and the fill level would
        /// be the position up to which the file/stream has been downloaded.
        /// 
        /// This amount of prebuffering can be displayed on the range’s trough
        /// and is themeable separately from the trough. To enable fill level
        /// display, use `gtk_range_set_show_fill_level()`. The range defaults
        /// to not showing the fill level.
        /// 
        /// Additionally, it’s possible to restrict the range’s slider position
        /// to values which are smaller than the fill level. This is controller
        /// by `gtk_range_set_restrict_to_fill_level()` and is by default
        /// enabled.
        nonmutating set {
            gtk_range_set_fill_level(range_ptr, newValue)
        }
    }

    /// Gets the value set by `gtk_range_set_flippable()`.
    @inlinable var flippable: Bool {
        /// Gets the value set by `gtk_range_set_flippable()`.
        get {
            let rv = ((gtk_range_get_flippable(range_ptr)) != 0)
            return rv
        }
        /// If a range is flippable, it will switch its direction if it is
        /// horizontal and its direction is `GTK_TEXT_DIR_RTL`.
        /// 
        /// See `gtk_widget_get_direction()`.
        nonmutating set {
            gtk_range_set_flippable(range_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var inverted: Bool {
        /// Gets the value set by `gtk_range_set_inverted()`.
        get {
            let rv = ((gtk_range_get_inverted(range_ptr)) != 0)
            return rv
        }
        /// Ranges normally move from lower to higher values as the
        /// slider moves from top to bottom or left to right. Inverted
        /// ranges have higher values at the top or on the right rather than
        /// on the bottom or left.
        nonmutating set {
            gtk_range_set_inverted(range_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets whether the range is restricted to the fill level.
    @inlinable var restrictToFillLevel: Bool {
        /// Gets whether the range is restricted to the fill level.
        get {
            let rv = ((gtk_range_get_restrict_to_fill_level(range_ptr)) != 0)
            return rv
        }
        /// Sets whether the slider is restricted to the fill level. See
        /// `gtk_range_set_fill_level()` for a general description of the fill
        /// level concept.
        nonmutating set {
            gtk_range_set_restrict_to_fill_level(range_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the number of digits to round the value to when
    /// it changes. See `GtkRange::change`-value.
    @inlinable var roundDigits: Int {
        /// Gets the number of digits to round the value to when
        /// it changes. See `GtkRange::change`-value.
        get {
            let rv = Int(gtk_range_get_round_digits(range_ptr))
            return rv
        }
        /// Sets the number of digits to round the value to when
        /// it changes. See `GtkRange::change`-value.
        nonmutating set {
            gtk_range_set_round_digits(range_ptr, gint(newValue))
        }
    }

    /// Gets whether the range displays the fill level graphically.
    @inlinable var showFillLevel: Bool {
        /// Gets whether the range displays the fill level graphically.
        get {
            let rv = ((gtk_range_get_show_fill_level(range_ptr)) != 0)
            return rv
        }
        /// Sets whether a graphical fill level is show on the trough. See
        /// `gtk_range_set_fill_level()` for a general description of the fill
        /// level concept.
        nonmutating set {
            gtk_range_set_show_fill_level(range_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// This function is useful mainly for `GtkRange` subclasses.
    /// 
    /// See `gtk_range_set_slider_size_fixed()`.
    @inlinable var sliderSizeFixed: Bool {
        /// This function is useful mainly for `GtkRange` subclasses.
        /// 
        /// See `gtk_range_set_slider_size_fixed()`.
        get {
            let rv = ((gtk_range_get_slider_size_fixed(range_ptr)) != 0)
            return rv
        }
        /// Sets whether the range’s slider has a fixed size, or a size that
        /// depends on its adjustment’s page size.
        /// 
        /// This function is useful mainly for `GtkRange` subclasses.
        nonmutating set {
            gtk_range_set_slider_size_fixed(range_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the current value of the range.
    @inlinable var value: CDouble {
        /// Gets the current value of the range.
        get {
            let rv = gtk_range_get_value(range_ptr)
            return rv
        }
        /// Sets the current value of the range; if the value is outside the
        /// minimum or maximum range values, it will be clamped to fit inside
        /// them. The range emits the `GtkRange::value`-changed signal if the
        /// value changes.
        nonmutating set {
            gtk_range_set_value(range_ptr, newValue)
        }
    }

    @inlinable var parentInstance: GtkWidget {
        get {
            let rv = range_ptr.pointee.parent_instance
            return rv
        }
    }

}



