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
/// ``` Margins ``` {`print`-margins}
/// The margins specified in this object are the “print margins”, i.e. the
/// parts of the page that the printer cannot print on. These are different
/// from the layout margins that a word processor uses; they are typically
/// used to determine the minimal size for the layout
/// margins.
/// 
/// To obtain a `GtkPageSetup` use gtk_page_setup_new() to get the defaults,
/// or use gtk_print_run_page_setup_dialog() to show the page setup dialog
/// and receive the resulting page setup.
/// 
/// ``` A page setup dialog
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
/// 
/// Printing support was added in GTK+ 2.10.
public protocol PageSetupProtocol: GLibObject.ObjectProtocol {
    /// Untyped pointer to the underlying `GtkPageSetup` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPageSetup` instance.
    var page_setup_ptr: UnsafeMutablePointer<GtkPageSetup> { get }
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
/// ``` Margins ``` {`print`-margins}
/// The margins specified in this object are the “print margins”, i.e. the
/// parts of the page that the printer cannot print on. These are different
/// from the layout margins that a word processor uses; they are typically
/// used to determine the minimal size for the layout
/// margins.
/// 
/// To obtain a `GtkPageSetup` use gtk_page_setup_new() to get the defaults,
/// or use gtk_print_run_page_setup_dialog() to show the page setup dialog
/// and receive the resulting page setup.
/// 
/// ``` A page setup dialog
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
/// 
/// Printing support was added in GTK+ 2.10.
public struct PageSetupRef: PageSetupProtocol {
    /// Untyped pointer to the underlying `GtkPageSetup` instance.
    /// For type-safe access, use the generated, typed pointer `page_setup_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PageSetupRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPageSetup>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PageSetupProtocol`
    init<T: PageSetupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkPageSetup`.
    init() {
        let rv = gtk_page_setup_new()
        self.init(cast(rv))
    }

    /// Reads the page setup from the file `file_name`. Returns a
    /// new `GtkPageSetup` object with the restored page setup,
    /// or `nil` if an error occurred. See gtk_page_setup_to_file().
    init(file file_name: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_page_setup_new_from_file(file_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Desrialize a page setup from an a{sv} variant in
    /// the format produced by gtk_page_setup_to_gvariant().
    init(gvariant variant: VariantProtocol) {
        let rv = gtk_page_setup_new_from_gvariant(cast(variant.ptr))
        self.init(cast(rv))
    }

    /// Reads the page setup from the group `group_name` in the key file
    /// `key_file`. Returns a new `GtkPageSetup` object with the restored
    /// page setup, or `nil` if an error occurred.
    init(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_page_setup_new_from_key_file(cast(key_file.ptr), group_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }
    /// Reads the page setup from the file `file_name`. Returns a
    /// new `GtkPageSetup` object with the restored page setup,
    /// or `nil` if an error occurred. See gtk_page_setup_to_file().
    static func newFrom(file file_name: UnsafePointer<gchar>) throws -> PageSetupRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_page_setup_new_from_file(file_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PageSetupRef(cast($0)) }
    }

    /// Desrialize a page setup from an a{sv} variant in
    /// the format produced by gtk_page_setup_to_gvariant().
    static func newFromG(gvariant variant: VariantProtocol) -> PageSetupRef! {
        let rv = gtk_page_setup_new_from_gvariant(cast(variant.ptr))
        return rv.map { PageSetupRef(cast($0)) }
    }

    /// Reads the page setup from the group `group_name` in the key file
    /// `key_file`. Returns a new `GtkPageSetup` object with the restored
    /// page setup, or `nil` if an error occurred.
    static func newFrom(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) throws -> PageSetupRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_page_setup_new_from_key_file(cast(key_file.ptr), group_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PageSetupRef(cast($0)) }
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
/// ``` Margins ``` {`print`-margins}
/// The margins specified in this object are the “print margins”, i.e. the
/// parts of the page that the printer cannot print on. These are different
/// from the layout margins that a word processor uses; they are typically
/// used to determine the minimal size for the layout
/// margins.
/// 
/// To obtain a `GtkPageSetup` use gtk_page_setup_new() to get the defaults,
/// or use gtk_print_run_page_setup_dialog() to show the page setup dialog
/// and receive the resulting page setup.
/// 
/// ``` A page setup dialog
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
/// 
/// Printing support was added in GTK+ 2.10.
open class PageSetup: GLibObject.Object, PageSetupProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PageSetup` instance.
    public init(_ op: UnsafeMutablePointer<GtkPageSetup>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `PageSetupProtocol`
    /// Will retain `GtkPageSetup`.
    public convenience init<T: PageSetupProtocol>(_ other: T) {
        self.init(cast(other.page_setup_ptr))
        g_object_ref(cast(page_setup_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPageSetup.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPageSetup.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPageSetup.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PageSetupProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPageSetup>(opaquePointer))
    }

    /// Creates a new `GtkPageSetup`.
    public convenience init() {
        let rv = gtk_page_setup_new()
        self.init(cast(rv))
    }

    /// Reads the page setup from the file `file_name`. Returns a
    /// new `GtkPageSetup` object with the restored page setup,
    /// or `nil` if an error occurred. See gtk_page_setup_to_file().
    public convenience init(file file_name: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_page_setup_new_from_file(file_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Desrialize a page setup from an a{sv} variant in
    /// the format produced by gtk_page_setup_to_gvariant().
    public convenience init(gvariant variant: VariantProtocol) {
        let rv = gtk_page_setup_new_from_gvariant(cast(variant.ptr))
        self.init(cast(rv))
    }

    /// Reads the page setup from the group `group_name` in the key file
    /// `key_file`. Returns a new `GtkPageSetup` object with the restored
    /// page setup, or `nil` if an error occurred.
    public convenience init(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_page_setup_new_from_key_file(cast(key_file.ptr), group_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Reads the page setup from the file `file_name`. Returns a
    /// new `GtkPageSetup` object with the restored page setup,
    /// or `nil` if an error occurred. See gtk_page_setup_to_file().
    public static func newFrom(file file_name: UnsafePointer<gchar>) throws -> PageSetup! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_page_setup_new_from_file(file_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PageSetup(cast($0)) }
    }

    /// Desrialize a page setup from an a{sv} variant in
    /// the format produced by gtk_page_setup_to_gvariant().
    public static func newFromG(gvariant variant: VariantProtocol) -> PageSetup! {
        let rv = gtk_page_setup_new_from_gvariant(cast(variant.ptr))
        return rv.map { PageSetup(cast($0)) }
    }

    /// Reads the page setup from the group `group_name` in the key file
    /// `key_file`. Returns a new `GtkPageSetup` object with the restored
    /// page setup, or `nil` if an error occurred.
    public static func newFrom(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) throws -> PageSetup! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_page_setup_new_from_key_file(cast(key_file.ptr), group_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PageSetup(cast($0)) }
    }

}

// MARK: - no PageSetup properties

public enum PageSetupSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension PageSetupProtocol {
    /// Connect a `PageSetupSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PageSetupSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(page_setup_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension PageSetupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPageSetup` instance.
    var page_setup_ptr: UnsafeMutablePointer<GtkPageSetup> { return ptr.assumingMemoryBound(to: GtkPageSetup.self) }

    /// Copies a `GtkPageSetup`.
    func copy() -> UnsafeMutablePointer<GtkPageSetup>! {
        let rv = gtk_page_setup_copy(cast(page_setup_ptr))
        return cast(rv)
    }

    /// Gets the bottom margin in units of `unit`.
    func getBottomMargin(unit: Unit) -> gdouble {
        let rv = gtk_page_setup_get_bottom_margin(cast(page_setup_ptr), unit)
        return rv
    }

    /// Gets the left margin in units of `unit`.
    func getLeftMargin(unit: Unit) -> gdouble {
        let rv = gtk_page_setup_get_left_margin(cast(page_setup_ptr), unit)
        return rv
    }

    /// Gets the page orientation of the `GtkPageSetup`.
    func getOrientation() -> GtkPageOrientation {
        let rv = gtk_page_setup_get_orientation(cast(page_setup_ptr))
        return rv
    }

    /// Returns the page height in units of `unit`.
    /// 
    /// Note that this function takes orientation and
    /// margins into consideration.
    /// See gtk_page_setup_get_paper_height().
    func getPageHeight(unit: Unit) -> gdouble {
        let rv = gtk_page_setup_get_page_height(cast(page_setup_ptr), unit)
        return rv
    }

    /// Returns the page width in units of `unit`.
    /// 
    /// Note that this function takes orientation and
    /// margins into consideration.
    /// See gtk_page_setup_get_paper_width().
    func getPageWidth(unit: Unit) -> gdouble {
        let rv = gtk_page_setup_get_page_width(cast(page_setup_ptr), unit)
        return rv
    }

    /// Returns the paper height in units of `unit`.
    /// 
    /// Note that this function takes orientation, but
    /// not margins into consideration.
    /// See gtk_page_setup_get_page_height().
    func getPaperHeight(unit: Unit) -> gdouble {
        let rv = gtk_page_setup_get_paper_height(cast(page_setup_ptr), unit)
        return rv
    }

    /// Gets the paper size of the `GtkPageSetup`.
    func getPaperSize() -> UnsafeMutablePointer<GtkPaperSize>! {
        let rv = gtk_page_setup_get_paper_size(cast(page_setup_ptr))
        return cast(rv)
    }

    /// Returns the paper width in units of `unit`.
    /// 
    /// Note that this function takes orientation, but
    /// not margins into consideration.
    /// See gtk_page_setup_get_page_width().
    func getPaperWidth(unit: Unit) -> gdouble {
        let rv = gtk_page_setup_get_paper_width(cast(page_setup_ptr), unit)
        return rv
    }

    /// Gets the right margin in units of `unit`.
    func getRightMargin(unit: Unit) -> gdouble {
        let rv = gtk_page_setup_get_right_margin(cast(page_setup_ptr), unit)
        return rv
    }

    /// Gets the top margin in units of `unit`.
    func getTopMargin(unit: Unit) -> gdouble {
        let rv = gtk_page_setup_get_top_margin(cast(page_setup_ptr), unit)
        return rv
    }

    /// Reads the page setup from the file `file_name`.
    /// See gtk_page_setup_to_file().
    func loadFile(fileName file_name: UnsafePointer<CChar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_page_setup_load_file(cast(page_setup_ptr), file_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Reads the page setup from the group `group_name` in the key file
    /// `key_file`.
    func load(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_page_setup_load_key_file(cast(page_setup_ptr), cast(key_file.ptr), group_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets the bottom margin of the `GtkPageSetup`.
    func setBottom(margin: gdouble, unit: Unit) {
        gtk_page_setup_set_bottom_margin(cast(page_setup_ptr), margin, unit)
    
    }

    /// Sets the left margin of the `GtkPageSetup`.
    func setLeft(margin: gdouble, unit: Unit) {
        gtk_page_setup_set_left_margin(cast(page_setup_ptr), margin, unit)
    
    }

    /// Sets the page orientation of the `GtkPageSetup`.
    func set(orientation: PageOrientation) {
        gtk_page_setup_set_orientation(cast(page_setup_ptr), orientation)
    
    }

    /// Sets the paper size of the `GtkPageSetup` without
    /// changing the margins. See
    /// gtk_page_setup_set_paper_size_and_default_margins().
    func setPaper(size: PaperSizeProtocol) {
        gtk_page_setup_set_paper_size(cast(page_setup_ptr), cast(size.ptr))
    
    }

    /// Sets the paper size of the `GtkPageSetup` and modifies
    /// the margins according to the new paper size.
    func setPaperSizeAndDefaultMargins(size: PaperSizeProtocol) {
        gtk_page_setup_set_paper_size_and_default_margins(cast(page_setup_ptr), cast(size.ptr))
    
    }

    /// Sets the right margin of the `GtkPageSetup`.
    func setRight(margin: gdouble, unit: Unit) {
        gtk_page_setup_set_right_margin(cast(page_setup_ptr), margin, unit)
    
    }

    /// Sets the top margin of the `GtkPageSetup`.
    func setTop(margin: gdouble, unit: Unit) {
        gtk_page_setup_set_top_margin(cast(page_setup_ptr), margin, unit)
    
    }

    /// This function saves the information from `setup` to `file_name`.
    func toFile(fileName file_name: UnsafePointer<CChar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_page_setup_to_file(cast(page_setup_ptr), file_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Serialize page setup to an a{sv} variant.
    func toGvariant() -> UnsafeMutablePointer<GVariant>! {
        let rv = gtk_page_setup_to_gvariant(cast(page_setup_ptr))
        return cast(rv)
    }

    /// This function adds the page setup from `setup` to `key_file`.
    func to(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) {
        gtk_page_setup_to_key_file(cast(page_setup_ptr), cast(key_file.ptr), group_name)
    
    }

    /// Runs a page setup dialog, letting the user modify the values from
    /// `page_setup`. If the user cancels the dialog, the returned `GtkPageSetup`
    /// is identical to the passed in `page_setup`, otherwise it contains the
    /// modifications done in the dialog.
    /// 
    /// Note that this function may use a recursive mainloop to show the page
    /// setup dialog. See gtk_print_run_page_setup_dialog_async() if this is
    /// a problem.
    func printRunPageSetupDialog(parent: WindowProtocol, settings: PrintSettingsProtocol) -> UnsafeMutablePointer<GtkPageSetup>! {
        let rv = gtk_print_run_page_setup_dialog(cast(parent.ptr), cast(page_setup_ptr), cast(settings.ptr))
        return cast(rv)
    }

    /// Runs a page setup dialog, letting the user modify the values from `page_setup`.
    /// 
    /// In contrast to gtk_print_run_page_setup_dialog(), this function  returns after
    /// showing the page setup dialog on platforms that support this, and calls `done_cb`
    /// from a signal handler for the ::response signal of the dialog.
    func printRunPageSetupDialogAsync(parent: WindowProtocol, settings: PrintSettingsProtocol, doneCb done_cb: @escaping PageSetupDoneFunc, data: UnsafeMutableRawPointer) {
        gtk_print_run_page_setup_dialog_async(cast(parent.ptr), cast(page_setup_ptr), cast(settings.ptr), done_cb, cast(data))
    
    }
    /// Gets the page orientation of the `GtkPageSetup`.
    var orientation: GtkPageOrientation {
        /// Gets the page orientation of the `GtkPageSetup`.
        get {
            let rv = gtk_page_setup_get_orientation(cast(page_setup_ptr))
            return rv
        }
        /// Sets the page orientation of the `GtkPageSetup`.
        nonmutating set {
            gtk_page_setup_set_orientation(cast(page_setup_ptr), newValue)
        }
    }

    /// Gets the paper size of the `GtkPageSetup`.
    var paperSize: UnsafeMutablePointer<GtkPaperSize>! {
        /// Gets the paper size of the `GtkPageSetup`.
        get {
            let rv = gtk_page_setup_get_paper_size(cast(page_setup_ptr))
            return cast(rv)
        }
        /// Sets the paper size of the `GtkPageSetup` without
        /// changing the margins. See
        /// gtk_page_setup_set_paper_size_and_default_margins().
        nonmutating set {
            gtk_page_setup_set_paper_size(cast(page_setup_ptr), cast(newValue))
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
/// Child widgets are
/// added to the panes of the widget with gtk_paned_pack1() and
/// gtk_paned_pack2(). The division between the two children is set by default
/// from the size requests of the children, but it can be adjusted by the
/// user.
/// 
/// A paned widget draws a separator between the two child widgets and a
/// small handle that the user can drag to adjust the division. It does not
/// draw any relief around the children or around the separator. (The space
/// in which the separator is called the gutter.) Often, it is useful to put
/// each child inside a `GtkFrame` with the shadow type set to `GTK_SHADOW_IN`
/// so that the gutter appears as a ridge. No separator is drawn if one of
/// the children is missing.
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
/// by the user, by calling gtk_paned_set_position().
/// 
/// `` CSS nodes
/// 
/// ```
/// paned
/// ├── <child>
/// ├── separator[.wide]
/// ╰── <child>
/// ```
/// 
/// 
/// GtkPaned has a main CSS node with name paned, and a subnode for
/// the separator with name separator. The subnode gets a .wide style
/// class when the paned is supposed to be wide.
/// 
/// In horizontal orientation, the nodes of the children are always arranged
/// from left to right. So :first-child will always select the leftmost child,
/// regardless of text direction.
/// 
/// ``` Creating a paned widget with minimum sizes.
/// 
/// (C Language Example):
/// ```C
/// GtkWidget *hpaned = gtk_paned_new (GTK_ORIENTATION_HORIZONTAL);
/// GtkWidget *frame1 = gtk_frame_new (NULL);
/// GtkWidget *frame2 = gtk_frame_new (NULL);
/// gtk_frame_set_shadow_type (GTK_FRAME (frame1), GTK_SHADOW_IN);
/// gtk_frame_set_shadow_type (GTK_FRAME (frame2), GTK_SHADOW_IN);
/// 
/// gtk_widget_set_size_request (hpaned, 200, -1);
/// 
/// gtk_paned_pack1 (GTK_PANED (hpaned), frame1, TRUE, FALSE);
/// gtk_widget_set_size_request (frame1, 50, -1);
/// 
/// gtk_paned_pack2 (GTK_PANED (hpaned), frame2, FALSE, FALSE);
/// gtk_widget_set_size_request (frame2, 50, -1);
/// ```
/// 
public protocol PanedProtocol: ContainerProtocol, OrientableProtocol {
    /// Untyped pointer to the underlying `GtkPaned` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPaned` instance.
    var paned_ptr: UnsafeMutablePointer<GtkPaned> { get }
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
/// Child widgets are
/// added to the panes of the widget with gtk_paned_pack1() and
/// gtk_paned_pack2(). The division between the two children is set by default
/// from the size requests of the children, but it can be adjusted by the
/// user.
/// 
/// A paned widget draws a separator between the two child widgets and a
/// small handle that the user can drag to adjust the division. It does not
/// draw any relief around the children or around the separator. (The space
/// in which the separator is called the gutter.) Often, it is useful to put
/// each child inside a `GtkFrame` with the shadow type set to `GTK_SHADOW_IN`
/// so that the gutter appears as a ridge. No separator is drawn if one of
/// the children is missing.
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
/// by the user, by calling gtk_paned_set_position().
/// 
/// `` CSS nodes
/// 
/// ```
/// paned
/// ├── <child>
/// ├── separator[.wide]
/// ╰── <child>
/// ```
/// 
/// 
/// GtkPaned has a main CSS node with name paned, and a subnode for
/// the separator with name separator. The subnode gets a .wide style
/// class when the paned is supposed to be wide.
/// 
/// In horizontal orientation, the nodes of the children are always arranged
/// from left to right. So :first-child will always select the leftmost child,
/// regardless of text direction.
/// 
/// ``` Creating a paned widget with minimum sizes.
/// 
/// (C Language Example):
/// ```C
/// GtkWidget *hpaned = gtk_paned_new (GTK_ORIENTATION_HORIZONTAL);
/// GtkWidget *frame1 = gtk_frame_new (NULL);
/// GtkWidget *frame2 = gtk_frame_new (NULL);
/// gtk_frame_set_shadow_type (GTK_FRAME (frame1), GTK_SHADOW_IN);
/// gtk_frame_set_shadow_type (GTK_FRAME (frame2), GTK_SHADOW_IN);
/// 
/// gtk_widget_set_size_request (hpaned, 200, -1);
/// 
/// gtk_paned_pack1 (GTK_PANED (hpaned), frame1, TRUE, FALSE);
/// gtk_widget_set_size_request (frame1, 50, -1);
/// 
/// gtk_paned_pack2 (GTK_PANED (hpaned), frame2, FALSE, FALSE);
/// gtk_widget_set_size_request (frame2, 50, -1);
/// ```
/// 
public struct PanedRef: PanedProtocol {
    /// Untyped pointer to the underlying `GtkPaned` instance.
    /// For type-safe access, use the generated, typed pointer `paned_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PanedRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPaned>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PanedProtocol`
    init<T: PanedProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkPaned` widget.
    init( orientation: Orientation) {
        let rv = gtk_paned_new(orientation)
        self.init(cast(rv))
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
/// Child widgets are
/// added to the panes of the widget with gtk_paned_pack1() and
/// gtk_paned_pack2(). The division between the two children is set by default
/// from the size requests of the children, but it can be adjusted by the
/// user.
/// 
/// A paned widget draws a separator between the two child widgets and a
/// small handle that the user can drag to adjust the division. It does not
/// draw any relief around the children or around the separator. (The space
/// in which the separator is called the gutter.) Often, it is useful to put
/// each child inside a `GtkFrame` with the shadow type set to `GTK_SHADOW_IN`
/// so that the gutter appears as a ridge. No separator is drawn if one of
/// the children is missing.
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
/// by the user, by calling gtk_paned_set_position().
/// 
/// `` CSS nodes
/// 
/// ```
/// paned
/// ├── <child>
/// ├── separator[.wide]
/// ╰── <child>
/// ```
/// 
/// 
/// GtkPaned has a main CSS node with name paned, and a subnode for
/// the separator with name separator. The subnode gets a .wide style
/// class when the paned is supposed to be wide.
/// 
/// In horizontal orientation, the nodes of the children are always arranged
/// from left to right. So :first-child will always select the leftmost child,
/// regardless of text direction.
/// 
/// ``` Creating a paned widget with minimum sizes.
/// 
/// (C Language Example):
/// ```C
/// GtkWidget *hpaned = gtk_paned_new (GTK_ORIENTATION_HORIZONTAL);
/// GtkWidget *frame1 = gtk_frame_new (NULL);
/// GtkWidget *frame2 = gtk_frame_new (NULL);
/// gtk_frame_set_shadow_type (GTK_FRAME (frame1), GTK_SHADOW_IN);
/// gtk_frame_set_shadow_type (GTK_FRAME (frame2), GTK_SHADOW_IN);
/// 
/// gtk_widget_set_size_request (hpaned, 200, -1);
/// 
/// gtk_paned_pack1 (GTK_PANED (hpaned), frame1, TRUE, FALSE);
/// gtk_widget_set_size_request (frame1, 50, -1);
/// 
/// gtk_paned_pack2 (GTK_PANED (hpaned), frame2, FALSE, FALSE);
/// gtk_widget_set_size_request (frame2, 50, -1);
/// ```
/// 
open class Paned: Container, PanedProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Paned` instance.
    public init(_ op: UnsafeMutablePointer<GtkPaned>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `PanedProtocol`
    /// Will retain `GtkPaned`.
    public convenience init<T: PanedProtocol>(_ other: T) {
        self.init(cast(other.paned_ptr))
        g_object_ref(cast(paned_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPaned.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPaned.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPaned.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPaned>(opaquePointer))
    }

    /// Creates a new `GtkPaned` widget.
    public convenience init( orientation: Orientation) {
        let rv = gtk_paned_new(orientation)
        self.init(cast(rv))
    }


}

public enum PanedPropertyName: String, PropertyNameProtocol {
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
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
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case position = "position"
    case positionSet = "position-set"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    /// Setting this property to `true` indicates that the paned needs
    /// to provide stronger visual separation (e.g. because it separates
    /// between two notebooks, whose tab rows would otherwise merge visually).
    case wideHandle = "wide-handle"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PanedPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(paned_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum PanedSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The ::accept-position signal is a
    /// [keybinding signal][GtkBindingSignal]
    /// which gets emitted to accept the current position of the handle when
    /// moving it using key bindings.
    /// 
    /// The default binding for this signal is Return or Space.
    case acceptPosition = "accept-position"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The ::button-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The ::button-release-event signal will be emitted when a button
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
    /// The ::cancel-position signal is a
    /// [keybinding signal][GtkBindingSignal]
    /// which gets emitted to cancel moving the position of the handle using key
    /// bindings. The position of the handle will be reset to the value prior to
    /// moving it.
    /// 
    /// The default binding for this signal is Escape.
    case cancelPosition = "cancel-position"
    case checkResize = "check-resize"
    /// The ::child-notify signal is emitted for each
    /// [child property][child-properties]  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The ::composited-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See gdk_screen_is_composited().
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The ::configure-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// The ::cycle-child-focus signal is a
    /// [keybinding signal][GtkBindingSignal]
    /// which gets emitted to cycle the focus between the children of the paned.
    /// 
    /// The default binding is f6.
    case cycleChildFocus = "cycle-child-focus"
    /// The ::cycle-handle-focus signal is a
    /// [keybinding signal][GtkBindingSignal]
    /// which gets emitted to cycle whether the paned should grab focus to allow
    /// the user to change position of the handle by using key bindings.
    /// 
    /// The default binding for this signal is f8.
    case cycleHandleFocus = "cycle-handle-focus"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The ::delete-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting gtk_widget_hide_on_delete() to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The ::destroy-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The ::direction-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The ::drag-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use g_signal_connect_after() to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The ::drag-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The ::drag-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See gtk_selection_data_set() and
    /// gtk_selection_data_set_text().
    case dragDataGet = "drag-data-get"
    /// The ::drag-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call gdk_drag_status() and not finish the drag.
    /// If the data was received in response to a `GtkWidget`::drag-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// gtk_drag_finish(), setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call gdk_drag_status() or gtk_drag_finish().
    /// 
    /// The handler may inspect the selected action with
    /// gdk_drag_context_get_selected_action() before calling
    /// gtk_drag_finish(), e.g. to implement `GDK_ACTION_ASK` as
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
    /// The ::drag-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that gtk_drag_finish() is called to let the source know that
    /// the drop is done. The call to gtk_drag_finish() can be done either
    /// directly or in a `GtkWidget`::drag-data-received handler which gets
    /// triggered by calling gtk_drag_get_data() to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The ::drag-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget`::drag-begin.
    case dragEnd = "drag-end"
    /// The ::drag-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The ::drag-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget`::drag-motion, e.g. undo highlighting
    /// with gtk_drag_unhighlight().
    /// 
    /// 
    /// Likewise, the `GtkWidget`::drag-leave signal is also emitted before the
    /// ::drag-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget`::drag-motion signal handler.
    case dragLeave = "drag-leave"
    /// The ::drag-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling gdk_drag_status().
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling gtk_drag_get_data() and
    /// defer the gdk_drag_status() call to the `GtkWidget`::drag-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to gtk_drag_dest_set()
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget`::drag-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with gtk_drag_highlight().
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
    /// gtk_widget_get_allocated_width() and
    /// gtk_widget_get_allocated_height().
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling cairo_save()
    /// before and cairo_restore() after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
    /// get a finer-grained representation of the dirty region with
    /// cairo_copy_clip_rectangle_list().
    case draw = "draw"
    /// The ::enter-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic ::event signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget`::key-press-event) and finally a generic
    /// `GtkWidget`::event-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget`::event signal and (optionally)
    /// the second more specific signal, ::event-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The ::focus-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The ::focus-out-event signal will be emitted when the keyboard focus
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
    /// The ::grab-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a gtk_grab_add() when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The ::hide signal is emitted when `widget` is hidden, for example with
    /// gtk_widget_hide().
    case hide = "hide"
    /// The ::hierarchy-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The ::key-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The ::key-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See gtk_widget_keynav_failed() for details.
    case keynavFailed = "keynav-failed"
    /// The ::leave-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The ::map signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// gtk_widget_set_visible()) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget`::map-event will
    /// be emitted.
    /// 
    /// The ::map signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget`::unmap.
    case map = "map"
    /// The ::map-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The ::motion-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The ::move-handle signal is a
    /// [keybinding signal][GtkBindingSignal]
    /// which gets emitted to move the handle when the user is using key bindings
    /// to move it.
    case moveHandle = "move-handle"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The ::parent-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist][checklist-popup-menu]
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The ::property-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget`:has-tooltip is `true` and the hover timeout
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
    /// The ::realize signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that gtk_widget_realize() has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The ::screen-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The ::scroll-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The ::selection-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The ::selection-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The ::show signal is emitted when `widget` is shown, for example with
    /// gtk_widget_show().
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The ::state-changed signal is emitted when the widget state changes.
    /// See gtk_widget_get_state().
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The ::state-flags-changed signal is emitted when the widget state
    /// changes, see gtk_widget_get_state_flags().
    case stateFlagsChanged = "state-flags-changed"
    /// The ::style-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// gtk_widget_modify_base() also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget`::style-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The ::style-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext`::changed signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by gtk_widget_get_style_context().
    /// 
    /// Note that style-modifying functions like gtk_widget_override_color() also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    /// The ::toggle-handle-focus is a
    /// [keybinding signal][GtkBindingSignal]
    /// which gets emitted to accept the current position of the handle and then
    /// move focus to the next widget in the focus chain.
    /// 
    /// The default binding is Tab.
    case toggleHandleFocus = "toggle-handle-focus"
    case touchEvent = "touch-event"
    /// The ::unmap signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As ::unmap indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The ::unmap-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The ::unrealize signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that gtk_widget_unrealize() has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The ::visibility-notify-event will be emitted when the `widget`'s
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
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The ::window-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginTop = "notify::margin-top"
    /// The largest possible value for the position property.
    /// This property is derived from the size and shrinkability
    /// of the widget's children.
    case notifyMaxPosition = "notify::max-position"
    /// The smallest possible value for the position property.
    /// This property is derived from the size and shrinkability
    /// of the widget's children.
    case notifyMinPosition = "notify::min-position"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyPosition = "notify::position"
    case notifyPositionSet = "notify::position-set"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    /// Setting this property to `true` indicates that the paned needs
    /// to provide stronger visual separation (e.g. because it separates
    /// between two notebooks, whose tab rows would otherwise merge visually).
    case notifyWideHandle = "notify::wide-handle"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension PanedProtocol {
    /// Connect a `PanedSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PanedSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(paned_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension PanedProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPaned` instance.
    var paned_ptr: UnsafeMutablePointer<GtkPaned> { return ptr.assumingMemoryBound(to: GtkPaned.self) }

    /// Adds a child to the top or left pane with default parameters. This is
    /// equivalent to
    /// `gtk_paned_pack1 (paned, child, FALSE, TRUE)`.
    func add1(child: WidgetProtocol) {
        gtk_paned_add1(cast(paned_ptr), cast(child.ptr))
    
    }

    /// Adds a child to the bottom or right pane with default parameters. This
    /// is equivalent to
    /// `gtk_paned_pack2 (paned, child, TRUE, TRUE)`.
    func add2(child: WidgetProtocol) {
        gtk_paned_add2(cast(paned_ptr), cast(child.ptr))
    
    }

    /// Obtains the first child of the paned widget.
    func getChild1() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_paned_get_child1(cast(paned_ptr))
        return cast(rv)
    }

    /// Obtains the second child of the paned widget.
    func getChild2() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_paned_get_child2(cast(paned_ptr))
        return cast(rv)
    }

    /// Returns the `GdkWindow` of the handle. This function is
    /// useful when handling button or motion events because it
    /// enables the callback to distinguish between the window
    /// of the paned, a child and the handle.
    func getHandleWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gtk_paned_get_handle_window(cast(paned_ptr))
        return cast(rv)
    }

    /// Obtains the position of the divider between the two panes.
    func getPosition() -> CInt {
        let rv = gtk_paned_get_position(cast(paned_ptr))
        return CInt(rv)
    }

    /// Gets the `GtkPaned`:wide-handle property.
    func getWideHandle() -> Bool {
        let rv = gtk_paned_get_wide_handle(cast(paned_ptr))
        return Bool(rv != 0)
    }

    /// Adds a child to the top or left pane.
    func pack1(child: WidgetProtocol, resize: Bool, shrink: Bool) {
        gtk_paned_pack1(cast(paned_ptr), cast(child.ptr), gboolean(resize ? 1 : 0), gboolean(shrink ? 1 : 0))
    
    }

    /// Adds a child to the bottom or right pane.
    func pack2(child: WidgetProtocol, resize: Bool, shrink: Bool) {
        gtk_paned_pack2(cast(paned_ptr), cast(child.ptr), gboolean(resize ? 1 : 0), gboolean(shrink ? 1 : 0))
    
    }

    /// Sets the position of the divider between the two panes.
    func set(position: CInt) {
        gtk_paned_set_position(cast(paned_ptr), gint(position))
    
    }

    /// Sets the `GtkPaned`:wide-handle property.
    func setWideHandle(wide: Bool) {
        gtk_paned_set_wide_handle(cast(paned_ptr), gboolean(wide ? 1 : 0))
    
    }
    /// Obtains the first child of the paned widget.
    var child1: UnsafeMutablePointer<GtkWidget>! {
        /// Obtains the first child of the paned widget.
        get {
            let rv = gtk_paned_get_child1(cast(paned_ptr))
            return cast(rv)
        }
    }

    /// Obtains the second child of the paned widget.
    var child2: UnsafeMutablePointer<GtkWidget>! {
        /// Obtains the second child of the paned widget.
        get {
            let rv = gtk_paned_get_child2(cast(paned_ptr))
            return cast(rv)
        }
    }

    /// Returns the `GdkWindow` of the handle. This function is
    /// useful when handling button or motion events because it
    /// enables the callback to distinguish between the window
    /// of the paned, a child and the handle.
    var handleWindow: UnsafeMutablePointer<GdkWindow>! {
        /// Returns the `GdkWindow` of the handle. This function is
        /// useful when handling button or motion events because it
        /// enables the callback to distinguish between the window
        /// of the paned, a child and the handle.
        get {
            let rv = gtk_paned_get_handle_window(cast(paned_ptr))
            return cast(rv)
        }
    }

    var position: CInt {
        /// Obtains the position of the divider between the two panes.
        get {
            let rv = gtk_paned_get_position(cast(paned_ptr))
            return CInt(rv)
        }
        /// Sets the position of the divider between the two panes.
        nonmutating set {
            gtk_paned_set_position(cast(paned_ptr), gint(newValue))
        }
    }

    /// Gets the `GtkPaned`:wide-handle property.
    var wideHandle: Bool {
        /// Gets the `GtkPaned`:wide-handle property.
        get {
            let rv = gtk_paned_get_wide_handle(cast(paned_ptr))
            return Bool(rv != 0)
        }
        /// Sets the `GtkPaned`:wide-handle property.
        nonmutating set {
            gtk_paned_set_wide_handle(cast(paned_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



// MARK: - PanedAccessible Class

/// The `PanedAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkPanedAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PanedAccessible`.
/// Alternatively, use `PanedAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PanedAccessibleProtocol: ContainerAccessibleProtocol, Atk.ValueProtocol {
    /// Untyped pointer to the underlying `GtkPanedAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPanedAccessible` instance.
    var paned_accessible_ptr: UnsafeMutablePointer<GtkPanedAccessible> { get }
}

/// The `PanedAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkPanedAccessible` instance.
/// It exposes methods that can operate on this data type through `PanedAccessibleProtocol` conformance.
/// Use `PanedAccessibleRef` only as an `unowned` reference to an existing `GtkPanedAccessible` instance.
///

public struct PanedAccessibleRef: PanedAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkPanedAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `paned_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PanedAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPanedAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PanedAccessibleProtocol`
    init<T: PanedAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PanedAccessible` type acts as a reference-counted owner of an underlying `GtkPanedAccessible` instance.
/// It provides the methods that can operate on this data type through `PanedAccessibleProtocol` conformance.
/// Use `PanedAccessible` as a strong reference or owner of a `GtkPanedAccessible` instance.
///

open class PanedAccessible: ContainerAccessible, PanedAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PanedAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkPanedAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `PanedAccessibleProtocol`
    /// Will retain `GtkPanedAccessible`.
    public convenience init<T: PanedAccessibleProtocol>(_ other: T) {
        self.init(cast(other.paned_accessible_ptr))
        g_object_ref(cast(paned_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPanedAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPanedAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPanedAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PanedAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPanedAccessible>(opaquePointer))
    }



}

public enum PanedAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension PanedAccessibleProtocol {
    /// Bind a `PanedAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PanedAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(paned_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum PanedAccessibleSignalName: String, SignalNameProtocol {
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
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
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

public extension PanedAccessibleProtocol {
    /// Connect a `PanedAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PanedAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(paned_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension PanedAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPanedAccessible` instance.
    var paned_accessible_ptr: UnsafeMutablePointer<GtkPanedAccessible> { return ptr.assumingMemoryBound(to: GtkPanedAccessible.self) }

}



// MARK: - PlacesSidebar Class

/// The `PlacesSidebarProtocol` protocol exposes the methods and properties of an underlying `GtkPlacesSidebar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PlacesSidebar`.
/// Alternatively, use `PlacesSidebarRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkPlacesSidebar` is a widget that displays a list of frequently-used places in the
/// file system:  the user’s home directory, the user’s bookmarks, and volumes and drives.
/// This widget is used as a sidebar in `GtkFileChooser` and may be used by file managers
/// and similar programs.
/// 
/// The places sidebar displays drives and volumes, and will automatically mount
/// or unmount them when the user selects them.
/// 
/// Applications can hook to various signals in the places sidebar to customize
/// its behavior.  For example, they can add extra commands to the context menu
/// of the sidebar.
/// 
/// While bookmarks are completely in control of the user, the places sidebar also
/// allows individual applications to provide extra shortcut folders that are unique
/// to each application.  For example, a Paint program may want to add a shortcut
/// for a Clipart folder.  You can do this with gtk_places_sidebar_add_shortcut().
/// 
/// To make use of the places sidebar, an application at least needs to connect
/// to the `GtkPlacesSidebar`::open-location signal.  This is emitted when the
/// user selects in the sidebar a location to open.  The application should also
/// call gtk_places_sidebar_set_location() when it changes the currently-viewed
/// location.
/// 
/// `` CSS nodes
/// 
/// GtkPlacesSidebar uses a single CSS node with name placessidebar and style
/// class .sidebar.
/// 
/// Among the children of the places sidebar, the following style classes can
/// be used:
/// - .sidebar-new-bookmark-row for the 'Add new bookmark' row
/// - .sidebar-placeholder-row for a row that is a placeholder
/// - .has-open-popup when a popup is open for a row
public protocol PlacesSidebarProtocol: ScrolledWindowProtocol {
    /// Untyped pointer to the underlying `GtkPlacesSidebar` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPlacesSidebar` instance.
    var places_sidebar_ptr: UnsafeMutablePointer<GtkPlacesSidebar> { get }
}

/// The `PlacesSidebarRef` type acts as a lightweight Swift reference to an underlying `GtkPlacesSidebar` instance.
/// It exposes methods that can operate on this data type through `PlacesSidebarProtocol` conformance.
/// Use `PlacesSidebarRef` only as an `unowned` reference to an existing `GtkPlacesSidebar` instance.
///
/// `GtkPlacesSidebar` is a widget that displays a list of frequently-used places in the
/// file system:  the user’s home directory, the user’s bookmarks, and volumes and drives.
/// This widget is used as a sidebar in `GtkFileChooser` and may be used by file managers
/// and similar programs.
/// 
/// The places sidebar displays drives and volumes, and will automatically mount
/// or unmount them when the user selects them.
/// 
/// Applications can hook to various signals in the places sidebar to customize
/// its behavior.  For example, they can add extra commands to the context menu
/// of the sidebar.
/// 
/// While bookmarks are completely in control of the user, the places sidebar also
/// allows individual applications to provide extra shortcut folders that are unique
/// to each application.  For example, a Paint program may want to add a shortcut
/// for a Clipart folder.  You can do this with gtk_places_sidebar_add_shortcut().
/// 
/// To make use of the places sidebar, an application at least needs to connect
/// to the `GtkPlacesSidebar`::open-location signal.  This is emitted when the
/// user selects in the sidebar a location to open.  The application should also
/// call gtk_places_sidebar_set_location() when it changes the currently-viewed
/// location.
/// 
/// `` CSS nodes
/// 
/// GtkPlacesSidebar uses a single CSS node with name placessidebar and style
/// class .sidebar.
/// 
/// Among the children of the places sidebar, the following style classes can
/// be used:
/// - .sidebar-new-bookmark-row for the 'Add new bookmark' row
/// - .sidebar-placeholder-row for a row that is a placeholder
/// - .has-open-popup when a popup is open for a row
public struct PlacesSidebarRef: PlacesSidebarProtocol {
    /// Untyped pointer to the underlying `GtkPlacesSidebar` instance.
    /// For type-safe access, use the generated, typed pointer `places_sidebar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PlacesSidebarRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPlacesSidebar>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PlacesSidebarProtocol`
    init<T: PlacesSidebarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkPlacesSidebar` widget.
    /// 
    /// The application should connect to at least the
    /// `GtkPlacesSidebar`::open-location signal to be notified
    /// when the user makes a selection in the sidebar.
    init() {
        let rv = gtk_places_sidebar_new()
        self.init(cast(rv))
    }
}

/// The `PlacesSidebar` type acts as a reference-counted owner of an underlying `GtkPlacesSidebar` instance.
/// It provides the methods that can operate on this data type through `PlacesSidebarProtocol` conformance.
/// Use `PlacesSidebar` as a strong reference or owner of a `GtkPlacesSidebar` instance.
///
/// `GtkPlacesSidebar` is a widget that displays a list of frequently-used places in the
/// file system:  the user’s home directory, the user’s bookmarks, and volumes and drives.
/// This widget is used as a sidebar in `GtkFileChooser` and may be used by file managers
/// and similar programs.
/// 
/// The places sidebar displays drives and volumes, and will automatically mount
/// or unmount them when the user selects them.
/// 
/// Applications can hook to various signals in the places sidebar to customize
/// its behavior.  For example, they can add extra commands to the context menu
/// of the sidebar.
/// 
/// While bookmarks are completely in control of the user, the places sidebar also
/// allows individual applications to provide extra shortcut folders that are unique
/// to each application.  For example, a Paint program may want to add a shortcut
/// for a Clipart folder.  You can do this with gtk_places_sidebar_add_shortcut().
/// 
/// To make use of the places sidebar, an application at least needs to connect
/// to the `GtkPlacesSidebar`::open-location signal.  This is emitted when the
/// user selects in the sidebar a location to open.  The application should also
/// call gtk_places_sidebar_set_location() when it changes the currently-viewed
/// location.
/// 
/// `` CSS nodes
/// 
/// GtkPlacesSidebar uses a single CSS node with name placessidebar and style
/// class .sidebar.
/// 
/// Among the children of the places sidebar, the following style classes can
/// be used:
/// - .sidebar-new-bookmark-row for the 'Add new bookmark' row
/// - .sidebar-placeholder-row for a row that is a placeholder
/// - .has-open-popup when a popup is open for a row
open class PlacesSidebar: ScrolledWindow, PlacesSidebarProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PlacesSidebar` instance.
    public init(_ op: UnsafeMutablePointer<GtkPlacesSidebar>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `PlacesSidebarProtocol`
    /// Will retain `GtkPlacesSidebar`.
    public convenience init<T: PlacesSidebarProtocol>(_ other: T) {
        self.init(cast(other.places_sidebar_ptr))
        g_object_ref(cast(places_sidebar_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPlacesSidebar.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPlacesSidebar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPlacesSidebar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PlacesSidebarProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPlacesSidebar>(opaquePointer))
    }

    /// Creates a new `GtkPlacesSidebar` widget.
    /// 
    /// The application should connect to at least the
    /// `GtkPlacesSidebar`::open-location signal to be notified
    /// when the user makes a selection in the sidebar.
    public convenience init() {
        let rv = gtk_places_sidebar_new()
        self.init(cast(rv))
    }


}

public enum PlacesSidebarPropertyName: String, PropertyNameProtocol {
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    case hadjustment = "hadjustment"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case hexpandSet = "hexpand-set"
    case hscrollbarPolicy = "hscrollbar-policy"
    case isFocus = "is-focus"
    /// Whether kinetic scrolling is enabled or not. Kinetic scrolling
    /// only applies to devices with source `GDK_SOURCE_TOUCHSCREEN`.
    case kineticScrolling = "kinetic-scrolling"
    case localOnly = "local-only"
    case location = "location"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginTop = "margin-top"
    /// The maximum content height of `scrolled_window`, or -1 if not set.
    case maxContentHeight = "max-content-height"
    /// The maximum content width of `scrolled_window`, or -1 if not set.
    case maxContentWidth = "max-content-width"
    /// The minimum content height of `scrolled_window`, or -1 if not set.
    case minContentHeight = "min-content-height"
    /// The minimum content width of `scrolled_window`, or -1 if not set.
    case minContentWidth = "min-content-width"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case openFlags = "open-flags"
    /// Whether overlay scrolling is enabled or not. If it is, the
    /// scrollbars are only added as traditional widgets when a mouse
    /// is present. Otherwise, they are overlayed on top of the content,
    /// as narrow indicators.
    /// 
    /// Note that overlay scrolling can also be globally disabled, with
    /// the `GtkSettings`::gtk-overlay-scrolling setting.
    case overlayScrolling = "overlay-scrolling"
    case parent = "parent"
    /// If :populate-all is `true`, the `GtkPlacesSidebar`::populate-popup signal
    /// is also emitted for popovers.
    case populateAll = "populate-all"
    /// Whether the natural height of the child should be calculated and propagated
    /// through the scrolled window’s requested natural height.
    /// 
    /// This is useful in cases where an attempt should be made to allocate exactly
    /// enough space for the natural size of the child.
    case propagateNaturalHeight = "propagate-natural-height"
    /// Whether the natural width of the child should be calculated and propagated
    /// through the scrolled window’s requested natural width.
    /// 
    /// This is useful in cases where an attempt should be made to allocate exactly
    /// enough space for the natural size of the child.
    case propagateNaturalWidth = "propagate-natural-width"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    case shadowType = "shadow-type"
    case showConnectToServer = "show-connect-to-server"
    case showDesktop = "show-desktop"
    case showEnterLocation = "show-enter-location"
    case showOtherLocations = "show-other-locations"
    case showRecent = "show-recent"
    case showStarredLocation = "show-starred-location"
    case showTrash = "show-trash"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    case vadjustment = "vadjustment"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case vscrollbarPolicy = "vscrollbar-policy"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
    case windowPlacement = "window-placement"
    /// Whether "window-placement" should be used to determine the location
    /// of the contents with respect to the scrollbars.
    ///
    /// **window-placement-set is deprecated:**
    /// This value is ignored and
    /// #GtkScrolledWindow:window-placement value is always honored.
    case windowPlacementSet = "window-placement-set"
}

public extension PlacesSidebarProtocol {
    /// Bind a `PlacesSidebarPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PlacesSidebarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(places_sidebar_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum PlacesSidebarSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The ::button-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The ::button-release-event signal will be emitted when a button
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
    /// The ::child-notify signal is emitted for each
    /// [child property][child-properties]  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The ::composited-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See gdk_screen_is_composited().
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The ::configure-event signal will be emitted when the size, position or
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
    /// The ::delete-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting gtk_widget_hide_on_delete() to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The ::destroy-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The ::direction-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The places sidebar emits this signal when it needs to ask the application
    /// to pop up a menu to ask the user for which drag action to perform.
    case dragActionAsk = "drag-action-ask"
    /// When the user starts a drag-and-drop operation and the sidebar needs
    /// to ask the application for which drag action to perform, then the
    /// sidebar will emit this signal.
    /// 
    /// The application can evaluate the `context` for customary actions, or
    /// it can check the type of the files indicated by `source_file_list` against the
    /// possible actions for the destination `dest_file`.
    /// 
    /// The drag action to use must be the return value of the signal handler.
    case dragActionRequested = "drag-action-requested"
    /// The ::drag-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use g_signal_connect_after() to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The ::drag-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The ::drag-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See gtk_selection_data_set() and
    /// gtk_selection_data_set_text().
    case dragDataGet = "drag-data-get"
    /// The ::drag-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call gdk_drag_status() and not finish the drag.
    /// If the data was received in response to a `GtkWidget`::drag-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// gtk_drag_finish(), setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call gdk_drag_status() or gtk_drag_finish().
    /// 
    /// The handler may inspect the selected action with
    /// gdk_drag_context_get_selected_action() before calling
    /// gtk_drag_finish(), e.g. to implement `GDK_ACTION_ASK` as
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
    /// The ::drag-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that gtk_drag_finish() is called to let the source know that
    /// the drop is done. The call to gtk_drag_finish() can be done either
    /// directly or in a `GtkWidget`::drag-data-received handler which gets
    /// triggered by calling gtk_drag_get_data() to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The ::drag-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget`::drag-begin.
    case dragEnd = "drag-end"
    /// The ::drag-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The ::drag-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget`::drag-motion, e.g. undo highlighting
    /// with gtk_drag_unhighlight().
    /// 
    /// 
    /// Likewise, the `GtkWidget`::drag-leave signal is also emitted before the
    /// ::drag-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget`::drag-motion signal handler.
    case dragLeave = "drag-leave"
    /// The ::drag-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling gdk_drag_status().
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling gtk_drag_get_data() and
    /// defer the gdk_drag_status() call to the `GtkWidget`::drag-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to gtk_drag_dest_set()
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget`::drag-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with gtk_drag_highlight().
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
    /// The places sidebar emits this signal when the user completes a
    /// drag-and-drop operation and one of the sidebar's items is the
    /// destination.  This item is in the `dest_file`, and the
    /// `source_file_list` has the list of files that are dropped into it and
    /// which should be copied/moved/etc. based on the specified `action`.
    case dragPerformDrop = "drag-perform-drop"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// gtk_widget_get_allocated_width() and
    /// gtk_widget_get_allocated_height().
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling cairo_save()
    /// before and cairo_restore() after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
    /// get a finer-grained representation of the dirty region with
    /// cairo_copy_clip_rectangle_list().
    case draw = "draw"
    /// The ::edge-overshot signal is emitted whenever user initiated scrolling
    /// makes the scrolled window firmly surpass (i.e. with some edge resistance)
    /// the lower or upper limits defined by the adjustment in that orientation.
    /// 
    /// A similar behavior without edge resistance is provided by the
    /// `GtkScrolledWindow`::edge-reached signal.
    /// 
    /// Note: The `pos` argument is LTR/RTL aware, so callers should be aware too
    /// if intending to provide behavior on horizontal edges.
    case edgeOvershot = "edge-overshot"
    /// The ::edge-reached signal is emitted whenever user-initiated scrolling
    /// makes the scrolled window exactly reach the lower or upper limits
    /// defined by the adjustment in that orientation.
    /// 
    /// A similar behavior with edge resistance is provided by the
    /// `GtkScrolledWindow`::edge-overshot signal.
    /// 
    /// Note: The `pos` argument is LTR/RTL aware, so callers should be aware too
    /// if intending to provide behavior on horizontal edges.
    case edgeReached = "edge-reached"
    /// The ::enter-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic ::event signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget`::key-press-event) and finally a generic
    /// `GtkWidget`::event-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget`::event signal and (optionally)
    /// the second more specific signal, ::event-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The ::focus-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The ::focus-out-event signal will be emitted when the keyboard focus
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
    /// The ::grab-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a gtk_grab_add() when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The ::hide signal is emitted when `widget` is hidden, for example with
    /// gtk_widget_hide().
    case hide = "hide"
    /// The ::hierarchy-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The ::key-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The ::key-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See gtk_widget_keynav_failed() for details.
    case keynavFailed = "keynav-failed"
    /// The ::leave-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The ::map signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// gtk_widget_set_visible()) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget`::map-event will
    /// be emitted.
    /// 
    /// The ::map signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget`::unmap.
    case map = "map"
    /// The ::map-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The ::motion-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    /// The places sidebar emits this signal when it starts a new operation
    /// because the user clicked on some location that needs mounting.
    /// In this way the application using the `GtkPlacesSidebar` can track the
    /// progress of the operation and, for example, show a notification.
    case mount = "mount"
    case moveFocus = "move-focus"
    /// The ::move-focus-out signal is a
    /// [keybinding signal][GtkBindingSignal] which gets
    /// emitted when focus is moved away from the scrolled window by a
    /// keybinding. The `GtkWidget`::move-focus signal is emitted with
    /// `direction_type` on this scrolled window’s toplevel parent in the
    /// container hierarchy. The default bindings for this signal are
    /// `Ctrl + Tab` to move forward and `Ctrl + Shift + Tab` to move backward.
    case moveFocusOut = "move-focus-out"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The places sidebar emits this signal when the user selects a location
    /// in it.  The calling application should display the contents of that
    /// location; for example, a file manager should show a list of files in
    /// the specified location.
    case openLocation = "open-location"
    /// The ::parent-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// The places sidebar emits this signal when the user invokes a contextual
    /// popup on one of its items. In the signal handler, the application may
    /// add extra items to the menu as appropriate. For example, a file manager
    /// may want to add a "Properties" command to the menu.
    /// 
    /// It is not necessary to store the `selected_item` for each menu item;
    /// during their callbacks, the application can use gtk_places_sidebar_get_location()
    /// to get the file to which the item refers.
    /// 
    /// The `selected_item` argument may be `nil` in case the selection refers to
    /// a volume. In this case, `selected_volume` will be non-`nil`. In this case,
    /// the calling application will have to g_object_ref() the `selected_volume` and
    /// keep it around to use it in the callback.
    /// 
    /// The `container` and all its contents are destroyed after the user
    /// dismisses the popup. The popup is re-created (and thus, this signal is
    /// emitted) every time the user activates the contextual menu.
    /// 
    /// Before 3.18, the `container` always was a `GtkMenu`, and you were expected
    /// to add your items as `GtkMenuItems`. Since 3.18, the popup may be implemented
    /// as a `GtkPopover`, in which case `container` will be something else, e.g. a
    /// `GtkBox`, to which you may add `GtkModelButtons` or other widgets, such as
    /// `GtkEntries`, `GtkSpinButtons`, etc. If your application can deal with this
    /// situation, you can set `GtkPlacesSidebar`::populate-all to `true` to request
    /// that this signal is emitted for populating popovers as well.
    case populatePopup = "populate-popup"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist][checklist-popup-menu]
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The ::property-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget`:has-tooltip is `true` and the hover timeout
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
    /// The ::realize signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that gtk_widget_realize() has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The ::screen-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The ::scroll-child signal is a
    /// [keybinding signal][GtkBindingSignal]
    /// which gets emitted when a keybinding that scrolls is pressed.
    /// The horizontal or vertical adjustment is updated which triggers a
    /// signal that the scrolled window’s child may listen to and scroll itself.
    case scrollChild = "scroll-child"
    /// The ::scroll-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The ::selection-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The ::selection-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The ::show signal is emitted when `widget` is shown, for example with
    /// gtk_widget_show().
    case show = "show"
    /// The places sidebar emits this signal when it needs the calling
    /// application to present an way to connect directly to a network server.
    /// For example, the application may bring up a dialog box asking for
    /// a URL like "sftp://ftp.example.com".  It is up to the application to create
    /// the corresponding mount by using, for example, g_file_mount_enclosing_volume().
    ///
    /// **show-connect-to-server is deprecated:**
    /// use the #GtkPlacesSidebar::show-other-locations signal
    ///     to connect to network servers.
    case showConnectToServer = "show-connect-to-server"
    /// The places sidebar emits this signal when it needs the calling
    /// application to present an way to directly enter a location.
    /// For example, the application may bring up a dialog box asking for
    /// a URL like "http://http.example.com".
    case showEnterLocation = "show-enter-location"
    /// The places sidebar emits this signal when it needs the calling
    /// application to present an error message.  Most of these messages
    /// refer to mounting or unmounting media, for example, when a drive
    /// cannot be started for some reason.
    case showErrorMessage = "show-error-message"
    case showHelp = "show-help"
    /// The places sidebar emits this signal when it needs the calling
    /// application to present a way to show other locations e.g. drives
    /// and network access points.
    /// For example, the application may bring up a page showing persistent
    /// volumes and discovered network addresses.
    ///
    /// **show-other-locations is deprecated:**
    /// use the #GtkPlacesSidebar::show-other-locations-with-flags
    /// which includes the open flags in order to allow the user to specify to open
    /// in a new tab or window, in a similar way than #GtkPlacesSidebar::open-location
    case showOtherLocations = "show-other-locations"
    /// The places sidebar emits this signal when it needs the calling
    /// application to present a way to show other locations e.g. drives
    /// and network access points.
    /// For example, the application may bring up a page showing persistent
    /// volumes and discovered network addresses.
    case showOtherLocationsWithFlags = "show-other-locations-with-flags"
    /// The places sidebar emits this signal when it needs the calling
    /// application to present a way to show the starred files. In GNOME,
    /// starred files are implemented by setting the nao:predefined-tag-favorite
    /// tag in the tracker database.
    case showStarredLocation = "show-starred-location"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The ::state-changed signal is emitted when the widget state changes.
    /// See gtk_widget_get_state().
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The ::state-flags-changed signal is emitted when the widget state
    /// changes, see gtk_widget_get_state_flags().
    case stateFlagsChanged = "state-flags-changed"
    /// The ::style-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// gtk_widget_modify_base() also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget`::style-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The ::style-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext`::changed signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by gtk_widget_get_style_context().
    /// 
    /// Note that style-modifying functions like gtk_widget_override_color() also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The ::unmap signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As ::unmap indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The ::unmap-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The places sidebar emits this signal when it starts a new operation
    /// because the user for example ejected some drive or unmounted a mount.
    /// In this way the application using the `GtkPlacesSidebar` can track the
    /// progress of the operation and, for example, show a notification.
    case unmount = "unmount"
    /// The ::unrealize signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that gtk_widget_unrealize() has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The ::visibility-notify-event will be emitted when the `widget`'s
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
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The ::window-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    case notifyHadjustment = "notify::hadjustment"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyHscrollbarPolicy = "notify::hscrollbar-policy"
    case notifyIsFocus = "notify::is-focus"
    /// Whether kinetic scrolling is enabled or not. Kinetic scrolling
    /// only applies to devices with source `GDK_SOURCE_TOUCHSCREEN`.
    case notifyKineticScrolling = "notify::kinetic-scrolling"
    case notifyLocalOnly = "notify::local-only"
    case notifyLocation = "notify::location"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginTop = "notify::margin-top"
    /// The maximum content height of `scrolled_window`, or -1 if not set.
    case notifyMaxContentHeight = "notify::max-content-height"
    /// The maximum content width of `scrolled_window`, or -1 if not set.
    case notifyMaxContentWidth = "notify::max-content-width"
    /// The minimum content height of `scrolled_window`, or -1 if not set.
    case notifyMinContentHeight = "notify::min-content-height"
    /// The minimum content width of `scrolled_window`, or -1 if not set.
    case notifyMinContentWidth = "notify::min-content-width"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyOpenFlags = "notify::open-flags"
    /// Whether overlay scrolling is enabled or not. If it is, the
    /// scrollbars are only added as traditional widgets when a mouse
    /// is present. Otherwise, they are overlayed on top of the content,
    /// as narrow indicators.
    /// 
    /// Note that overlay scrolling can also be globally disabled, with
    /// the `GtkSettings`::gtk-overlay-scrolling setting.
    case notifyOverlayScrolling = "notify::overlay-scrolling"
    case notifyParent = "notify::parent"
    /// If :populate-all is `true`, the `GtkPlacesSidebar`::populate-popup signal
    /// is also emitted for popovers.
    case notifyPopulateAll = "notify::populate-all"
    /// Whether the natural height of the child should be calculated and propagated
    /// through the scrolled window’s requested natural height.
    /// 
    /// This is useful in cases where an attempt should be made to allocate exactly
    /// enough space for the natural size of the child.
    case notifyPropagateNaturalHeight = "notify::propagate-natural-height"
    /// Whether the natural width of the child should be calculated and propagated
    /// through the scrolled window’s requested natural width.
    /// 
    /// This is useful in cases where an attempt should be made to allocate exactly
    /// enough space for the natural size of the child.
    case notifyPropagateNaturalWidth = "notify::propagate-natural-width"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    case notifyShadowType = "notify::shadow-type"
    case notifyShowConnectToServer = "notify::show-connect-to-server"
    case notifyShowDesktop = "notify::show-desktop"
    case notifyShowEnterLocation = "notify::show-enter-location"
    case notifyShowOtherLocations = "notify::show-other-locations"
    case notifyShowRecent = "notify::show-recent"
    case notifyShowStarredLocation = "notify::show-starred-location"
    case notifyShowTrash = "notify::show-trash"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    case notifyVadjustment = "notify::vadjustment"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyVscrollbarPolicy = "notify::vscrollbar-policy"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
    case notifyWindowPlacement = "notify::window-placement"
    /// Whether "window-placement" should be used to determine the location
    /// of the contents with respect to the scrollbars.
    ///
    /// **window-placement-set is deprecated:**
    /// This value is ignored and
    /// #GtkScrolledWindow:window-placement value is always honored.
    case notifyWindowPlacementSet = "notify::window-placement-set"
}

public extension PlacesSidebarProtocol {
    /// Connect a `PlacesSidebarSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PlacesSidebarSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(places_sidebar_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension PlacesSidebarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPlacesSidebar` instance.
    var places_sidebar_ptr: UnsafeMutablePointer<GtkPlacesSidebar> { return ptr.assumingMemoryBound(to: GtkPlacesSidebar.self) }

    /// Applications may want to present some folders in the places sidebar if
    /// they could be immediately useful to users.  For example, a drawing
    /// program could add a “/usr/share/clipart” location when the sidebar is
    /// being used in an “Insert Clipart” dialog box.
    /// 
    /// This function adds the specified `location` to a special place for immutable
    /// shortcuts.  The shortcuts are application-specific; they are not shared
    /// across applications, and they are not persistent.  If this function
    /// is called multiple times with different locations, then they are added
    /// to the sidebar’s list in the same order as the function is called.
    func addShortcut(location: FileProtocol) {
        gtk_places_sidebar_add_shortcut(cast(places_sidebar_ptr), cast(location.ptr))
    
    }

    /// Returns the value previously set with gtk_places_sidebar_set_local_only().
    func getLocalOnly() -> Bool {
        let rv = gtk_places_sidebar_get_local_only(cast(places_sidebar_ptr))
        return Bool(rv != 0)
    }

    /// Gets the currently selected location in the `sidebar`. This can be `nil` when
    /// nothing is selected, for example, when gtk_places_sidebar_set_location() has
    /// been called with a location that is not among the sidebar’s list of places to
    /// show.
    /// 
    /// You can use this function to get the selection in the `sidebar`.  Also, if you
    /// connect to the `GtkPlacesSidebar`::populate-popup signal, you can use this
    /// function to get the location that is being referred to during the callbacks
    /// for your menu items.
    func getLocation() -> UnsafeMutablePointer<GFile>! {
        let rv = gtk_places_sidebar_get_location(cast(places_sidebar_ptr))
        return cast(rv)
    }

    /// This function queries the bookmarks added by the user to the places sidebar,
    /// and returns one of them.  This function is used by `GtkFileChooser` to implement
    /// the “Alt-1”, “Alt-2”, etc. shortcuts, which activate the cooresponding bookmark.
    func getNthBookmark(n: CInt) -> UnsafeMutablePointer<GFile>! {
        let rv = gtk_places_sidebar_get_nth_bookmark(cast(places_sidebar_ptr), gint(n))
        return cast(rv)
    }

    /// Gets the open flags.
    func getOpenFlags() -> GtkPlacesOpenFlags {
        let rv = gtk_places_sidebar_get_open_flags(cast(places_sidebar_ptr))
        return rv
    }

    /// Returns the value previously set with gtk_places_sidebar_set_show_connect_to_server()
    ///
    /// **get_show_connect_to_server is deprecated:**
    /// It is recommended to group this functionality with the drives
    ///     and network location under the new 'Other Location' item
    @available(*, deprecated) func getShowConnectToServer() -> Bool {
        let rv = gtk_places_sidebar_get_show_connect_to_server(cast(places_sidebar_ptr))
        return Bool(rv != 0)
    }

    /// Returns the value previously set with gtk_places_sidebar_set_show_desktop()
    func getShowDesktop() -> Bool {
        let rv = gtk_places_sidebar_get_show_desktop(cast(places_sidebar_ptr))
        return Bool(rv != 0)
    }

    /// Returns the value previously set with gtk_places_sidebar_set_show_enter_location()
    func getShowEnterLocation() -> Bool {
        let rv = gtk_places_sidebar_get_show_enter_location(cast(places_sidebar_ptr))
        return Bool(rv != 0)
    }

    /// Returns the value previously set with gtk_places_sidebar_set_show_other_locations()
    func getShowOtherLocations() -> Bool {
        let rv = gtk_places_sidebar_get_show_other_locations(cast(places_sidebar_ptr))
        return Bool(rv != 0)
    }

    /// Returns the value previously set with gtk_places_sidebar_set_show_recent()
    func getShowRecent() -> Bool {
        let rv = gtk_places_sidebar_get_show_recent(cast(places_sidebar_ptr))
        return Bool(rv != 0)
    }

    /// Returns the value previously set with gtk_places_sidebar_set_show_starred_location()
    func getShowStarredLocation() -> Bool {
        let rv = gtk_places_sidebar_get_show_starred_location(cast(places_sidebar_ptr))
        return Bool(rv != 0)
    }

    /// Returns the value previously set with gtk_places_sidebar_set_show_trash()
    func getShowTrash() -> Bool {
        let rv = gtk_places_sidebar_get_show_trash(cast(places_sidebar_ptr))
        return Bool(rv != 0)
    }

    /// Gets the list of shortcuts.
    func listShortcuts() -> SListRef! {
        let rv = gtk_places_sidebar_list_shortcuts(cast(places_sidebar_ptr))
        return cast(rv.map { SListRef($0) })
    }

    /// Removes an application-specific shortcut that has been previously been
    /// inserted with gtk_places_sidebar_add_shortcut().  If the `location` is not a
    /// shortcut in the sidebar, then nothing is done.
    func removeShortcut(location: FileProtocol) {
        gtk_places_sidebar_remove_shortcut(cast(places_sidebar_ptr), cast(location.ptr))
    
    }

    /// Make the GtkPlacesSidebar show drop targets, so it can show the available
    /// drop targets and a "new bookmark" row. This improves the Drag-and-Drop
    /// experience of the user and allows applications to show all available
    /// drop targets at once.
    /// 
    /// This needs to be called when the application is aware of an ongoing drag
    /// that might target the sidebar. The drop-targets-visible state will be unset
    /// automatically if the drag finishes in the GtkPlacesSidebar. You only need
    /// to unset the state when the drag ends on some other widget on your application.
    func setDropTargets(visible: Bool, context: DragContextProtocol) {
        gtk_places_sidebar_set_drop_targets_visible(cast(places_sidebar_ptr), gboolean(visible ? 1 : 0), cast(context.ptr))
    
    }

    /// Sets whether the `sidebar` should only show local files.
    func set(localOnly local_only: Bool) {
        gtk_places_sidebar_set_local_only(cast(places_sidebar_ptr), gboolean(local_only ? 1 : 0))
    
    }

    /// Sets the location that is being shown in the widgets surrounding the
    /// `sidebar`, for example, in a folder view in a file manager.  In turn, the
    /// `sidebar` will highlight that location if it is being shown in the list of
    /// places, or it will unhighlight everything if the `location` is not among the
    /// places in the list.
    func set(location: FileProtocol) {
        gtk_places_sidebar_set_location(cast(places_sidebar_ptr), cast(location.ptr))
    
    }

    /// Sets the way in which the calling application can open new locations from
    /// the places sidebar.  For example, some applications only open locations
    /// “directly” into their main view, while others may support opening locations
    /// in a new notebook tab or a new window.
    /// 
    /// This function is used to tell the places `sidebar` about the ways in which the
    /// application can open new locations, so that the sidebar can display (or not)
    /// the “Open in new tab” and “Open in new window” menu items as appropriate.
    /// 
    /// When the `GtkPlacesSidebar`::open-location signal is emitted, its flags
    /// argument will be set to one of the `flags` that was passed in
    /// gtk_places_sidebar_set_open_flags().
    /// 
    /// Passing 0 for `flags` will cause `GTK_PLACES_OPEN_NORMAL` to always be sent
    /// to callbacks for the “open-location” signal.
    func setOpen(flags: PlacesOpenFlags) {
        gtk_places_sidebar_set_open_flags(cast(places_sidebar_ptr), flags)
    
    }

    /// Sets whether the `sidebar` should show an item for connecting to a network server;
    /// this is off by default. An application may want to turn this on if it implements
    /// a way for the user to connect to network servers directly.
    /// 
    /// If you enable this, you should connect to the
    /// `GtkPlacesSidebar`::show-connect-to-server signal.
    ///
    /// **set_show_connect_to_server is deprecated:**
    /// It is recommended to group this functionality with the drives
    ///     and network location under the new 'Other Location' item
    @available(*, deprecated) func set(showConnectToServer show_connect_to_server: Bool) {
        gtk_places_sidebar_set_show_connect_to_server(cast(places_sidebar_ptr), gboolean(show_connect_to_server ? 1 : 0))
    
    }

    /// Sets whether the `sidebar` should show an item for the Desktop folder.
    /// The default value for this option is determined by the desktop
    /// environment and the user’s configuration, but this function can be
    /// used to override it on a per-application basis.
    func set(showDesktop show_desktop: Bool) {
        gtk_places_sidebar_set_show_desktop(cast(places_sidebar_ptr), gboolean(show_desktop ? 1 : 0))
    
    }

    /// Sets whether the `sidebar` should show an item for entering a location;
    /// this is off by default. An application may want to turn this on if manually
    /// entering URLs is an expected user action.
    /// 
    /// If you enable this, you should connect to the
    /// `GtkPlacesSidebar`::show-enter-location signal.
    func set(showEnterLocation show_enter_location: Bool) {
        gtk_places_sidebar_set_show_enter_location(cast(places_sidebar_ptr), gboolean(show_enter_location ? 1 : 0))
    
    }

    /// Sets whether the `sidebar` should show an item for the application to show
    /// an Other Locations view; this is off by default. When set to `true`, persistent
    /// devices such as hard drives are hidden, otherwise they are shown in the sidebar.
    /// An application may want to turn this on if it implements a way for the user to
    /// see and interact with drives and network servers directly.
    /// 
    /// If you enable this, you should connect to the
    /// `GtkPlacesSidebar`::show-other-locations signal.
    func set(showOtherLocations show_other_locations: Bool) {
        gtk_places_sidebar_set_show_other_locations(cast(places_sidebar_ptr), gboolean(show_other_locations ? 1 : 0))
    
    }

    /// Sets whether the `sidebar` should show an item for recent files.
    /// The default value for this option is determined by the desktop
    /// environment, but this function can be used to override it on a
    /// per-application basis.
    func set(showRecent show_recent: Bool) {
        gtk_places_sidebar_set_show_recent(cast(places_sidebar_ptr), gboolean(show_recent ? 1 : 0))
    
    }

    /// If you enable this, you should connect to the
    /// `GtkPlacesSidebar`::show-starred-location signal.
    func set(showStarredLocation show_starred_location: Bool) {
        gtk_places_sidebar_set_show_starred_location(cast(places_sidebar_ptr), gboolean(show_starred_location ? 1 : 0))
    
    }

    /// Sets whether the `sidebar` should show an item for the Trash location.
    func set(showTrash show_trash: Bool) {
        gtk_places_sidebar_set_show_trash(cast(places_sidebar_ptr), gboolean(show_trash ? 1 : 0))
    
    }
    /// Returns the value previously set with gtk_places_sidebar_set_local_only().
    var localOnly: Bool {
        /// Returns the value previously set with gtk_places_sidebar_set_local_only().
        get {
            let rv = gtk_places_sidebar_get_local_only(cast(places_sidebar_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the `sidebar` should only show local files.
        nonmutating set {
            gtk_places_sidebar_set_local_only(cast(places_sidebar_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    var location: UnsafeMutablePointer<GFile>! {
        /// Gets the currently selected location in the `sidebar`. This can be `nil` when
        /// nothing is selected, for example, when gtk_places_sidebar_set_location() has
        /// been called with a location that is not among the sidebar’s list of places to
        /// show.
        /// 
        /// You can use this function to get the selection in the `sidebar`.  Also, if you
        /// connect to the `GtkPlacesSidebar`::populate-popup signal, you can use this
        /// function to get the location that is being referred to during the callbacks
        /// for your menu items.
        get {
            let rv = gtk_places_sidebar_get_location(cast(places_sidebar_ptr))
            return cast(rv)
        }
        /// Sets the location that is being shown in the widgets surrounding the
        /// `sidebar`, for example, in a folder view in a file manager.  In turn, the
        /// `sidebar` will highlight that location if it is being shown in the list of
        /// places, or it will unhighlight everything if the `location` is not among the
        /// places in the list.
        nonmutating set {
            gtk_places_sidebar_set_location(cast(places_sidebar_ptr), cast(newValue))
        }
    }

    /// Gets the open flags.
    var openFlags: GtkPlacesOpenFlags {
        /// Gets the open flags.
        get {
            let rv = gtk_places_sidebar_get_open_flags(cast(places_sidebar_ptr))
            return rv
        }
        /// Sets the way in which the calling application can open new locations from
        /// the places sidebar.  For example, some applications only open locations
        /// “directly” into their main view, while others may support opening locations
        /// in a new notebook tab or a new window.
        /// 
        /// This function is used to tell the places `sidebar` about the ways in which the
        /// application can open new locations, so that the sidebar can display (or not)
        /// the “Open in new tab” and “Open in new window” menu items as appropriate.
        /// 
        /// When the `GtkPlacesSidebar`::open-location signal is emitted, its flags
        /// argument will be set to one of the `flags` that was passed in
        /// gtk_places_sidebar_set_open_flags().
        /// 
        /// Passing 0 for `flags` will cause `GTK_PLACES_OPEN_NORMAL` to always be sent
        /// to callbacks for the “open-location” signal.
        nonmutating set {
            gtk_places_sidebar_set_open_flags(cast(places_sidebar_ptr), newValue)
        }
    }

    /// Returns the value previously set with gtk_places_sidebar_set_show_connect_to_server()
    ///
    /// **get_show_connect_to_server is deprecated:**
    /// It is recommended to group this functionality with the drives
    ///     and network location under the new 'Other Location' item
    var showConnectToServer: Bool {
        /// Returns the value previously set with gtk_places_sidebar_set_show_connect_to_server()
        ///
        /// **get_show_connect_to_server is deprecated:**
        /// It is recommended to group this functionality with the drives
        ///     and network location under the new 'Other Location' item
        @available(*, deprecated) get {
            let rv = gtk_places_sidebar_get_show_connect_to_server(cast(places_sidebar_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the `sidebar` should show an item for connecting to a network server;
        /// this is off by default. An application may want to turn this on if it implements
        /// a way for the user to connect to network servers directly.
        /// 
        /// If you enable this, you should connect to the
        /// `GtkPlacesSidebar`::show-connect-to-server signal.
        ///
        /// **set_show_connect_to_server is deprecated:**
        /// It is recommended to group this functionality with the drives
        ///     and network location under the new 'Other Location' item
        @available(*, deprecated) nonmutating set {
            gtk_places_sidebar_set_show_connect_to_server(cast(places_sidebar_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the value previously set with gtk_places_sidebar_set_show_desktop()
    var showDesktop: Bool {
        /// Returns the value previously set with gtk_places_sidebar_set_show_desktop()
        get {
            let rv = gtk_places_sidebar_get_show_desktop(cast(places_sidebar_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the `sidebar` should show an item for the Desktop folder.
        /// The default value for this option is determined by the desktop
        /// environment and the user’s configuration, but this function can be
        /// used to override it on a per-application basis.
        nonmutating set {
            gtk_places_sidebar_set_show_desktop(cast(places_sidebar_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the value previously set with gtk_places_sidebar_set_show_enter_location()
    var showEnterLocation: Bool {
        /// Returns the value previously set with gtk_places_sidebar_set_show_enter_location()
        get {
            let rv = gtk_places_sidebar_get_show_enter_location(cast(places_sidebar_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the `sidebar` should show an item for entering a location;
        /// this is off by default. An application may want to turn this on if manually
        /// entering URLs is an expected user action.
        /// 
        /// If you enable this, you should connect to the
        /// `GtkPlacesSidebar`::show-enter-location signal.
        nonmutating set {
            gtk_places_sidebar_set_show_enter_location(cast(places_sidebar_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the value previously set with gtk_places_sidebar_set_show_other_locations()
    var showOtherLocations: Bool {
        /// Returns the value previously set with gtk_places_sidebar_set_show_other_locations()
        get {
            let rv = gtk_places_sidebar_get_show_other_locations(cast(places_sidebar_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the `sidebar` should show an item for the application to show
        /// an Other Locations view; this is off by default. When set to `true`, persistent
        /// devices such as hard drives are hidden, otherwise they are shown in the sidebar.
        /// An application may want to turn this on if it implements a way for the user to
        /// see and interact with drives and network servers directly.
        /// 
        /// If you enable this, you should connect to the
        /// `GtkPlacesSidebar`::show-other-locations signal.
        nonmutating set {
            gtk_places_sidebar_set_show_other_locations(cast(places_sidebar_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the value previously set with gtk_places_sidebar_set_show_recent()
    var showRecent: Bool {
        /// Returns the value previously set with gtk_places_sidebar_set_show_recent()
        get {
            let rv = gtk_places_sidebar_get_show_recent(cast(places_sidebar_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the `sidebar` should show an item for recent files.
        /// The default value for this option is determined by the desktop
        /// environment, but this function can be used to override it on a
        /// per-application basis.
        nonmutating set {
            gtk_places_sidebar_set_show_recent(cast(places_sidebar_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the value previously set with gtk_places_sidebar_set_show_starred_location()
    var showStarredLocation: Bool {
        /// Returns the value previously set with gtk_places_sidebar_set_show_starred_location()
        get {
            let rv = gtk_places_sidebar_get_show_starred_location(cast(places_sidebar_ptr))
            return Bool(rv != 0)
        }
        /// If you enable this, you should connect to the
        /// `GtkPlacesSidebar`::show-starred-location signal.
        nonmutating set {
            gtk_places_sidebar_set_show_starred_location(cast(places_sidebar_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the value previously set with gtk_places_sidebar_set_show_trash()
    var showTrash: Bool {
        /// Returns the value previously set with gtk_places_sidebar_set_show_trash()
        get {
            let rv = gtk_places_sidebar_get_show_trash(cast(places_sidebar_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the `sidebar` should show an item for the Trash location.
        nonmutating set {
            gtk_places_sidebar_set_show_trash(cast(places_sidebar_ptr), gboolean(newValue ? 1 : 0))
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
/// attached to a widget, passed at construction time on gtk_popover_new(),
/// or updated afterwards through gtk_popover_set_relative_to(), by
/// default they will point to the whole widget area, although this
/// behavior can be changed through gtk_popover_set_pointing_to().
/// 
/// The position of a popover relative to the widget it is attached to
/// can also be changed through gtk_popover_set_position().
/// 
/// By default, `GtkPopover` performs a GTK+ grab, in order to ensure
/// input events get redirected to it while it is shown, and also so
/// the popover is dismissed in the expected situations (clicks outside
/// the popover, or the Esc key being pressed). If no such modal behavior
/// is desired on a popover, gtk_popover_set_modal() may be called on it
/// to tweak its behavior.
/// 
/// ``` GtkPopover as menu replacement
/// 
/// GtkPopover is often used to replace menus. To facilitate this, it
/// supports being populated from a `GMenuModel`, using
/// gtk_popover_new_from_model(). In addition to all the regular menu
/// model features, this function supports rendering sections in the
/// model in a more compact form, as a row of icon buttons instead of
/// menu items.
/// 
/// To use this rendering, set the ”display-hint” attribute of the
/// section to ”horizontal-buttons” and set the icons of your items
/// with the ”verb-icon” attribute.
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
/// 
/// `` CSS nodes
/// 
/// GtkPopover has a single css node called popover. It always gets the
/// .background style class and it gets the .menu style class if it is
/// menu-like (e.g. `GtkPopoverMenu` or created using gtk_popover_new_from_model().
/// 
/// Particular uses of GtkPopover, such as touch selection popups
/// or magnifiers in `GtkEntry` or `GtkTextView` get style classes
/// like .touch-selection or .magnifier to differentiate from
/// plain popovers.
public protocol PopoverProtocol: BinProtocol {
    /// Untyped pointer to the underlying `GtkPopover` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPopover` instance.
    var popover_ptr: UnsafeMutablePointer<GtkPopover> { get }
}

/// The `PopoverRef` type acts as a lightweight Swift reference to an underlying `GtkPopover` instance.
/// It exposes methods that can operate on this data type through `PopoverProtocol` conformance.
/// Use `PopoverRef` only as an `unowned` reference to an existing `GtkPopover` instance.
///
/// GtkPopover is a bubble-like context window, primarily meant to
/// provide context-dependent information or options. Popovers are
/// attached to a widget, passed at construction time on gtk_popover_new(),
/// or updated afterwards through gtk_popover_set_relative_to(), by
/// default they will point to the whole widget area, although this
/// behavior can be changed through gtk_popover_set_pointing_to().
/// 
/// The position of a popover relative to the widget it is attached to
/// can also be changed through gtk_popover_set_position().
/// 
/// By default, `GtkPopover` performs a GTK+ grab, in order to ensure
/// input events get redirected to it while it is shown, and also so
/// the popover is dismissed in the expected situations (clicks outside
/// the popover, or the Esc key being pressed). If no such modal behavior
/// is desired on a popover, gtk_popover_set_modal() may be called on it
/// to tweak its behavior.
/// 
/// ``` GtkPopover as menu replacement
/// 
/// GtkPopover is often used to replace menus. To facilitate this, it
/// supports being populated from a `GMenuModel`, using
/// gtk_popover_new_from_model(). In addition to all the regular menu
/// model features, this function supports rendering sections in the
/// model in a more compact form, as a row of icon buttons instead of
/// menu items.
/// 
/// To use this rendering, set the ”display-hint” attribute of the
/// section to ”horizontal-buttons” and set the icons of your items
/// with the ”verb-icon” attribute.
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
/// 
/// `` CSS nodes
/// 
/// GtkPopover has a single css node called popover. It always gets the
/// .background style class and it gets the .menu style class if it is
/// menu-like (e.g. `GtkPopoverMenu` or created using gtk_popover_new_from_model().
/// 
/// Particular uses of GtkPopover, such as touch selection popups
/// or magnifiers in `GtkEntry` or `GtkTextView` get style classes
/// like .touch-selection or .magnifier to differentiate from
/// plain popovers.
public struct PopoverRef: PopoverProtocol {
    /// Untyped pointer to the underlying `GtkPopover` instance.
    /// For type-safe access, use the generated, typed pointer `popover_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PopoverRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPopover>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PopoverProtocol`
    init<T: PopoverProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new popover to point to `relative_to`
    init( relative_to: WidgetProtocol) {
        let rv = gtk_popover_new(cast(relative_to.ptr))
        self.init(cast(rv))
    }

    /// Creates a `GtkPopover` and populates it according to
    /// `model`. The popover is pointed to the `relative_to` widget.
    /// 
    /// The created buttons are connected to actions found in the
    /// `GtkApplicationWindow` to which the popover belongs - typically
    /// by means of being attached to a widget that is contained within
    /// the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using gtk_widget_insert_action_group()
    /// on the menus attach widget or on any of its parent widgets.
    init(model relative_to: WidgetProtocol, model: MenuModelProtocol) {
        let rv = gtk_popover_new_from_model(cast(relative_to.ptr), cast(model.ptr))
        self.init(cast(rv))
    }
    /// Creates a `GtkPopover` and populates it according to
    /// `model`. The popover is pointed to the `relative_to` widget.
    /// 
    /// The created buttons are connected to actions found in the
    /// `GtkApplicationWindow` to which the popover belongs - typically
    /// by means of being attached to a widget that is contained within
    /// the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using gtk_widget_insert_action_group()
    /// on the menus attach widget or on any of its parent widgets.
    static func newFrom(model relative_to: WidgetProtocol, model: MenuModelProtocol) -> PopoverRef! {
        let rv = gtk_popover_new_from_model(cast(relative_to.ptr), cast(model.ptr))
        return rv.map { PopoverRef(cast($0)) }
    }
}

/// The `Popover` type acts as a reference-counted owner of an underlying `GtkPopover` instance.
/// It provides the methods that can operate on this data type through `PopoverProtocol` conformance.
/// Use `Popover` as a strong reference or owner of a `GtkPopover` instance.
///
/// GtkPopover is a bubble-like context window, primarily meant to
/// provide context-dependent information or options. Popovers are
/// attached to a widget, passed at construction time on gtk_popover_new(),
/// or updated afterwards through gtk_popover_set_relative_to(), by
/// default they will point to the whole widget area, although this
/// behavior can be changed through gtk_popover_set_pointing_to().
/// 
/// The position of a popover relative to the widget it is attached to
/// can also be changed through gtk_popover_set_position().
/// 
/// By default, `GtkPopover` performs a GTK+ grab, in order to ensure
/// input events get redirected to it while it is shown, and also so
/// the popover is dismissed in the expected situations (clicks outside
/// the popover, or the Esc key being pressed). If no such modal behavior
/// is desired on a popover, gtk_popover_set_modal() may be called on it
/// to tweak its behavior.
/// 
/// ``` GtkPopover as menu replacement
/// 
/// GtkPopover is often used to replace menus. To facilitate this, it
/// supports being populated from a `GMenuModel`, using
/// gtk_popover_new_from_model(). In addition to all the regular menu
/// model features, this function supports rendering sections in the
/// model in a more compact form, as a row of icon buttons instead of
/// menu items.
/// 
/// To use this rendering, set the ”display-hint” attribute of the
/// section to ”horizontal-buttons” and set the icons of your items
/// with the ”verb-icon” attribute.
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
/// 
/// `` CSS nodes
/// 
/// GtkPopover has a single css node called popover. It always gets the
/// .background style class and it gets the .menu style class if it is
/// menu-like (e.g. `GtkPopoverMenu` or created using gtk_popover_new_from_model().
/// 
/// Particular uses of GtkPopover, such as touch selection popups
/// or magnifiers in `GtkEntry` or `GtkTextView` get style classes
/// like .touch-selection or .magnifier to differentiate from
/// plain popovers.
open class Popover: Bin, PopoverProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Popover` instance.
    public init(_ op: UnsafeMutablePointer<GtkPopover>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `PopoverProtocol`
    /// Will retain `GtkPopover`.
    public convenience init<T: PopoverProtocol>(_ other: T) {
        self.init(cast(other.popover_ptr))
        g_object_ref(cast(popover_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPopover.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPopover.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPopover.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPopover>(opaquePointer))
    }

    /// Creates a new popover to point to `relative_to`
    public convenience init( relative_to: WidgetProtocol) {
        let rv = gtk_popover_new(cast(relative_to.ptr))
        self.init(cast(rv))
    }

    /// Creates a `GtkPopover` and populates it according to
    /// `model`. The popover is pointed to the `relative_to` widget.
    /// 
    /// The created buttons are connected to actions found in the
    /// `GtkApplicationWindow` to which the popover belongs - typically
    /// by means of being attached to a widget that is contained within
    /// the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using gtk_widget_insert_action_group()
    /// on the menus attach widget or on any of its parent widgets.
    public convenience init(model relative_to: WidgetProtocol, model: MenuModelProtocol) {
        let rv = gtk_popover_new_from_model(cast(relative_to.ptr), cast(model.ptr))
        self.init(cast(rv))
    }

    /// Creates a `GtkPopover` and populates it according to
    /// `model`. The popover is pointed to the `relative_to` widget.
    /// 
    /// The created buttons are connected to actions found in the
    /// `GtkApplicationWindow` to which the popover belongs - typically
    /// by means of being attached to a widget that is contained within
    /// the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using gtk_widget_insert_action_group()
    /// on the menus attach widget or on any of its parent widgets.
    public static func newFrom(model relative_to: WidgetProtocol, model: MenuModelProtocol) -> Popover! {
        let rv = gtk_popover_new_from_model(cast(relative_to.ptr), cast(model.ptr))
        return rv.map { Popover(cast($0)) }
    }

}

public enum PopoverPropertyName: String, PropertyNameProtocol {
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
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Sets a constraint for the popover position.
    case constrainTo = "constrain-to"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginTop = "margin-top"
    /// Sets whether the popover is modal (so other elements in the window do not
    /// receive input while the popover is visible).
    case modal = "modal"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    /// Marks a specific rectangle to be pointed.
    case pointingTo = "pointing-to"
    /// Sets the preferred position of the popover.
    case position = "position"
    case receivesDefault = "receives-default"
    /// Sets the attached widget.
    case relativeTo = "relative-to"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// Whether show/hide transitions are enabled for this popover.
    ///
    /// **transitions-enabled is deprecated:**
    /// You can show or hide the popover without transitions
    ///   using gtk_widget_show() and gtk_widget_hide() while gtk_popover_popup()
    ///   and gtk_popover_popdown() will use transitions.
    case transitionsEnabled = "transitions-enabled"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PopoverPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(popover_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum PopoverSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The ::button-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The ::button-release-event signal will be emitted when a button
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
    /// The ::child-notify signal is emitted for each
    /// [child property][child-properties]  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// This signal is emitted when the popover is dismissed either through
    /// API or user interaction.
    case closed = "closed"
    /// The ::composited-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See gdk_screen_is_composited().
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The ::configure-event signal will be emitted when the size, position or
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
    /// The ::delete-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting gtk_widget_hide_on_delete() to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The ::destroy-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The ::direction-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The ::drag-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use g_signal_connect_after() to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The ::drag-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The ::drag-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See gtk_selection_data_set() and
    /// gtk_selection_data_set_text().
    case dragDataGet = "drag-data-get"
    /// The ::drag-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call gdk_drag_status() and not finish the drag.
    /// If the data was received in response to a `GtkWidget`::drag-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// gtk_drag_finish(), setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call gdk_drag_status() or gtk_drag_finish().
    /// 
    /// The handler may inspect the selected action with
    /// gdk_drag_context_get_selected_action() before calling
    /// gtk_drag_finish(), e.g. to implement `GDK_ACTION_ASK` as
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
    /// The ::drag-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that gtk_drag_finish() is called to let the source know that
    /// the drop is done. The call to gtk_drag_finish() can be done either
    /// directly or in a `GtkWidget`::drag-data-received handler which gets
    /// triggered by calling gtk_drag_get_data() to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The ::drag-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget`::drag-begin.
    case dragEnd = "drag-end"
    /// The ::drag-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The ::drag-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget`::drag-motion, e.g. undo highlighting
    /// with gtk_drag_unhighlight().
    /// 
    /// 
    /// Likewise, the `GtkWidget`::drag-leave signal is also emitted before the
    /// ::drag-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget`::drag-motion signal handler.
    case dragLeave = "drag-leave"
    /// The ::drag-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling gdk_drag_status().
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling gtk_drag_get_data() and
    /// defer the gdk_drag_status() call to the `GtkWidget`::drag-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to gtk_drag_dest_set()
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget`::drag-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with gtk_drag_highlight().
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
    /// gtk_widget_get_allocated_width() and
    /// gtk_widget_get_allocated_height().
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling cairo_save()
    /// before and cairo_restore() after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
    /// get a finer-grained representation of the dirty region with
    /// cairo_copy_clip_rectangle_list().
    case draw = "draw"
    /// The ::enter-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic ::event signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget`::key-press-event) and finally a generic
    /// `GtkWidget`::event-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget`::event signal and (optionally)
    /// the second more specific signal, ::event-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The ::focus-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The ::focus-out-event signal will be emitted when the keyboard focus
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
    /// The ::grab-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a gtk_grab_add() when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The ::hide signal is emitted when `widget` is hidden, for example with
    /// gtk_widget_hide().
    case hide = "hide"
    /// The ::hierarchy-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The ::key-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The ::key-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See gtk_widget_keynav_failed() for details.
    case keynavFailed = "keynav-failed"
    /// The ::leave-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The ::map signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// gtk_widget_set_visible()) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget`::map-event will
    /// be emitted.
    /// 
    /// The ::map signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget`::unmap.
    case map = "map"
    /// The ::map-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The ::motion-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The ::parent-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist][checklist-popup-menu]
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The ::property-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget`:has-tooltip is `true` and the hover timeout
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
    /// The ::realize signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that gtk_widget_realize() has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The ::screen-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The ::scroll-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The ::selection-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The ::selection-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The ::show signal is emitted when `widget` is shown, for example with
    /// gtk_widget_show().
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The ::state-changed signal is emitted when the widget state changes.
    /// See gtk_widget_get_state().
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The ::state-flags-changed signal is emitted when the widget state
    /// changes, see gtk_widget_get_state_flags().
    case stateFlagsChanged = "state-flags-changed"
    /// The ::style-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// gtk_widget_modify_base() also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget`::style-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The ::style-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext`::changed signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by gtk_widget_get_style_context().
    /// 
    /// Note that style-modifying functions like gtk_widget_override_color() also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The ::unmap signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As ::unmap indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The ::unmap-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The ::unrealize signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that gtk_widget_unrealize() has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The ::visibility-notify-event will be emitted when the `widget`'s
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
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The ::window-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
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
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Sets a constraint for the popover position.
    case notifyConstrainTo = "notify::constrain-to"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginTop = "notify::margin-top"
    /// Sets whether the popover is modal (so other elements in the window do not
    /// receive input while the popover is visible).
    case notifyModal = "notify::modal"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    /// Marks a specific rectangle to be pointed.
    case notifyPointingTo = "notify::pointing-to"
    /// Sets the preferred position of the popover.
    case notifyPosition = "notify::position"
    case notifyReceivesDefault = "notify::receives-default"
    /// Sets the attached widget.
    case notifyRelativeTo = "notify::relative-to"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// Whether show/hide transitions are enabled for this popover.
    ///
    /// **transitions-enabled is deprecated:**
    /// You can show or hide the popover without transitions
    ///   using gtk_widget_show() and gtk_widget_hide() while gtk_popover_popup()
    ///   and gtk_popover_popdown() will use transitions.
    case notifyTransitionsEnabled = "notify::transitions-enabled"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension PopoverProtocol {
    /// Connect a `PopoverSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PopoverSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(popover_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension PopoverProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPopover` instance.
    var popover_ptr: UnsafeMutablePointer<GtkPopover> { return ptr.assumingMemoryBound(to: GtkPopover.self) }

    /// Establishes a binding between a `GtkPopover` and a `GMenuModel`.
    /// 
    /// The contents of `popover` are removed and then refilled with menu items
    /// according to `model`.  When `model` changes, `popover` is updated.
    /// Calling this function twice on `popover` with different `model` will
    /// cause the first binding to be replaced with a binding to the new
    /// model. If `model` is `nil` then any previous binding is undone and
    /// all children are removed.
    /// 
    /// If `action_namespace` is non-`nil` then the effect is as if all
    /// actions mentioned in the `model` have their names prefixed with the
    /// namespace, plus a dot.  For example, if the action “quit” is
    /// mentioned and `action_namespace` is “app” then the effective action
    /// name is “app.quit”.
    /// 
    /// This function uses `GtkActionable` to define the action name and
    /// target values on the created menu items.  If you want to use an
    /// action group other than “app” and “win”, or if you want to use a
    /// `GtkMenuShell` outside of a `GtkApplicationWindow`, then you will need
    /// to attach your own action group to the widget hierarchy using
    /// gtk_widget_insert_action_group().  As an example, if you created a
    /// group with a “quit” action and inserted it with the name “mygroup”
    /// then you would use the action name “mygroup.quit” in your
    /// `GMenuModel`.
    func bind(model: MenuModelProtocol, actionNamespace action_namespace: UnsafePointer<gchar>) {
        gtk_popover_bind_model(cast(popover_ptr), cast(model.ptr), action_namespace)
    
    }

    /// Returns the constraint for placing this popover.
    /// See gtk_popover_set_constrain_to().
    func getConstrainTo() -> GtkPopoverConstraint {
        let rv = gtk_popover_get_constrain_to(cast(popover_ptr))
        return rv
    }

    /// Gets the widget that should be set as the default while
    /// the popover is shown.
    func getDefaultWidget() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_popover_get_default_widget(cast(popover_ptr))
        return cast(rv)
    }

    /// Returns whether the popover is modal, see gtk_popover_set_modal to
    /// see the implications of this.
    func getModal() -> Bool {
        let rv = gtk_popover_get_modal(cast(popover_ptr))
        return Bool(rv != 0)
    }

    /// If a rectangle to point to has been set, this function will
    /// return `true` and fill in `rect` with such rectangle, otherwise
    /// it will return `false` and fill in `rect` with the attached
    /// widget coordinates.
    func getPointingTo(rect: Gdk.RectangleProtocol) -> Bool {
        let rv = gtk_popover_get_pointing_to(cast(popover_ptr), cast(rect.ptr))
        return Bool(rv != 0)
    }

    /// Returns the preferred position of `popover`.
    func getPosition() -> GtkPositionType {
        let rv = gtk_popover_get_position(cast(popover_ptr))
        return rv
    }

    /// Returns the widget `popover` is currently attached to
    func getRelativeTo() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_popover_get_relative_to(cast(popover_ptr))
        return cast(rv)
    }

    /// Returns whether show/hide transitions are enabled on this popover.
    ///
    /// **get_transitions_enabled is deprecated:**
    /// You can show or hide the popover without transitions
    ///   using gtk_widget_show() and gtk_widget_hide() while gtk_popover_popup()
    ///   and gtk_popover_popdown() will use transitions.
    @available(*, deprecated) func getTransitionsEnabled() -> Bool {
        let rv = gtk_popover_get_transitions_enabled(cast(popover_ptr))
        return Bool(rv != 0)
    }

    /// Pops `popover` down.This is different than a gtk_widget_hide() call
    /// in that it shows the popover with a transition. If you want to hide
    /// the popover without a transition, use gtk_widget_hide().
    func popdown() {
        gtk_popover_popdown(cast(popover_ptr))
    
    }

    /// Pops `popover` up. This is different than a gtk_widget_show() call
    /// in that it shows the popover with a transition. If you want to show
    /// the popover without a transition, use gtk_widget_show().
    func popup() {
        gtk_popover_popup(cast(popover_ptr))
    
    }

    /// Sets a constraint for positioning this popover.
    /// 
    /// Note that not all platforms support placing popovers freely,
    /// and may already impose constraints.
    func setConstrainTo(constraint: PopoverConstraint) {
        gtk_popover_set_constrain_to(cast(popover_ptr), constraint)
    
    }

    /// Sets the widget that should be set as default widget while
    /// the popover is shown (see gtk_window_set_default()). `GtkPopover`
    /// remembers the previous default widget and reestablishes it
    /// when the popover is dismissed.
    func setDefault(widget: WidgetProtocol) {
        gtk_popover_set_default_widget(cast(popover_ptr), cast(widget.ptr))
    
    }

    /// Sets whether `popover` is modal, a modal popover will grab all input
    /// within the toplevel and grab the keyboard focus on it when being
    /// displayed. Clicking outside the popover area or pressing Esc will
    /// dismiss the popover and ungrab input.
    func set(modal: Bool) {
        gtk_popover_set_modal(cast(popover_ptr), gboolean(modal ? 1 : 0))
    
    }

    /// Sets the rectangle that `popover` will point to, in the
    /// coordinate space of the widget `popover` is attached to,
    /// see gtk_popover_set_relative_to().
    func setPointingTo(rect: Gdk.RectangleProtocol) {
        gtk_popover_set_pointing_to(cast(popover_ptr), cast(rect.ptr))
    
    }

    /// Sets the preferred position for `popover` to appear. If the `popover`
    /// is currently visible, it will be immediately updated.
    /// 
    /// This preference will be respected where possible, although
    /// on lack of space (eg. if close to the window edges), the
    /// `GtkPopover` may choose to appear on the opposite side
    func set(position: PositionType) {
        gtk_popover_set_position(cast(popover_ptr), position)
    
    }

    /// Sets a new widget to be attached to `popover`. If `popover` is
    /// visible, the position will be updated.
    /// 
    /// Note: the ownership of popovers is always given to their `relative_to`
    /// widget, so if `relative_to` is set to `nil` on an attached `popover`, it
    /// will be detached from its previous widget, and consequently destroyed
    /// unless extra references are kept.
    func set(relativeTo relative_to: WidgetProtocol) {
        gtk_popover_set_relative_to(cast(popover_ptr), cast(relative_to.ptr))
    
    }

    /// Sets whether show/hide transitions are enabled on this popover
    ///
    /// **set_transitions_enabled is deprecated:**
    /// You can show or hide the popover without transitions
    ///   using gtk_widget_show() and gtk_widget_hide() while gtk_popover_popup()
    ///   and gtk_popover_popdown() will use transitions.
    @available(*, deprecated) func set(transitionsEnabled transitions_enabled: Bool) {
        gtk_popover_set_transitions_enabled(cast(popover_ptr), gboolean(transitions_enabled ? 1 : 0))
    
    }
    /// Returns the constraint for placing this popover.
    /// See gtk_popover_set_constrain_to().
    var constrainTo: GtkPopoverConstraint {
        /// Returns the constraint for placing this popover.
        /// See gtk_popover_set_constrain_to().
        get {
            let rv = gtk_popover_get_constrain_to(cast(popover_ptr))
            return rv
        }
        /// Sets a constraint for positioning this popover.
        /// 
        /// Note that not all platforms support placing popovers freely,
        /// and may already impose constraints.
        nonmutating set {
            gtk_popover_set_constrain_to(cast(popover_ptr), newValue)
        }
    }

    /// Gets the widget that should be set as the default while
    /// the popover is shown.
    var defaultWidget: UnsafeMutablePointer<GtkWidget>! {
        /// Gets the widget that should be set as the default while
        /// the popover is shown.
        get {
            let rv = gtk_popover_get_default_widget(cast(popover_ptr))
            return cast(rv)
        }
        /// Sets the widget that should be set as default widget while
        /// the popover is shown (see gtk_window_set_default()). `GtkPopover`
        /// remembers the previous default widget and reestablishes it
        /// when the popover is dismissed.
        nonmutating set {
            gtk_popover_set_default_widget(cast(popover_ptr), cast(newValue))
        }
    }

    /// Sets whether the popover is modal (so other elements in the window do not
    /// receive input while the popover is visible).
    var modal: Bool {
        /// Returns whether the popover is modal, see gtk_popover_set_modal to
        /// see the implications of this.
        get {
            let rv = gtk_popover_get_modal(cast(popover_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether `popover` is modal, a modal popover will grab all input
        /// within the toplevel and grab the keyboard focus on it when being
        /// displayed. Clicking outside the popover area or pressing Esc will
        /// dismiss the popover and ungrab input.
        nonmutating set {
            gtk_popover_set_modal(cast(popover_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Sets the preferred position of the popover.
    var position: GtkPositionType {
        /// Returns the preferred position of `popover`.
        get {
            let rv = gtk_popover_get_position(cast(popover_ptr))
            return rv
        }
        /// Sets the preferred position for `popover` to appear. If the `popover`
        /// is currently visible, it will be immediately updated.
        /// 
        /// This preference will be respected where possible, although
        /// on lack of space (eg. if close to the window edges), the
        /// `GtkPopover` may choose to appear on the opposite side
        nonmutating set {
            gtk_popover_set_position(cast(popover_ptr), newValue)
        }
    }

    /// Returns the widget `popover` is currently attached to
    var relativeTo: UnsafeMutablePointer<GtkWidget>! {
        /// Returns the widget `popover` is currently attached to
        get {
            let rv = gtk_popover_get_relative_to(cast(popover_ptr))
            return cast(rv)
        }
        /// Sets a new widget to be attached to `popover`. If `popover` is
        /// visible, the position will be updated.
        /// 
        /// Note: the ownership of popovers is always given to their `relative_to`
        /// widget, so if `relative_to` is set to `nil` on an attached `popover`, it
        /// will be detached from its previous widget, and consequently destroyed
        /// unless extra references are kept.
        nonmutating set {
            gtk_popover_set_relative_to(cast(popover_ptr), cast(newValue))
        }
    }

    /// Returns whether show/hide transitions are enabled on this popover.
    ///
    /// **get_transitions_enabled is deprecated:**
    /// You can show or hide the popover without transitions
    ///   using gtk_widget_show() and gtk_widget_hide() while gtk_popover_popup()
    ///   and gtk_popover_popdown() will use transitions.
    var transitionsEnabled: Bool {
        /// Returns whether show/hide transitions are enabled on this popover.
        ///
        /// **get_transitions_enabled is deprecated:**
        /// You can show or hide the popover without transitions
        ///   using gtk_widget_show() and gtk_widget_hide() while gtk_popover_popup()
        ///   and gtk_popover_popdown() will use transitions.
        @available(*, deprecated) get {
            let rv = gtk_popover_get_transitions_enabled(cast(popover_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether show/hide transitions are enabled on this popover
        ///
        /// **set_transitions_enabled is deprecated:**
        /// You can show or hide the popover without transitions
        ///   using gtk_widget_show() and gtk_widget_hide() while gtk_popover_popup()
        ///   and gtk_popover_popdown() will use transitions.
        @available(*, deprecated) nonmutating set {
            gtk_popover_set_transitions_enabled(cast(popover_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



// MARK: - PopoverAccessible Class

/// The `PopoverAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkPopoverAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PopoverAccessible`.
/// Alternatively, use `PopoverAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PopoverAccessibleProtocol: ContainerAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkPopoverAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPopoverAccessible` instance.
    var popover_accessible_ptr: UnsafeMutablePointer<GtkPopoverAccessible> { get }
}

/// The `PopoverAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkPopoverAccessible` instance.
/// It exposes methods that can operate on this data type through `PopoverAccessibleProtocol` conformance.
/// Use `PopoverAccessibleRef` only as an `unowned` reference to an existing `GtkPopoverAccessible` instance.
///

public struct PopoverAccessibleRef: PopoverAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkPopoverAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `popover_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PopoverAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPopoverAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PopoverAccessibleProtocol`
    init<T: PopoverAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PopoverAccessible` type acts as a reference-counted owner of an underlying `GtkPopoverAccessible` instance.
/// It provides the methods that can operate on this data type through `PopoverAccessibleProtocol` conformance.
/// Use `PopoverAccessible` as a strong reference or owner of a `GtkPopoverAccessible` instance.
///

open class PopoverAccessible: ContainerAccessible, PopoverAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PopoverAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkPopoverAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `PopoverAccessibleProtocol`
    /// Will retain `GtkPopoverAccessible`.
    public convenience init<T: PopoverAccessibleProtocol>(_ other: T) {
        self.init(cast(other.popover_accessible_ptr))
        g_object_ref(cast(popover_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPopoverAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPopoverAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPopoverAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPopoverAccessible>(opaquePointer))
    }



}

public enum PopoverAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension PopoverAccessibleProtocol {
    /// Bind a `PopoverAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PopoverAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(popover_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum PopoverAccessibleSignalName: String, SignalNameProtocol {
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
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
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

public extension PopoverAccessibleProtocol {
    /// Connect a `PopoverAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PopoverAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(popover_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension PopoverAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPopoverAccessible` instance.
    var popover_accessible_ptr: UnsafeMutablePointer<GtkPopoverAccessible> { return ptr.assumingMemoryBound(to: GtkPopoverAccessible.self) }

}



// MARK: - PopoverMenu Class

/// The `PopoverMenuProtocol` protocol exposes the methods and properties of an underlying `GtkPopoverMenu` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PopoverMenu`.
/// Alternatively, use `PopoverMenuRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkPopoverMenu is a subclass of `GtkPopover` that treats its
/// children like menus and allows switching between them. It is
/// meant to be used primarily together with `GtkModelButton`, but
/// any widget can be used, such as `GtkSpinButton` or `GtkScale`.
/// In this respect, GtkPopoverMenu is more flexible than popovers
/// that are created from a `GMenuModel` with gtk_popover_new_from_model().
/// 
/// To add a child as a submenu, set the `GtkPopoverMenu`:submenu
/// child property to the name of the submenu. To let the user open
/// this submenu, add a `GtkModelButton` whose `GtkModelButton`:menu-name
/// property is set to the name you've given to the submenu.
/// 
/// By convention, the first child of a submenu should be a `GtkModelButton`
/// to switch back to the parent menu. Such a button should use the
/// `GtkModelButton`:inverted and `GtkModelButton`:centered properties
/// to achieve a title-like appearance and place the submenu indicator
/// at the opposite side. To switch back to the main menu, use "main"
/// as the menu name.
/// 
/// `` Example
/// 
/// ```
/// <object class="GtkPopoverMenu">
///   <child>
///     <object class="GtkBox">
///       <property name="visible">True</property>
///       <property name="margin">10</property>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">win.frob</property>
///           <property name="text" translatable="yes">Frob</property>
///         </object>
///       </child>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="menu-name">more</property>
///           <property name="text" translatable="yes">More</property>
///         </object>
///       </child>
///     </object>
///   </child>
///   <child>
///     <object class="GtkBox">
///       <property name="visible">True</property>
///       <property name="margin">10</property>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">win.foo</property>
///           <property name="text" translatable="yes">Foo</property>
///         </object>
///       </child>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">win.bar</property>
///           <property name="text" translatable="yes">Bar</property>
///         </object>
///       </child>
///     </object>
///     <packing>
///       <property name="submenu">more</property>
///     </packing>
///   </child>
/// </object>
/// ```
/// 
/// 
/// Just like normal popovers created using gtk_popover_new_from_model,
/// `GtkPopoverMenu` instances have a single css node called "popover"
/// and get the .menu style class.
public protocol PopoverMenuProtocol: PopoverProtocol {
    /// Untyped pointer to the underlying `GtkPopoverMenu` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPopoverMenu` instance.
    var popover_menu_ptr: UnsafeMutablePointer<GtkPopoverMenu> { get }
}

/// The `PopoverMenuRef` type acts as a lightweight Swift reference to an underlying `GtkPopoverMenu` instance.
/// It exposes methods that can operate on this data type through `PopoverMenuProtocol` conformance.
/// Use `PopoverMenuRef` only as an `unowned` reference to an existing `GtkPopoverMenu` instance.
///
/// GtkPopoverMenu is a subclass of `GtkPopover` that treats its
/// children like menus and allows switching between them. It is
/// meant to be used primarily together with `GtkModelButton`, but
/// any widget can be used, such as `GtkSpinButton` or `GtkScale`.
/// In this respect, GtkPopoverMenu is more flexible than popovers
/// that are created from a `GMenuModel` with gtk_popover_new_from_model().
/// 
/// To add a child as a submenu, set the `GtkPopoverMenu`:submenu
/// child property to the name of the submenu. To let the user open
/// this submenu, add a `GtkModelButton` whose `GtkModelButton`:menu-name
/// property is set to the name you've given to the submenu.
/// 
/// By convention, the first child of a submenu should be a `GtkModelButton`
/// to switch back to the parent menu. Such a button should use the
/// `GtkModelButton`:inverted and `GtkModelButton`:centered properties
/// to achieve a title-like appearance and place the submenu indicator
/// at the opposite side. To switch back to the main menu, use "main"
/// as the menu name.
/// 
/// `` Example
/// 
/// ```
/// <object class="GtkPopoverMenu">
///   <child>
///     <object class="GtkBox">
///       <property name="visible">True</property>
///       <property name="margin">10</property>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">win.frob</property>
///           <property name="text" translatable="yes">Frob</property>
///         </object>
///       </child>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="menu-name">more</property>
///           <property name="text" translatable="yes">More</property>
///         </object>
///       </child>
///     </object>
///   </child>
///   <child>
///     <object class="GtkBox">
///       <property name="visible">True</property>
///       <property name="margin">10</property>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">win.foo</property>
///           <property name="text" translatable="yes">Foo</property>
///         </object>
///       </child>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">win.bar</property>
///           <property name="text" translatable="yes">Bar</property>
///         </object>
///       </child>
///     </object>
///     <packing>
///       <property name="submenu">more</property>
///     </packing>
///   </child>
/// </object>
/// ```
/// 
/// 
/// Just like normal popovers created using gtk_popover_new_from_model,
/// `GtkPopoverMenu` instances have a single css node called "popover"
/// and get the .menu style class.
public struct PopoverMenuRef: PopoverMenuProtocol {
    /// Untyped pointer to the underlying `GtkPopoverMenu` instance.
    /// For type-safe access, use the generated, typed pointer `popover_menu_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PopoverMenuRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPopoverMenu>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PopoverMenuProtocol`
    init<T: PopoverMenuProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new popover menu.
    init() {
        let rv = gtk_popover_menu_new()
        self.init(cast(rv))
    }
}

/// The `PopoverMenu` type acts as a reference-counted owner of an underlying `GtkPopoverMenu` instance.
/// It provides the methods that can operate on this data type through `PopoverMenuProtocol` conformance.
/// Use `PopoverMenu` as a strong reference or owner of a `GtkPopoverMenu` instance.
///
/// GtkPopoverMenu is a subclass of `GtkPopover` that treats its
/// children like menus and allows switching between them. It is
/// meant to be used primarily together with `GtkModelButton`, but
/// any widget can be used, such as `GtkSpinButton` or `GtkScale`.
/// In this respect, GtkPopoverMenu is more flexible than popovers
/// that are created from a `GMenuModel` with gtk_popover_new_from_model().
/// 
/// To add a child as a submenu, set the `GtkPopoverMenu`:submenu
/// child property to the name of the submenu. To let the user open
/// this submenu, add a `GtkModelButton` whose `GtkModelButton`:menu-name
/// property is set to the name you've given to the submenu.
/// 
/// By convention, the first child of a submenu should be a `GtkModelButton`
/// to switch back to the parent menu. Such a button should use the
/// `GtkModelButton`:inverted and `GtkModelButton`:centered properties
/// to achieve a title-like appearance and place the submenu indicator
/// at the opposite side. To switch back to the main menu, use "main"
/// as the menu name.
/// 
/// `` Example
/// 
/// ```
/// <object class="GtkPopoverMenu">
///   <child>
///     <object class="GtkBox">
///       <property name="visible">True</property>
///       <property name="margin">10</property>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">win.frob</property>
///           <property name="text" translatable="yes">Frob</property>
///         </object>
///       </child>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="menu-name">more</property>
///           <property name="text" translatable="yes">More</property>
///         </object>
///       </child>
///     </object>
///   </child>
///   <child>
///     <object class="GtkBox">
///       <property name="visible">True</property>
///       <property name="margin">10</property>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">win.foo</property>
///           <property name="text" translatable="yes">Foo</property>
///         </object>
///       </child>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">win.bar</property>
///           <property name="text" translatable="yes">Bar</property>
///         </object>
///       </child>
///     </object>
///     <packing>
///       <property name="submenu">more</property>
///     </packing>
///   </child>
/// </object>
/// ```
/// 
/// 
/// Just like normal popovers created using gtk_popover_new_from_model,
/// `GtkPopoverMenu` instances have a single css node called "popover"
/// and get the .menu style class.
open class PopoverMenu: Popover, PopoverMenuProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PopoverMenu` instance.
    public init(_ op: UnsafeMutablePointer<GtkPopoverMenu>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `PopoverMenuProtocol`
    /// Will retain `GtkPopoverMenu`.
    public convenience init<T: PopoverMenuProtocol>(_ other: T) {
        self.init(cast(other.popover_menu_ptr))
        g_object_ref(cast(popover_menu_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPopoverMenu.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPopoverMenu.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPopoverMenu.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopoverMenuProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPopoverMenu>(opaquePointer))
    }

    /// Creates a new popover menu.
    public convenience init() {
        let rv = gtk_popover_menu_new()
        self.init(cast(rv))
    }


}

public enum PopoverMenuPropertyName: String, PropertyNameProtocol {
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
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Sets a constraint for the popover position.
    case constrainTo = "constrain-to"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginTop = "margin-top"
    /// Sets whether the popover is modal (so other elements in the window do not
    /// receive input while the popover is visible).
    case modal = "modal"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    /// Marks a specific rectangle to be pointed.
    case pointingTo = "pointing-to"
    /// Sets the preferred position of the popover.
    case position = "position"
    case receivesDefault = "receives-default"
    /// Sets the attached widget.
    case relativeTo = "relative-to"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// Whether show/hide transitions are enabled for this popover.
    ///
    /// **transitions-enabled is deprecated:**
    /// You can show or hide the popover without transitions
    ///   using gtk_widget_show() and gtk_widget_hide() while gtk_popover_popup()
    ///   and gtk_popover_popdown() will use transitions.
    case transitionsEnabled = "transitions-enabled"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case visibleSubmenu = "visible-submenu"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PopoverMenuPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(popover_menu_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum PopoverMenuSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The ::button-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The ::button-release-event signal will be emitted when a button
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
    /// The ::child-notify signal is emitted for each
    /// [child property][child-properties]  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// This signal is emitted when the popover is dismissed either through
    /// API or user interaction.
    case closed = "closed"
    /// The ::composited-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See gdk_screen_is_composited().
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The ::configure-event signal will be emitted when the size, position or
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
    /// The ::delete-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting gtk_widget_hide_on_delete() to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The ::destroy-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The ::direction-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The ::drag-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use g_signal_connect_after() to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The ::drag-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The ::drag-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See gtk_selection_data_set() and
    /// gtk_selection_data_set_text().
    case dragDataGet = "drag-data-get"
    /// The ::drag-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call gdk_drag_status() and not finish the drag.
    /// If the data was received in response to a `GtkWidget`::drag-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// gtk_drag_finish(), setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call gdk_drag_status() or gtk_drag_finish().
    /// 
    /// The handler may inspect the selected action with
    /// gdk_drag_context_get_selected_action() before calling
    /// gtk_drag_finish(), e.g. to implement `GDK_ACTION_ASK` as
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
    /// The ::drag-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that gtk_drag_finish() is called to let the source know that
    /// the drop is done. The call to gtk_drag_finish() can be done either
    /// directly or in a `GtkWidget`::drag-data-received handler which gets
    /// triggered by calling gtk_drag_get_data() to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The ::drag-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget`::drag-begin.
    case dragEnd = "drag-end"
    /// The ::drag-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The ::drag-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget`::drag-motion, e.g. undo highlighting
    /// with gtk_drag_unhighlight().
    /// 
    /// 
    /// Likewise, the `GtkWidget`::drag-leave signal is also emitted before the
    /// ::drag-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget`::drag-motion signal handler.
    case dragLeave = "drag-leave"
    /// The ::drag-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling gdk_drag_status().
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling gtk_drag_get_data() and
    /// defer the gdk_drag_status() call to the `GtkWidget`::drag-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to gtk_drag_dest_set()
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget`::drag-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with gtk_drag_highlight().
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
    /// gtk_widget_get_allocated_width() and
    /// gtk_widget_get_allocated_height().
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling cairo_save()
    /// before and cairo_restore() after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
    /// get a finer-grained representation of the dirty region with
    /// cairo_copy_clip_rectangle_list().
    case draw = "draw"
    /// The ::enter-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic ::event signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget`::key-press-event) and finally a generic
    /// `GtkWidget`::event-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget`::event signal and (optionally)
    /// the second more specific signal, ::event-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The ::focus-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The ::focus-out-event signal will be emitted when the keyboard focus
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
    /// The ::grab-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a gtk_grab_add() when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The ::hide signal is emitted when `widget` is hidden, for example with
    /// gtk_widget_hide().
    case hide = "hide"
    /// The ::hierarchy-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The ::key-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The ::key-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See gtk_widget_keynav_failed() for details.
    case keynavFailed = "keynav-failed"
    /// The ::leave-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The ::map signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// gtk_widget_set_visible()) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget`::map-event will
    /// be emitted.
    /// 
    /// The ::map signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget`::unmap.
    case map = "map"
    /// The ::map-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The ::motion-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The ::parent-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist][checklist-popup-menu]
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The ::property-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget`:has-tooltip is `true` and the hover timeout
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
    /// The ::realize signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that gtk_widget_realize() has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The ::screen-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The ::scroll-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The ::selection-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The ::selection-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The ::show signal is emitted when `widget` is shown, for example with
    /// gtk_widget_show().
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The ::state-changed signal is emitted when the widget state changes.
    /// See gtk_widget_get_state().
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The ::state-flags-changed signal is emitted when the widget state
    /// changes, see gtk_widget_get_state_flags().
    case stateFlagsChanged = "state-flags-changed"
    /// The ::style-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// gtk_widget_modify_base() also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget`::style-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The ::style-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext`::changed signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by gtk_widget_get_style_context().
    /// 
    /// Note that style-modifying functions like gtk_widget_override_color() also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The ::unmap signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As ::unmap indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The ::unmap-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The ::unrealize signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that gtk_widget_unrealize() has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The ::visibility-notify-event will be emitted when the `widget`'s
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
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The ::window-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
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
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Sets a constraint for the popover position.
    case notifyConstrainTo = "notify::constrain-to"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginTop = "notify::margin-top"
    /// Sets whether the popover is modal (so other elements in the window do not
    /// receive input while the popover is visible).
    case notifyModal = "notify::modal"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    /// Marks a specific rectangle to be pointed.
    case notifyPointingTo = "notify::pointing-to"
    /// Sets the preferred position of the popover.
    case notifyPosition = "notify::position"
    case notifyReceivesDefault = "notify::receives-default"
    /// Sets the attached widget.
    case notifyRelativeTo = "notify::relative-to"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// Whether show/hide transitions are enabled for this popover.
    ///
    /// **transitions-enabled is deprecated:**
    /// You can show or hide the popover without transitions
    ///   using gtk_widget_show() and gtk_widget_hide() while gtk_popover_popup()
    ///   and gtk_popover_popdown() will use transitions.
    case notifyTransitionsEnabled = "notify::transitions-enabled"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyVisibleSubmenu = "notify::visible-submenu"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension PopoverMenuProtocol {
    /// Connect a `PopoverMenuSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PopoverMenuSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(popover_menu_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension PopoverMenuProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPopoverMenu` instance.
    var popover_menu_ptr: UnsafeMutablePointer<GtkPopoverMenu> { return ptr.assumingMemoryBound(to: GtkPopoverMenu.self) }

    /// Opens a submenu of the `popover`. The `name`
    /// must be one of the names given to the submenus
    /// of `popover` with `GtkPopoverMenu`:submenu, or
    /// "main" to switch back to the main menu.
    /// 
    /// `GtkModelButton` will open submenus automatically
    /// when the `GtkModelButton`:menu-name property is set,
    /// so this function is only needed when you are using
    /// other kinds of widgets to initiate menu changes.
    func openSubmenu(name: UnsafePointer<gchar>) {
        gtk_popover_menu_open_submenu(cast(popover_menu_ptr), name)
    
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
/// GtkPrintContext objects gets passed to the `GtkPrintOperation`::begin-print,
/// `GtkPrintOperation`::end-print, `GtkPrintOperation`::request-page-setup and
/// `GtkPrintOperation`::draw-page signals on the `GtkPrintOperation`.
/// 
/// ``` Using GtkPrintContext in a `GtkPrintOperation`::draw-page callback
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
/// 
/// Printing support was added in GTK+ 2.10.
public protocol PrintContextProtocol: GLibObject.ObjectProtocol {
    /// Untyped pointer to the underlying `GtkPrintContext` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPrintContext` instance.
    var print_context_ptr: UnsafeMutablePointer<GtkPrintContext> { get }
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
/// GtkPrintContext objects gets passed to the `GtkPrintOperation`::begin-print,
/// `GtkPrintOperation`::end-print, `GtkPrintOperation`::request-page-setup and
/// `GtkPrintOperation`::draw-page signals on the `GtkPrintOperation`.
/// 
/// ``` Using GtkPrintContext in a `GtkPrintOperation`::draw-page callback
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
/// 
/// Printing support was added in GTK+ 2.10.
public struct PrintContextRef: PrintContextProtocol {
    /// Untyped pointer to the underlying `GtkPrintContext` instance.
    /// For type-safe access, use the generated, typed pointer `print_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PrintContextRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPrintContext>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PrintContextProtocol`
    init<T: PrintContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
/// GtkPrintContext objects gets passed to the `GtkPrintOperation`::begin-print,
/// `GtkPrintOperation`::end-print, `GtkPrintOperation`::request-page-setup and
/// `GtkPrintOperation`::draw-page signals on the `GtkPrintOperation`.
/// 
/// ``` Using GtkPrintContext in a `GtkPrintOperation`::draw-page callback
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
/// 
/// Printing support was added in GTK+ 2.10.
open class PrintContext: GLibObject.Object, PrintContextProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PrintContext` instance.
    public init(_ op: UnsafeMutablePointer<GtkPrintContext>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `PrintContextProtocol`
    /// Will retain `GtkPrintContext`.
    public convenience init<T: PrintContextProtocol>(_ other: T) {
        self.init(cast(other.print_context_ptr))
        g_object_ref(cast(print_context_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPrintContext.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPrintContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPrintContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintContextProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPrintContext>(opaquePointer))
    }



}

// MARK: - no PrintContext properties

public enum PrintContextSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension PrintContextProtocol {
    /// Connect a `PrintContextSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PrintContextSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(print_context_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension PrintContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPrintContext` instance.
    var print_context_ptr: UnsafeMutablePointer<GtkPrintContext> { return ptr.assumingMemoryBound(to: GtkPrintContext.self) }

    /// Creates a new `PangoContext` that can be used with the
    /// `GtkPrintContext`.
    func createPangoContext() -> UnsafeMutablePointer<PangoContext>! {
        let rv = gtk_print_context_create_pango_context(cast(print_context_ptr))
        return cast(rv)
    }

    /// Creates a new `PangoLayout` that is suitable for use
    /// with the `GtkPrintContext`.
    func createPangoLayout() -> UnsafeMutablePointer<PangoLayout>! {
        let rv = gtk_print_context_create_pango_layout(cast(print_context_ptr))
        return cast(rv)
    }

    /// Obtains the cairo context that is associated with the
    /// `GtkPrintContext`.
    func getCairoContext() -> UnsafeMutablePointer<cairo_t>! {
        let rv = gtk_print_context_get_cairo_context(cast(print_context_ptr))
        return cast(rv)
    }

    /// Obtains the horizontal resolution of the `GtkPrintContext`,
    /// in dots per inch.
    func getDpiX() -> gdouble {
        let rv = gtk_print_context_get_dpi_x(cast(print_context_ptr))
        return rv
    }

    /// Obtains the vertical resolution of the `GtkPrintContext`,
    /// in dots per inch.
    func getDpiY() -> gdouble {
        let rv = gtk_print_context_get_dpi_y(cast(print_context_ptr))
        return rv
    }

    /// Obtains the hardware printer margins of the `GtkPrintContext`, in units.
    func getHardMargins(top: UnsafeMutablePointer<gdouble>, bottom: UnsafeMutablePointer<gdouble>, left_: UnsafeMutablePointer<gdouble>, right_: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gtk_print_context_get_hard_margins(cast(print_context_ptr), cast(top), cast(bottom), cast(left_), cast(right_))
        return Bool(rv != 0)
    }

    /// Obtains the height of the `GtkPrintContext`, in pixels.
    func getHeight() -> gdouble {
        let rv = gtk_print_context_get_height(cast(print_context_ptr))
        return rv
    }

    /// Obtains the `GtkPageSetup` that determines the page
    /// dimensions of the `GtkPrintContext`.
    func getPageSetup() -> UnsafeMutablePointer<GtkPageSetup>! {
        let rv = gtk_print_context_get_page_setup(cast(print_context_ptr))
        return cast(rv)
    }

    /// Returns a `PangoFontMap` that is suitable for use
    /// with the `GtkPrintContext`.
    func getPangoFontmap() -> UnsafeMutablePointer<PangoFontMap>! {
        let rv = gtk_print_context_get_pango_fontmap(cast(print_context_ptr))
        return cast(rv)
    }

    /// Obtains the width of the `GtkPrintContext`, in pixels.
    func getWidth() -> gdouble {
        let rv = gtk_print_context_get_width(cast(print_context_ptr))
        return rv
    }

    /// Sets a new cairo context on a print context.
    /// 
    /// This function is intended to be used when implementing
    /// an internal print preview, it is not needed for printing,
    /// since GTK+ itself creates a suitable cairo context in that
    /// case.
    func setCairoContext(cr: cairo.ContextProtocol, dpiX dpi_x: gdouble, dpiY dpi_y: gdouble) {
        gtk_print_context_set_cairo_context(cast(print_context_ptr), cast(cr.ptr), dpi_x, dpi_y)
    
    }
    /// Obtains the cairo context that is associated with the
    /// `GtkPrintContext`.
    var cairoContext: UnsafeMutablePointer<cairo_t>! {
        /// Obtains the cairo context that is associated with the
        /// `GtkPrintContext`.
        get {
            let rv = gtk_print_context_get_cairo_context(cast(print_context_ptr))
            return cast(rv)
        }
    }

    /// Obtains the horizontal resolution of the `GtkPrintContext`,
    /// in dots per inch.
    var dpiX: gdouble {
        /// Obtains the horizontal resolution of the `GtkPrintContext`,
        /// in dots per inch.
        get {
            let rv = gtk_print_context_get_dpi_x(cast(print_context_ptr))
            return rv
        }
    }

    /// Obtains the vertical resolution of the `GtkPrintContext`,
    /// in dots per inch.
    var dpiY: gdouble {
        /// Obtains the vertical resolution of the `GtkPrintContext`,
        /// in dots per inch.
        get {
            let rv = gtk_print_context_get_dpi_y(cast(print_context_ptr))
            return rv
        }
    }

    /// Obtains the height of the `GtkPrintContext`, in pixels.
    var height: gdouble {
        /// Obtains the height of the `GtkPrintContext`, in pixels.
        get {
            let rv = gtk_print_context_get_height(cast(print_context_ptr))
            return rv
        }
    }

    /// Obtains the `GtkPageSetup` that determines the page
    /// dimensions of the `GtkPrintContext`.
    var pageSetup: UnsafeMutablePointer<GtkPageSetup>! {
        /// Obtains the `GtkPageSetup` that determines the page
        /// dimensions of the `GtkPrintContext`.
        get {
            let rv = gtk_print_context_get_page_setup(cast(print_context_ptr))
            return cast(rv)
        }
    }

    /// Returns a `PangoFontMap` that is suitable for use
    /// with the `GtkPrintContext`.
    var pangoFontmap: UnsafeMutablePointer<PangoFontMap>! {
        /// Returns a `PangoFontMap` that is suitable for use
        /// with the `GtkPrintContext`.
        get {
            let rv = gtk_print_context_get_pango_fontmap(cast(print_context_ptr))
            return cast(rv)
        }
    }

    /// Obtains the width of the `GtkPrintContext`, in pixels.
    var width: gdouble {
        /// Obtains the width of the `GtkPrintContext`, in pixels.
        get {
            let rv = gtk_print_context_get_width(cast(print_context_ptr))
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
/// It looks a bit different than other GTK+ dialogs such as the
/// `GtkFileChooser`, since some platforms don’t expose enough
/// infrastructure to implement a good print dialog. On such
/// platforms, GtkPrintOperation uses the native print dialog.
/// On platforms which do not provide a native print dialog, GTK+
/// uses its own, see `GtkPrintUnixDialog`.
/// 
/// The typical way to use the high-level printing API is to create
/// a GtkPrintOperation object with gtk_print_operation_new() when
/// the user selects to print. Then you set some properties on it,
/// e.g. the page size, any `GtkPrintSettings` from previous print
/// operations, the number of pages, the current page, etc.
/// 
/// Then you start the print operation by calling gtk_print_operation_run().
/// It will then show a dialog, let the user select a printer and
/// options. When the user finished the dialog various signals will
/// be emitted on the `GtkPrintOperation`, the main one being
/// `GtkPrintOperation`::draw-page, which you are supposed to catch
/// and render the page on the provided `GtkPrintContext` using Cairo.
/// 
/// `` The high-level printing API
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
/// 
/// By default GtkPrintOperation uses an external application to do
/// print preview. To implement a custom print preview, an application
/// must connect to the preview signal. The functions
/// gtk_print_operation_preview_render_page(),
/// gtk_print_operation_preview_end_preview() and
/// gtk_print_operation_preview_is_selected()
/// are useful when implementing a print preview.
public protocol PrintOperationProtocol: GLibObject.ObjectProtocol, PrintOperationPreviewProtocol {
    /// Untyped pointer to the underlying `GtkPrintOperation` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPrintOperation` instance.
    var print_operation_ptr: UnsafeMutablePointer<GtkPrintOperation> { get }
}

/// The `PrintOperationRef` type acts as a lightweight Swift reference to an underlying `GtkPrintOperation` instance.
/// It exposes methods that can operate on this data type through `PrintOperationProtocol` conformance.
/// Use `PrintOperationRef` only as an `unowned` reference to an existing `GtkPrintOperation` instance.
///
/// GtkPrintOperation is the high-level, portable printing API.
/// It looks a bit different than other GTK+ dialogs such as the
/// `GtkFileChooser`, since some platforms don’t expose enough
/// infrastructure to implement a good print dialog. On such
/// platforms, GtkPrintOperation uses the native print dialog.
/// On platforms which do not provide a native print dialog, GTK+
/// uses its own, see `GtkPrintUnixDialog`.
/// 
/// The typical way to use the high-level printing API is to create
/// a GtkPrintOperation object with gtk_print_operation_new() when
/// the user selects to print. Then you set some properties on it,
/// e.g. the page size, any `GtkPrintSettings` from previous print
/// operations, the number of pages, the current page, etc.
/// 
/// Then you start the print operation by calling gtk_print_operation_run().
/// It will then show a dialog, let the user select a printer and
/// options. When the user finished the dialog various signals will
/// be emitted on the `GtkPrintOperation`, the main one being
/// `GtkPrintOperation`::draw-page, which you are supposed to catch
/// and render the page on the provided `GtkPrintContext` using Cairo.
/// 
/// `` The high-level printing API
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
/// 
/// By default GtkPrintOperation uses an external application to do
/// print preview. To implement a custom print preview, an application
/// must connect to the preview signal. The functions
/// gtk_print_operation_preview_render_page(),
/// gtk_print_operation_preview_end_preview() and
/// gtk_print_operation_preview_is_selected()
/// are useful when implementing a print preview.
public struct PrintOperationRef: PrintOperationProtocol {
    /// Untyped pointer to the underlying `GtkPrintOperation` instance.
    /// For type-safe access, use the generated, typed pointer `print_operation_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PrintOperationRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPrintOperation>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PrintOperationProtocol`
    init<T: PrintOperationProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkPrintOperation`.
    init() {
        let rv = gtk_print_operation_new()
        self.init(cast(rv))
    }
}

/// The `PrintOperation` type acts as a reference-counted owner of an underlying `GtkPrintOperation` instance.
/// It provides the methods that can operate on this data type through `PrintOperationProtocol` conformance.
/// Use `PrintOperation` as a strong reference or owner of a `GtkPrintOperation` instance.
///
/// GtkPrintOperation is the high-level, portable printing API.
/// It looks a bit different than other GTK+ dialogs such as the
/// `GtkFileChooser`, since some platforms don’t expose enough
/// infrastructure to implement a good print dialog. On such
/// platforms, GtkPrintOperation uses the native print dialog.
/// On platforms which do not provide a native print dialog, GTK+
/// uses its own, see `GtkPrintUnixDialog`.
/// 
/// The typical way to use the high-level printing API is to create
/// a GtkPrintOperation object with gtk_print_operation_new() when
/// the user selects to print. Then you set some properties on it,
/// e.g. the page size, any `GtkPrintSettings` from previous print
/// operations, the number of pages, the current page, etc.
/// 
/// Then you start the print operation by calling gtk_print_operation_run().
/// It will then show a dialog, let the user select a printer and
/// options. When the user finished the dialog various signals will
/// be emitted on the `GtkPrintOperation`, the main one being
/// `GtkPrintOperation`::draw-page, which you are supposed to catch
/// and render the page on the provided `GtkPrintContext` using Cairo.
/// 
/// `` The high-level printing API
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
/// 
/// By default GtkPrintOperation uses an external application to do
/// print preview. To implement a custom print preview, an application
/// must connect to the preview signal. The functions
/// gtk_print_operation_preview_render_page(),
/// gtk_print_operation_preview_end_preview() and
/// gtk_print_operation_preview_is_selected()
/// are useful when implementing a print preview.
open class PrintOperation: GLibObject.Object, PrintOperationProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PrintOperation` instance.
    public init(_ op: UnsafeMutablePointer<GtkPrintOperation>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `PrintOperationProtocol`
    /// Will retain `GtkPrintOperation`.
    public convenience init<T: PrintOperationProtocol>(_ other: T) {
        self.init(cast(other.print_operation_ptr))
        g_object_ref(cast(print_operation_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPrintOperation.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPrintOperation.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPrintOperation.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPrintOperation>(opaquePointer))
    }

    /// Creates a new `GtkPrintOperation`.
    public convenience init() {
        let rv = gtk_print_operation_new()
        self.init(cast(rv))
    }


}

public enum PrintOperationPropertyName: String, PropertyNameProtocol {
    /// Determines whether the print operation may run asynchronously or not.
    /// 
    /// Some systems don't support asynchronous printing, but those that do
    /// will return `GTK_PRINT_OPERATION_RESULT_IN_PROGRESS` as the status, and
    /// emit the `GtkPrintOperation`::done signal when the operation is actually
    /// done.
    /// 
    /// The Windows port does not support asynchronous operation at all (this
    /// is unlikely to change). On other platforms, all actions except for
    /// `GTK_PRINT_OPERATION_ACTION_EXPORT` support asynchronous operation.
    case allowAsync = "allow-async"
    /// The current page in the document.
    /// 
    /// If this is set before gtk_print_operation_run(),
    /// the user will be able to select to print only the current page.
    /// 
    /// Note that this only makes sense for pre-paginated documents.
    case currentPage = "current-page"
    /// Used as the label of the tab containing custom widgets.
    /// Note that this property may be ignored on some platforms.
    /// 
    /// If this is `nil`, GTK+ uses a default label.
    case customTabLabel = "custom-tab-label"
    /// The `GtkPageSetup` used by default.
    /// 
    /// This page setup will be used by gtk_print_operation_run(),
    /// but it can be overridden on a per-page basis by connecting
    /// to the `GtkPrintOperation`::request-page-setup signal.
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
    /// If you don't set a job name, GTK+ picks a default one
    /// by numbering successive print jobs.
    case jobName = "job-name"
    /// The number of pages in the document.
    /// 
    /// This must be set to a positive number
    /// before the rendering starts. It may be set in a
    /// `GtkPrintOperation`::begin-print signal hander.
    /// 
    /// Note that the page numbers passed to the
    /// `GtkPrintOperation`::request-page-setup and
    /// `GtkPrintOperation`::draw-page signals are 0-based, i.e. if
    /// the user chooses to print all pages, the last ::draw-page signal
    /// will be for page `n_pages` - 1.
    case nPages = "n-pages"
    /// The number of pages that will be printed.
    /// 
    /// Note that this value is set during print preparation phase
    /// (`GTK_PRINT_STATUS_PREPARING`), so this value should never be
    /// get before the data generation phase (`GTK_PRINT_STATUS_GENERATING_DATA`).
    /// You can connect to the `GtkPrintOperation`::status-changed signal
    /// and call gtk_print_operation_get_n_pages_to_print() when
    /// print status is `GTK_PRINT_STATUS_GENERATING_DATA`.
    /// This is typically used to track the progress of print operation.
    case nPagesToPrint = "n-pages-to-print"
    /// The `GtkPrintSettings` used for initializing the dialog.
    /// 
    /// Setting this property is typically used to re-establish
    /// print settings from a previous print operation, see
    /// gtk_print_operation_run().
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
    /// See the `GtkPrintOperation`:status property for a status value that
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PrintOperationPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(print_operation_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum PrintOperationSignalName: String, SignalNameProtocol {
    /// Emitted after the user has finished changing print settings
    /// in the dialog, before the actual rendering starts.
    /// 
    /// A typical use for ::begin-print is to use the parameters from the
    /// `GtkPrintContext` and paginate the document accordingly, and then
    /// set the number of pages with gtk_print_operation_set_n_pages().
    case beginPrint = "begin-print"
    /// Emitted when displaying the print dialog. If you return a
    /// widget in a handler for this signal it will be added to a custom
    /// tab in the print dialog. You typically return a container widget
    /// with multiple widgets in it.
    /// 
    /// The print dialog owns the returned widget, and its lifetime is not
    /// controlled by the application. However, the widget is guaranteed
    /// to stay around until the `GtkPrintOperation`::custom-widget-apply
    /// signal is emitted on the operation. Then you can read out any
    /// information you need from the widgets.
    case createCustomWidget = "create-custom-widget"
    /// Emitted right before `GtkPrintOperation`::begin-print if you added
    /// a custom widget in the `GtkPrintOperation`::create-custom-widget handler.
    /// When you get this signal you should read the information from the
    /// custom widgets, as the widgets are not guaraneed to be around at a
    /// later time.
    case customWidgetApply = "custom-widget-apply"
    /// Emitted when the print operation run has finished doing
    /// everything required for printing.
    /// 
    /// `result` gives you information about what happened during the run.
    /// If `result` is `GTK_PRINT_OPERATION_RESULT_ERROR` then you can call
    /// gtk_print_operation_get_error() for more information.
    /// 
    /// If you enabled print status tracking then
    /// gtk_print_operation_is_finished() may still return `false`
    /// after `GtkPrintOperation`::done was emitted.
    case done = "done"
    /// Emitted for every page that is printed. The signal handler
    /// must render the `page_nr`'s page onto the cairo context obtained
    /// from `context` using gtk_print_context_get_cairo_context().
    /// (C Language Example):
    /// ```C
    /// static void
    /// draw_page (GtkPrintOperation *operation,
    ///            GtkPrintContext   *context,
    ///            gint               page_nr,
    ///            gpointer           user_data)
    /// {
    ///   cairo_t *cr;
    ///   PangoLayout *layout;
    ///   gdouble width, text_height;
    ///   gint layout_height;
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
    ///   text_height = (gdouble)layout_height / PANGO_SCALE;
    ///   
    ///   cairo_move_to (cr, width / 2,  (HEADER_HEIGHT - text_height) / 2);
    ///   pango_cairo_show_layout (cr, layout);
    ///   
    ///   g_object_unref (layout);
    /// }
    /// ```
    /// 
    /// 
    /// Use gtk_print_operation_set_use_full_page() and
    /// gtk_print_operation_set_unit() before starting the print operation
    /// to set up the transformation of the cairo context according to your
    /// needs.
    case drawPage = "draw-page"
    /// Emitted after all pages have been rendered.
    /// A handler for this signal can clean up any resources that have
    /// been allocated in the `GtkPrintOperation`::begin-print handler.
    case endPrint = "end-print"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted after the `GtkPrintOperation`::begin-print signal, but before
    /// the actual rendering starts. It keeps getting emitted until a connected
    /// signal handler returns `true`.
    /// 
    /// The ::paginate signal is intended to be used for paginating a document
    /// in small chunks, to avoid blocking the user interface for a long
    /// time. The signal handler should update the number of pages using
    /// gtk_print_operation_set_n_pages(), and return `true` if the document
    /// has been completely paginated.
    /// 
    /// If you don't need to do pagination in chunks, you can simply do
    /// it all in the ::begin-print handler, and set the number of pages
    /// from there.
    case paginate = "paginate"
    /// Gets emitted when a preview is requested from the native dialog.
    /// 
    /// The default handler for this signal uses an external viewer
    /// application to preview.
    /// 
    /// To implement a custom print preview, an application must return
    /// `true` from its handler for this signal. In order to use the
    /// provided `context` for the preview implementation, it must be
    /// given a suitable cairo context with gtk_print_context_set_cairo_context().
    /// 
    /// The custom preview implementation can use
    /// gtk_print_operation_preview_is_selected() and
    /// gtk_print_operation_preview_render_page() to find pages which
    /// are selected for print and render them. The preview must be
    /// finished by calling gtk_print_operation_preview_end_preview()
    /// (typically in response to the user clicking a close button).
    case preview = "preview"
    /// Emitted once for every page that is printed, to give
    /// the application a chance to modify the page setup. Any changes
    /// done to `setup` will be in force only for printing this page.
    case requestPageSetup = "request-page-setup"
    /// Emitted at between the various phases of the print operation.
    /// See `GtkPrintStatus` for the phases that are being discriminated.
    /// Use gtk_print_operation_get_status() to find out the current
    /// status.
    case statusChanged = "status-changed"
    /// Emitted after change of selected printer. The actual page setup and
    /// print settings are passed to the custom widget, which can actualize
    /// itself according to this change.
    case updateCustomWidget = "update-custom-widget"
    /// Determines whether the print operation may run asynchronously or not.
    /// 
    /// Some systems don't support asynchronous printing, but those that do
    /// will return `GTK_PRINT_OPERATION_RESULT_IN_PROGRESS` as the status, and
    /// emit the `GtkPrintOperation`::done signal when the operation is actually
    /// done.
    /// 
    /// The Windows port does not support asynchronous operation at all (this
    /// is unlikely to change). On other platforms, all actions except for
    /// `GTK_PRINT_OPERATION_ACTION_EXPORT` support asynchronous operation.
    case notifyAllowAsync = "notify::allow-async"
    /// The current page in the document.
    /// 
    /// If this is set before gtk_print_operation_run(),
    /// the user will be able to select to print only the current page.
    /// 
    /// Note that this only makes sense for pre-paginated documents.
    case notifyCurrentPage = "notify::current-page"
    /// Used as the label of the tab containing custom widgets.
    /// Note that this property may be ignored on some platforms.
    /// 
    /// If this is `nil`, GTK+ uses a default label.
    case notifyCustomTabLabel = "notify::custom-tab-label"
    /// The `GtkPageSetup` used by default.
    /// 
    /// This page setup will be used by gtk_print_operation_run(),
    /// but it can be overridden on a per-page basis by connecting
    /// to the `GtkPrintOperation`::request-page-setup signal.
    case notifyDefaultPageSetup = "notify::default-page-setup"
    /// If `true`, page size combo box and orientation combo box are embedded into page setup page.
    case notifyEmbedPageSetup = "notify::embed-page-setup"
    /// The name of a file to generate instead of showing the print dialog.
    /// Currently, PDF is the only supported format.
    /// 
    /// The intended use of this property is for implementing
    /// “Export to PDF” actions.
    /// 
    /// “Print to PDF” support is independent of this and is done
    /// by letting the user pick the “Print to PDF” item from the
    /// list of printers in the print dialog.
    case notifyExportFilename = "notify::export-filename"
    /// Determines whether there is a selection in your application.
    /// This can allow your application to print the selection.
    /// This is typically used to make a "Selection" button sensitive.
    case notifyHasSelection = "notify::has-selection"
    /// A string used to identify the job (e.g. in monitoring
    /// applications like eggcups).
    /// 
    /// If you don't set a job name, GTK+ picks a default one
    /// by numbering successive print jobs.
    case notifyJobName = "notify::job-name"
    /// The number of pages in the document.
    /// 
    /// This must be set to a positive number
    /// before the rendering starts. It may be set in a
    /// `GtkPrintOperation`::begin-print signal hander.
    /// 
    /// Note that the page numbers passed to the
    /// `GtkPrintOperation`::request-page-setup and
    /// `GtkPrintOperation`::draw-page signals are 0-based, i.e. if
    /// the user chooses to print all pages, the last ::draw-page signal
    /// will be for page `n_pages` - 1.
    case notifyNPages = "notify::n-pages"
    /// The number of pages that will be printed.
    /// 
    /// Note that this value is set during print preparation phase
    /// (`GTK_PRINT_STATUS_PREPARING`), so this value should never be
    /// get before the data generation phase (`GTK_PRINT_STATUS_GENERATING_DATA`).
    /// You can connect to the `GtkPrintOperation`::status-changed signal
    /// and call gtk_print_operation_get_n_pages_to_print() when
    /// print status is `GTK_PRINT_STATUS_GENERATING_DATA`.
    /// This is typically used to track the progress of print operation.
    case notifyNPagesToPrint = "notify::n-pages-to-print"
    /// The `GtkPrintSettings` used for initializing the dialog.
    /// 
    /// Setting this property is typically used to re-establish
    /// print settings from a previous print operation, see
    /// gtk_print_operation_run().
    case notifyPrintSettings = "notify::print-settings"
    /// Determines whether to show a progress dialog during the
    /// print operation.
    case notifyShowProgress = "notify::show-progress"
    /// The status of the print operation.
    case notifyStatus = "notify::status"
    /// A string representation of the status of the print operation.
    /// The string is translated and suitable for displaying the print
    /// status e.g. in a `GtkStatusbar`.
    /// 
    /// See the `GtkPrintOperation`:status property for a status value that
    /// is suitable for programmatic use.
    case notifyStatusString = "notify::status-string"
    /// If `true`, the print operation will support print of selection.
    /// This allows the print dialog to show a "Selection" button.
    case notifySupportSelection = "notify::support-selection"
    /// If `true`, the print operation will try to continue report on
    /// the status of the print job in the printer queues and printer.
    /// This can allow your application to show things like “out of paper”
    /// issues, and when the print job actually reaches the printer.
    /// However, this is often implemented using polling, and should
    /// not be enabled unless needed.
    case notifyTrackPrintStatus = "notify::track-print-status"
    /// The transformation for the cairo context obtained from
    /// `GtkPrintContext` is set up in such a way that distances
    /// are measured in units of `unit`.
    case notifyUnit = "notify::unit"
    /// If `true`, the transformation for the cairo context obtained
    /// from `GtkPrintContext` puts the origin at the top left corner
    /// of the page (which may not be the top left corner of the sheet,
    /// depending on page orientation and the number of pages per sheet).
    /// Otherwise, the origin is at the top left corner of the imageable
    /// area (i.e. inside the margins).
    case notifyUseFullPage = "notify::use-full-page"
}

public extension PrintOperationProtocol {
    /// Connect a `PrintOperationSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PrintOperationSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(print_operation_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension PrintOperationProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPrintOperation` instance.
    var print_operation_ptr: UnsafeMutablePointer<GtkPrintOperation> { return ptr.assumingMemoryBound(to: GtkPrintOperation.self) }

    /// Cancels a running print operation. This function may
    /// be called from a `GtkPrintOperation`::begin-print,
    /// `GtkPrintOperation`::paginate or `GtkPrintOperation`::draw-page
    /// signal handler to stop the currently running print
    /// operation.
    func cancel() {
        gtk_print_operation_cancel(cast(print_operation_ptr))
    
    }

    /// Signalize that drawing of particular page is complete.
    /// 
    /// It is called after completion of page drawing (e.g. drawing in another
    /// thread).
    /// If gtk_print_operation_set_defer_drawing() was called before, then this function
    /// has to be called by application. In another case it is called by the library
    /// itself.
    func drawPageFinish() {
        gtk_print_operation_draw_page_finish(cast(print_operation_ptr))
    
    }

    /// Returns the default page setup, see
    /// gtk_print_operation_set_default_page_setup().
    func getDefaultPageSetup() -> UnsafeMutablePointer<GtkPageSetup>! {
        let rv = gtk_print_operation_get_default_page_setup(cast(print_operation_ptr))
        return cast(rv)
    }

    /// Gets the value of `GtkPrintOperation`:embed-page-setup property.
    func getEmbedPageSetup() -> Bool {
        let rv = gtk_print_operation_get_embed_page_setup(cast(print_operation_ptr))
        return Bool(rv != 0)
    }

    /// Call this when the result of a print operation is
    /// `GTK_PRINT_OPERATION_RESULT_ERROR`, either as returned by
    /// gtk_print_operation_run(), or in the `GtkPrintOperation`::done signal
    /// handler. The returned `GError` will contain more details on what went wrong.
    func getError() throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        gtk_print_operation_get_error(cast(print_operation_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
    
    }

    /// Gets the value of `GtkPrintOperation`:has-selection property.
    func getHasSelection() -> Bool {
        let rv = gtk_print_operation_get_has_selection(cast(print_operation_ptr))
        return Bool(rv != 0)
    }

    /// Returns the number of pages that will be printed.
    /// 
    /// Note that this value is set during print preparation phase
    /// (`GTK_PRINT_STATUS_PREPARING`), so this function should never be
    /// called before the data generation phase (`GTK_PRINT_STATUS_GENERATING_DATA`).
    /// You can connect to the `GtkPrintOperation`::status-changed signal
    /// and call gtk_print_operation_get_n_pages_to_print() when
    /// print status is `GTK_PRINT_STATUS_GENERATING_DATA`.
    /// This is typically used to track the progress of print operation.
    func getNPagesToPrint() -> CInt {
        let rv = gtk_print_operation_get_n_pages_to_print(cast(print_operation_ptr))
        return CInt(rv)
    }

    /// Returns the current print settings.
    /// 
    /// Note that the return value is `nil` until either
    /// gtk_print_operation_set_print_settings() or
    /// gtk_print_operation_run() have been called.
    func getPrintSettings() -> UnsafeMutablePointer<GtkPrintSettings>! {
        let rv = gtk_print_operation_get_print_settings(cast(print_operation_ptr))
        return cast(rv)
    }

    /// Returns the status of the print operation.
    /// Also see gtk_print_operation_get_status_string().
    func getStatus() -> GtkPrintStatus {
        let rv = gtk_print_operation_get_status(cast(print_operation_ptr))
        return rv
    }

    /// Returns a string representation of the status of the
    /// print operation. The string is translated and suitable
    /// for displaying the print status e.g. in a `GtkStatusbar`.
    /// 
    /// Use gtk_print_operation_get_status() to obtain a status
    /// value that is suitable for programmatic use.
    func getStatusString() -> String! {
        let rv = gtk_print_operation_get_status_string(cast(print_operation_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the value of `GtkPrintOperation`:support-selection property.
    func getSupportSelection() -> Bool {
        let rv = gtk_print_operation_get_support_selection(cast(print_operation_ptr))
        return Bool(rv != 0)
    }

    /// Runs the print operation, by first letting the user modify
    /// print settings in the print dialog, and then print the document.
    /// 
    /// Normally that this function does not return until the rendering of all
    /// pages is complete. You can connect to the
    /// `GtkPrintOperation`::status-changed signal on `op` to obtain some
    /// information about the progress of the print operation.
    /// Furthermore, it may use a recursive mainloop to show the print dialog.
    /// 
    /// If you call gtk_print_operation_set_allow_async() or set the
    /// `GtkPrintOperation`:allow-async property the operation will run
    /// asynchronously if this is supported on the platform. The
    /// `GtkPrintOperation`::done signal will be emitted with the result of the
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
    /// 					     "Error printing file:\n`s`",
    /// 					     error->message);
    ///    g_signal_connect (error_dialog, "response",
    ///                      G_CALLBACK (gtk_widget_destroy), NULL);
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
    /// 
    /// Note that gtk_print_operation_run() can only be called once on a
    /// given `GtkPrintOperation`.
    func run(action: PrintOperationAction, parent: WindowProtocol) throws -> GtkPrintOperationResult {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_print_operation_run(cast(print_operation_ptr), action, cast(parent.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Sets whether the gtk_print_operation_run() may return
    /// before the print operation is completed. Note that
    /// some platforms may not allow asynchronous operation.
    func set(allowAsync allow_async: Bool) {
        gtk_print_operation_set_allow_async(cast(print_operation_ptr), gboolean(allow_async ? 1 : 0))
    
    }

    /// Sets the current page.
    /// 
    /// If this is called before gtk_print_operation_run(),
    /// the user will be able to select to print only the current page.
    /// 
    /// Note that this only makes sense for pre-paginated documents.
    func set(currentPage current_page: CInt) {
        gtk_print_operation_set_current_page(cast(print_operation_ptr), gint(current_page))
    
    }

    /// Sets the label for the tab holding custom widgets.
    func setCustomTab(label: UnsafePointer<gchar>) {
        gtk_print_operation_set_custom_tab_label(cast(print_operation_ptr), label)
    
    }

    /// Makes `default_page_setup` the default page setup for `op`.
    /// 
    /// This page setup will be used by gtk_print_operation_run(),
    /// but it can be overridden on a per-page basis by connecting
    /// to the `GtkPrintOperation`::request-page-setup signal.
    func set(defaultPageSetup default_page_setup: PageSetupProtocol) {
        gtk_print_operation_set_default_page_setup(cast(print_operation_ptr), cast(default_page_setup.ptr))
    
    }

    /// Sets up the `GtkPrintOperation` to wait for calling of
    /// gtk_print_operation_draw_page_finish() from application. It can
    /// be used for drawing page in another thread.
    /// 
    /// This function must be called in the callback of “draw-page” signal.
    func setDeferDrawing() {
        gtk_print_operation_set_defer_drawing(cast(print_operation_ptr))
    
    }

    /// Embed page size combo box and orientation combo box into page setup page.
    /// Selected page setup is stored as default page setup in `GtkPrintOperation`.
    func setEmbedPageSetup(embed: Bool) {
        gtk_print_operation_set_embed_page_setup(cast(print_operation_ptr), gboolean(embed ? 1 : 0))
    
    }

    /// Sets up the `GtkPrintOperation` to generate a file instead
    /// of showing the print dialog. The indended use of this function
    /// is for implementing “Export to PDF” actions. Currently, PDF
    /// is the only supported format.
    /// 
    /// “Print to PDF” support is independent of this and is done
    /// by letting the user pick the “Print to PDF” item from the list
    /// of printers in the print dialog.
    func setExportFilename(String_: UnsafePointer<gchar>) {
        gtk_print_operation_set_export_filename(cast(print_operation_ptr), String_)
    
    }

    /// Sets whether there is a selection to print.
    /// 
    /// Application has to set number of pages to which the selection
    /// will draw by gtk_print_operation_set_n_pages() in a callback of
    /// `GtkPrintOperation`::begin-print.
    func set(hasSelection has_selection: Bool) {
        gtk_print_operation_set_has_selection(cast(print_operation_ptr), gboolean(has_selection ? 1 : 0))
    
    }

    /// Sets the name of the print job. The name is used to identify
    /// the job (e.g. in monitoring applications like eggcups).
    /// 
    /// If you don’t set a job name, GTK+ picks a default one by
    /// numbering successive print jobs.
    func set(jobName job_name: UnsafePointer<gchar>) {
        gtk_print_operation_set_job_name(cast(print_operation_ptr), job_name)
    
    }

    /// Sets the number of pages in the document.
    /// 
    /// This must be set to a positive number
    /// before the rendering starts. It may be set in a
    /// `GtkPrintOperation`::begin-print signal hander.
    /// 
    /// Note that the page numbers passed to the
    /// `GtkPrintOperation`::request-page-setup
    /// and `GtkPrintOperation`::draw-page signals are 0-based, i.e. if
    /// the user chooses to print all pages, the last ::draw-page signal
    /// will be for page `n_pages` - 1.
    func set(nPages n_pages: CInt) {
        gtk_print_operation_set_n_pages(cast(print_operation_ptr), gint(n_pages))
    
    }

    /// Sets the print settings for `op`. This is typically used to
    /// re-establish print settings from a previous print operation,
    /// see gtk_print_operation_run().
    func set(printSettings print_settings: PrintSettingsProtocol) {
        gtk_print_operation_set_print_settings(cast(print_operation_ptr), cast(print_settings.ptr))
    
    }

    /// If `show_progress` is `true`, the print operation will show a
    /// progress dialog during the print operation.
    func set(showProgress show_progress: Bool) {
        gtk_print_operation_set_show_progress(cast(print_operation_ptr), gboolean(show_progress ? 1 : 0))
    
    }

    /// Sets whether selection is supported by `GtkPrintOperation`.
    func set(supportSelection support_selection: Bool) {
        gtk_print_operation_set_support_selection(cast(print_operation_ptr), gboolean(support_selection ? 1 : 0))
    
    }

    /// If track_status is `true`, the print operation will try to continue report
    /// on the status of the print job in the printer queues and printer. This
    /// can allow your application to show things like “out of paper” issues,
    /// and when the print job actually reaches the printer.
    /// 
    /// This function is often implemented using some form of polling, so it should
    /// not be enabled unless needed.
    func setTrackPrintStatus(trackStatus track_status: Bool) {
        gtk_print_operation_set_track_print_status(cast(print_operation_ptr), gboolean(track_status ? 1 : 0))
    
    }

    /// Sets up the transformation for the cairo context obtained from
    /// `GtkPrintContext` in such a way that distances are measured in
    /// units of `unit`.
    func set(unit: Unit) {
        gtk_print_operation_set_unit(cast(print_operation_ptr), unit)
    
    }

    /// If `full_page` is `true`, the transformation for the cairo context
    /// obtained from `GtkPrintContext` puts the origin at the top left
    /// corner of the page (which may not be the top left corner of the
    /// sheet, depending on page orientation and the number of pages per
    /// sheet). Otherwise, the origin is at the top left corner of the
    /// imageable area (i.e. inside the margins).
    func setUse(fullPage full_page: Bool) {
        gtk_print_operation_set_use_full_page(cast(print_operation_ptr), gboolean(full_page ? 1 : 0))
    
    }
    /// Returns the default page setup, see
    /// gtk_print_operation_set_default_page_setup().
    var defaultPageSetup: UnsafeMutablePointer<GtkPageSetup>! {
        /// Returns the default page setup, see
        /// gtk_print_operation_set_default_page_setup().
        get {
            let rv = gtk_print_operation_get_default_page_setup(cast(print_operation_ptr))
            return cast(rv)
        }
        /// Makes `default_page_setup` the default page setup for `op`.
        /// 
        /// This page setup will be used by gtk_print_operation_run(),
        /// but it can be overridden on a per-page basis by connecting
        /// to the `GtkPrintOperation`::request-page-setup signal.
        nonmutating set {
            gtk_print_operation_set_default_page_setup(cast(print_operation_ptr), cast(newValue))
        }
    }

    /// Gets the value of `GtkPrintOperation`:embed-page-setup property.
    var embedPageSetup: Bool {
        /// Gets the value of `GtkPrintOperation`:embed-page-setup property.
        get {
            let rv = gtk_print_operation_get_embed_page_setup(cast(print_operation_ptr))
            return Bool(rv != 0)
        }
        /// Embed page size combo box and orientation combo box into page setup page.
        /// Selected page setup is stored as default page setup in `GtkPrintOperation`.
        nonmutating set {
            gtk_print_operation_set_embed_page_setup(cast(print_operation_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the value of `GtkPrintOperation`:has-selection property.
    var hasSelection: Bool {
        /// Gets the value of `GtkPrintOperation`:has-selection property.
        get {
            let rv = gtk_print_operation_get_has_selection(cast(print_operation_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether there is a selection to print.
        /// 
        /// Application has to set number of pages to which the selection
        /// will draw by gtk_print_operation_set_n_pages() in a callback of
        /// `GtkPrintOperation`::begin-print.
        nonmutating set {
            gtk_print_operation_set_has_selection(cast(print_operation_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// A convenience function to find out if the print operation
    /// is finished, either successfully (`GTK_PRINT_STATUS_FINISHED`)
    /// or unsuccessfully (`GTK_PRINT_STATUS_FINISHED_ABORTED`).
    /// 
    /// Note: when you enable print status tracking the print operation
    /// can be in a non-finished state even after done has been called, as
    /// the operation status then tracks the print job status on the printer.
    var isFinished: Bool {
        /// A convenience function to find out if the print operation
        /// is finished, either successfully (`GTK_PRINT_STATUS_FINISHED`)
        /// or unsuccessfully (`GTK_PRINT_STATUS_FINISHED_ABORTED`).
        /// 
        /// Note: when you enable print status tracking the print operation
        /// can be in a non-finished state even after done has been called, as
        /// the operation status then tracks the print job status on the printer.
        get {
            let rv = gtk_print_operation_is_finished(cast(print_operation_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns the number of pages that will be printed.
    /// 
    /// Note that this value is set during print preparation phase
    /// (`GTK_PRINT_STATUS_PREPARING`), so this function should never be
    /// called before the data generation phase (`GTK_PRINT_STATUS_GENERATING_DATA`).
    /// You can connect to the `GtkPrintOperation`::status-changed signal
    /// and call gtk_print_operation_get_n_pages_to_print() when
    /// print status is `GTK_PRINT_STATUS_GENERATING_DATA`.
    /// This is typically used to track the progress of print operation.
    var nPagesToPrint: CInt {
        /// Returns the number of pages that will be printed.
        /// 
        /// Note that this value is set during print preparation phase
        /// (`GTK_PRINT_STATUS_PREPARING`), so this function should never be
        /// called before the data generation phase (`GTK_PRINT_STATUS_GENERATING_DATA`).
        /// You can connect to the `GtkPrintOperation`::status-changed signal
        /// and call gtk_print_operation_get_n_pages_to_print() when
        /// print status is `GTK_PRINT_STATUS_GENERATING_DATA`.
        /// This is typically used to track the progress of print operation.
        get {
            let rv = gtk_print_operation_get_n_pages_to_print(cast(print_operation_ptr))
            return CInt(rv)
        }
    }

    /// Returns the current print settings.
    /// 
    /// Note that the return value is `nil` until either
    /// gtk_print_operation_set_print_settings() or
    /// gtk_print_operation_run() have been called.
    var printSettings: UnsafeMutablePointer<GtkPrintSettings>! {
        /// Returns the current print settings.
        /// 
        /// Note that the return value is `nil` until either
        /// gtk_print_operation_set_print_settings() or
        /// gtk_print_operation_run() have been called.
        get {
            let rv = gtk_print_operation_get_print_settings(cast(print_operation_ptr))
            return cast(rv)
        }
        /// Sets the print settings for `op`. This is typically used to
        /// re-establish print settings from a previous print operation,
        /// see gtk_print_operation_run().
        nonmutating set {
            gtk_print_operation_set_print_settings(cast(print_operation_ptr), cast(newValue))
        }
    }

    /// The status of the print operation.
    var status: GtkPrintStatus {
        /// Returns the status of the print operation.
        /// Also see gtk_print_operation_get_status_string().
        get {
            let rv = gtk_print_operation_get_status(cast(print_operation_ptr))
            return rv
        }
    }

    /// Returns a string representation of the status of the
    /// print operation. The string is translated and suitable
    /// for displaying the print status e.g. in a `GtkStatusbar`.
    /// 
    /// Use gtk_print_operation_get_status() to obtain a status
    /// value that is suitable for programmatic use.
    var statusString: String! {
        /// Returns a string representation of the status of the
        /// print operation. The string is translated and suitable
        /// for displaying the print status e.g. in a `GtkStatusbar`.
        /// 
        /// Use gtk_print_operation_get_status() to obtain a status
        /// value that is suitable for programmatic use.
        get {
            let rv = gtk_print_operation_get_status_string(cast(print_operation_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the value of `GtkPrintOperation`:support-selection property.
    var supportSelection: Bool {
        /// Gets the value of `GtkPrintOperation`:support-selection property.
        get {
            let rv = gtk_print_operation_get_support_selection(cast(print_operation_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether selection is supported by `GtkPrintOperation`.
        nonmutating set {
            gtk_print_operation_set_support_selection(cast(print_operation_ptr), gboolean(newValue ? 1 : 0))
        }
    }
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
/// 
/// Printing support was added in GTK+ 2.10.
public protocol PrintSettingsProtocol: GLibObject.ObjectProtocol {
    /// Untyped pointer to the underlying `GtkPrintSettings` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPrintSettings` instance.
    var print_settings_ptr: UnsafeMutablePointer<GtkPrintSettings> { get }
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
/// 
/// Printing support was added in GTK+ 2.10.
public struct PrintSettingsRef: PrintSettingsProtocol {
    /// Untyped pointer to the underlying `GtkPrintSettings` instance.
    /// For type-safe access, use the generated, typed pointer `print_settings_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PrintSettingsRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPrintSettings>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PrintSettingsProtocol`
    init<T: PrintSettingsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkPrintSettings` object.
    init() {
        let rv = gtk_print_settings_new()
        self.init(cast(rv))
    }

    /// Reads the print settings from `file_name`. Returns a new `GtkPrintSettings`
    /// object with the restored settings, or `nil` if an error occurred. If the
    /// file could not be loaded then error is set to either a `GFileError` or
    /// `GKeyFileError`.  See gtk_print_settings_to_file().
    init(file file_name: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_print_settings_new_from_file(file_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Deserialize print settings from an a{sv} variant in
    /// the format produced by gtk_print_settings_to_gvariant().
    init(gvariant variant: VariantProtocol) {
        let rv = gtk_print_settings_new_from_gvariant(cast(variant.ptr))
        self.init(cast(rv))
    }

    /// Reads the print settings from the group `group_name` in `key_file`.  Returns a
    /// new `GtkPrintSettings` object with the restored settings, or `nil` if an
    /// error occurred. If the file could not be loaded then error is set to either
    /// a `GFileError` or `GKeyFileError`.
    init(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_print_settings_new_from_key_file(cast(key_file.ptr), group_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }
    /// Reads the print settings from `file_name`. Returns a new `GtkPrintSettings`
    /// object with the restored settings, or `nil` if an error occurred. If the
    /// file could not be loaded then error is set to either a `GFileError` or
    /// `GKeyFileError`.  See gtk_print_settings_to_file().
    static func newFrom(file file_name: UnsafePointer<gchar>) throws -> PrintSettingsRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_print_settings_new_from_file(file_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PrintSettingsRef(cast($0)) }
    }

    /// Deserialize print settings from an a{sv} variant in
    /// the format produced by gtk_print_settings_to_gvariant().
    static func newFromG(gvariant variant: VariantProtocol) -> PrintSettingsRef! {
        let rv = gtk_print_settings_new_from_gvariant(cast(variant.ptr))
        return rv.map { PrintSettingsRef(cast($0)) }
    }

    /// Reads the print settings from the group `group_name` in `key_file`.  Returns a
    /// new `GtkPrintSettings` object with the restored settings, or `nil` if an
    /// error occurred. If the file could not be loaded then error is set to either
    /// a `GFileError` or `GKeyFileError`.
    static func newFrom(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) throws -> PrintSettingsRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_print_settings_new_from_key_file(cast(key_file.ptr), group_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PrintSettingsRef(cast($0)) }
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
/// 
/// Printing support was added in GTK+ 2.10.
open class PrintSettings: GLibObject.Object, PrintSettingsProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PrintSettings` instance.
    public init(_ op: UnsafeMutablePointer<GtkPrintSettings>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `PrintSettingsProtocol`
    /// Will retain `GtkPrintSettings`.
    public convenience init<T: PrintSettingsProtocol>(_ other: T) {
        self.init(cast(other.print_settings_ptr))
        g_object_ref(cast(print_settings_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPrintSettings.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPrintSettings.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPrintSettings.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintSettingsProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPrintSettings>(opaquePointer))
    }

    /// Creates a new `GtkPrintSettings` object.
    public convenience init() {
        let rv = gtk_print_settings_new()
        self.init(cast(rv))
    }

    /// Reads the print settings from `file_name`. Returns a new `GtkPrintSettings`
    /// object with the restored settings, or `nil` if an error occurred. If the
    /// file could not be loaded then error is set to either a `GFileError` or
    /// `GKeyFileError`.  See gtk_print_settings_to_file().
    public convenience init(file file_name: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_print_settings_new_from_file(file_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Deserialize print settings from an a{sv} variant in
    /// the format produced by gtk_print_settings_to_gvariant().
    public convenience init(gvariant variant: VariantProtocol) {
        let rv = gtk_print_settings_new_from_gvariant(cast(variant.ptr))
        self.init(cast(rv))
    }

    /// Reads the print settings from the group `group_name` in `key_file`.  Returns a
    /// new `GtkPrintSettings` object with the restored settings, or `nil` if an
    /// error occurred. If the file could not be loaded then error is set to either
    /// a `GFileError` or `GKeyFileError`.
    public convenience init(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_print_settings_new_from_key_file(cast(key_file.ptr), group_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Reads the print settings from `file_name`. Returns a new `GtkPrintSettings`
    /// object with the restored settings, or `nil` if an error occurred. If the
    /// file could not be loaded then error is set to either a `GFileError` or
    /// `GKeyFileError`.  See gtk_print_settings_to_file().
    public static func newFrom(file file_name: UnsafePointer<gchar>) throws -> PrintSettings! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_print_settings_new_from_file(file_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PrintSettings(cast($0)) }
    }

    /// Deserialize print settings from an a{sv} variant in
    /// the format produced by gtk_print_settings_to_gvariant().
    public static func newFromG(gvariant variant: VariantProtocol) -> PrintSettings! {
        let rv = gtk_print_settings_new_from_gvariant(cast(variant.ptr))
        return rv.map { PrintSettings(cast($0)) }
    }

    /// Reads the print settings from the group `group_name` in `key_file`.  Returns a
    /// new `GtkPrintSettings` object with the restored settings, or `nil` if an
    /// error occurred. If the file could not be loaded then error is set to either
    /// a `GFileError` or `GKeyFileError`.
    public static func newFrom(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) throws -> PrintSettings! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_print_settings_new_from_key_file(cast(key_file.ptr), group_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PrintSettings(cast($0)) }
    }

}

// MARK: - no PrintSettings properties

public enum PrintSettingsSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension PrintSettingsProtocol {
    /// Connect a `PrintSettingsSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PrintSettingsSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(print_settings_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension PrintSettingsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPrintSettings` instance.
    var print_settings_ptr: UnsafeMutablePointer<GtkPrintSettings> { return ptr.assumingMemoryBound(to: GtkPrintSettings.self) }

    /// Copies a `GtkPrintSettings` object.
    func copy() -> UnsafeMutablePointer<GtkPrintSettings>! {
        let rv = gtk_print_settings_copy(cast(print_settings_ptr))
        return cast(rv)
    }

    /// Calls `func` for each key-value pair of `settings`.
    func foreach(_ func_: @escaping PrintSettingsFunc, userData user_data: UnsafeMutableRawPointer) {
        gtk_print_settings_foreach(cast(print_settings_ptr), func_, cast(user_data))
    
    }

    /// Looks up the string value associated with `key`.
    func get(key: UnsafePointer<gchar>) -> String! {
        let rv = gtk_print_settings_get(cast(print_settings_ptr), key)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the boolean represented by the value
    /// that is associated with `key`.
    /// 
    /// The string “true” represents `true`, any other
    /// string `false`.
    func getBool(key: UnsafePointer<gchar>) -> Bool {
        let rv = gtk_print_settings_get_bool(cast(print_settings_ptr), key)
        return Bool(rv != 0)
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_COLLATE`.
    func getCollate() -> Bool {
        let rv = gtk_print_settings_get_collate(cast(print_settings_ptr))
        return Bool(rv != 0)
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_DEFAULT_SOURCE`.
    func getDefaultSource() -> String! {
        let rv = gtk_print_settings_get_default_source(cast(print_settings_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_DITHER`.
    func getDither() -> String! {
        let rv = gtk_print_settings_get_dither(cast(print_settings_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the double value associated with `key`, or 0.
    func getDouble(key: UnsafePointer<gchar>) -> gdouble {
        let rv = gtk_print_settings_get_double(cast(print_settings_ptr), key)
        return rv
    }

    /// Returns the floating point number represented by
    /// the value that is associated with `key`, or `default_val`
    /// if the value does not represent a floating point number.
    /// 
    /// Floating point numbers are parsed with g_ascii_strtod().
    func getDoubleWithDefault(key: UnsafePointer<gchar>, def: gdouble) -> gdouble {
        let rv = gtk_print_settings_get_double_with_default(cast(print_settings_ptr), key, def)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_DUPLEX`.
    func getDuplex() -> GtkPrintDuplex {
        let rv = gtk_print_settings_get_duplex(cast(print_settings_ptr))
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_FINISHINGS`.
    func getFinishings() -> String! {
        let rv = gtk_print_settings_get_finishings(cast(print_settings_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the integer value of `key`, or 0.
    func getInt(key: UnsafePointer<gchar>) -> CInt {
        let rv = gtk_print_settings_get_int(cast(print_settings_ptr), key)
        return CInt(rv)
    }

    /// Returns the value of `key`, interpreted as
    /// an integer, or the default value.
    func getIntWithDefault(key: UnsafePointer<gchar>, def: CInt) -> CInt {
        let rv = gtk_print_settings_get_int_with_default(cast(print_settings_ptr), key, gint(def))
        return CInt(rv)
    }

    /// Returns the value associated with `key`, interpreted
    /// as a length. The returned value is converted to `units`.
    func getLength(key: UnsafePointer<gchar>, unit: Unit) -> gdouble {
        let rv = gtk_print_settings_get_length(cast(print_settings_ptr), key, unit)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_MEDIA_TYPE`.
    /// 
    /// The set of media types is defined in PWG 5101.1-2002 PWG.
    func getMediaType() -> String! {
        let rv = gtk_print_settings_get_media_type(cast(print_settings_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_N_COPIES`.
    func getNCopies() -> CInt {
        let rv = gtk_print_settings_get_n_copies(cast(print_settings_ptr))
        return CInt(rv)
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_NUMBER_UP`.
    func getNumberUp() -> CInt {
        let rv = gtk_print_settings_get_number_up(cast(print_settings_ptr))
        return CInt(rv)
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT`.
    func getNumberUpLayout() -> GtkNumberUpLayout {
        let rv = gtk_print_settings_get_number_up_layout(cast(print_settings_ptr))
        return rv
    }

    /// Get the value of `GTK_PRINT_SETTINGS_ORIENTATION`,
    /// converted to a `GtkPageOrientation`.
    func getOrientation() -> GtkPageOrientation {
        let rv = gtk_print_settings_get_orientation(cast(print_settings_ptr))
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_OUTPUT_BIN`.
    func getOutputBin() -> String! {
        let rv = gtk_print_settings_get_output_bin(cast(print_settings_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PAGE_RANGES`.
    func getPageRanges(numRanges num_ranges: UnsafeMutablePointer<CInt>) -> UnsafeMutablePointer<GtkPageRange>! {
        let rv = gtk_print_settings_get_page_ranges(cast(print_settings_ptr), cast(num_ranges))
        return cast(rv)
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PAGE_SET`.
    func getPageSet() -> GtkPageSet {
        let rv = gtk_print_settings_get_page_set(cast(print_settings_ptr))
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PAPER_HEIGHT`,
    /// converted to `unit`.
    func getPaperHeight(unit: Unit) -> gdouble {
        let rv = gtk_print_settings_get_paper_height(cast(print_settings_ptr), unit)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PAPER_FORMAT`,
    /// converted to a `GtkPaperSize`.
    func getPaperSize() -> UnsafeMutablePointer<GtkPaperSize>! {
        let rv = gtk_print_settings_get_paper_size(cast(print_settings_ptr))
        return cast(rv)
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PAPER_WIDTH`,
    /// converted to `unit`.
    func getPaperWidth(unit: Unit) -> gdouble {
        let rv = gtk_print_settings_get_paper_width(cast(print_settings_ptr), unit)
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PRINT_PAGES`.
    func getPrintPages() -> GtkPrintPages {
        let rv = gtk_print_settings_get_print_pages(cast(print_settings_ptr))
        return rv
    }

    /// Convenience function to obtain the value of
    /// `GTK_PRINT_SETTINGS_PRINTER`.
    func getPrinter() -> String! {
        let rv = gtk_print_settings_get_printer(cast(print_settings_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PRINTER_LPI`.
    func getPrinterLpi() -> gdouble {
        let rv = gtk_print_settings_get_printer_lpi(cast(print_settings_ptr))
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_QUALITY`.
    func getQuality() -> GtkPrintQuality {
        let rv = gtk_print_settings_get_quality(cast(print_settings_ptr))
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION`.
    func getResolution() -> CInt {
        let rv = gtk_print_settings_get_resolution(cast(print_settings_ptr))
        return CInt(rv)
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION_X`.
    func getResolutionX() -> CInt {
        let rv = gtk_print_settings_get_resolution_x(cast(print_settings_ptr))
        return CInt(rv)
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION_Y`.
    func getResolutionY() -> CInt {
        let rv = gtk_print_settings_get_resolution_y(cast(print_settings_ptr))
        return CInt(rv)
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_REVERSE`.
    func getReverse() -> Bool {
        let rv = gtk_print_settings_get_reverse(cast(print_settings_ptr))
        return Bool(rv != 0)
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_SCALE`.
    func getScale() -> gdouble {
        let rv = gtk_print_settings_get_scale(cast(print_settings_ptr))
        return rv
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_USE_COLOR`.
    func getUseColor() -> Bool {
        let rv = gtk_print_settings_get_use_color(cast(print_settings_ptr))
        return Bool(rv != 0)
    }

    /// Returns `true`, if a value is associated with `key`.
    func has(key: UnsafePointer<gchar>) -> Bool {
        let rv = gtk_print_settings_has_key(cast(print_settings_ptr), key)
        return Bool(rv != 0)
    }

    /// Reads the print settings from `file_name`. If the file could not be loaded
    /// then error is set to either a `GFileError` or `GKeyFileError`.
    /// See gtk_print_settings_to_file().
    func loadFile(fileName file_name: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_print_settings_load_file(cast(print_settings_ptr), file_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Reads the print settings from the group `group_name` in `key_file`. If the
    /// file could not be loaded then error is set to either a `GFileError` or
    /// `GKeyFileError`.
    func load(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_print_settings_load_key_file(cast(print_settings_ptr), cast(key_file.ptr), group_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Associates `value` with `key`.
    func set(key: UnsafePointer<gchar>, value: UnsafePointer<gchar>) {
        gtk_print_settings_set(cast(print_settings_ptr), key, value)
    
    }

    /// Sets `key` to a boolean value.
    func setBool(key: UnsafePointer<gchar>, value: Bool) {
        gtk_print_settings_set_bool(cast(print_settings_ptr), key, gboolean(value ? 1 : 0))
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_COLLATE`.
    func set(collate: Bool) {
        gtk_print_settings_set_collate(cast(print_settings_ptr), gboolean(collate ? 1 : 0))
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_DEFAULT_SOURCE`.
    func set(defaultSource default_source: UnsafePointer<gchar>) {
        gtk_print_settings_set_default_source(cast(print_settings_ptr), default_source)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_DITHER`.
    func set(dither: UnsafePointer<gchar>) {
        gtk_print_settings_set_dither(cast(print_settings_ptr), dither)
    
    }

    /// Sets `key` to a double value.
    func setDouble(key: UnsafePointer<gchar>, value: gdouble) {
        gtk_print_settings_set_double(cast(print_settings_ptr), key, value)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_DUPLEX`.
    func set(duplex: PrintDuplex) {
        gtk_print_settings_set_duplex(cast(print_settings_ptr), duplex)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_FINISHINGS`.
    func set(finishings: UnsafePointer<gchar>) {
        gtk_print_settings_set_finishings(cast(print_settings_ptr), finishings)
    
    }

    /// Sets `key` to an integer value.
    func setInt(key: UnsafePointer<gchar>, value: CInt) {
        gtk_print_settings_set_int(cast(print_settings_ptr), key, gint(value))
    
    }

    /// Associates a length in units of `unit` with `key`.
    func setLength(key: UnsafePointer<gchar>, value: gdouble, unit: Unit) {
        gtk_print_settings_set_length(cast(print_settings_ptr), key, value, unit)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_MEDIA_TYPE`.
    /// 
    /// The set of media types is defined in PWG 5101.1-2002 PWG.
    func set(mediaType media_type: UnsafePointer<gchar>) {
        gtk_print_settings_set_media_type(cast(print_settings_ptr), media_type)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_N_COPIES`.
    func setNCopies(numCopies num_copies: CInt) {
        gtk_print_settings_set_n_copies(cast(print_settings_ptr), gint(num_copies))
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_NUMBER_UP`.
    func set(numberUp number_up: CInt) {
        gtk_print_settings_set_number_up(cast(print_settings_ptr), gint(number_up))
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT`.
    func set(numberUpLayout number_up_layout: NumberUpLayout) {
        gtk_print_settings_set_number_up_layout(cast(print_settings_ptr), number_up_layout)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_ORIENTATION`.
    func set(orientation: PageOrientation) {
        gtk_print_settings_set_orientation(cast(print_settings_ptr), orientation)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_OUTPUT_BIN`.
    func set(outputBin output_bin: UnsafePointer<gchar>) {
        gtk_print_settings_set_output_bin(cast(print_settings_ptr), output_bin)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_PAGE_RANGES`.
    func set(pageRanges page_ranges: UnsafeMutablePointer<GtkPageRange>, numRanges num_ranges: CInt) {
        gtk_print_settings_set_page_ranges(cast(print_settings_ptr), cast(page_ranges), gint(num_ranges))
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_PAGE_SET`.
    func set(pageSet page_set: PageSet) {
        gtk_print_settings_set_page_set(cast(print_settings_ptr), page_set)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_PAPER_HEIGHT`.
    func setPaper(height: gdouble, unit: Unit) {
        gtk_print_settings_set_paper_height(cast(print_settings_ptr), height, unit)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_PAPER_FORMAT`,
    /// `GTK_PRINT_SETTINGS_PAPER_WIDTH` and
    /// `GTK_PRINT_SETTINGS_PAPER_HEIGHT`.
    func set(paperSize paper_size: PaperSizeProtocol) {
        gtk_print_settings_set_paper_size(cast(print_settings_ptr), cast(paper_size.ptr))
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_PAPER_WIDTH`.
    func setPaper(width: gdouble, unit: Unit) {
        gtk_print_settings_set_paper_width(cast(print_settings_ptr), width, unit)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_PRINT_PAGES`.
    func setPrint(pages: PrintPages) {
        gtk_print_settings_set_print_pages(cast(print_settings_ptr), pages)
    
    }

    /// Convenience function to set `GTK_PRINT_SETTINGS_PRINTER`
    /// to `printer`.
    func set(printer: UnsafePointer<gchar>) {
        gtk_print_settings_set_printer(cast(print_settings_ptr), printer)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_PRINTER_LPI`.
    func setPrinter(lpi: gdouble) {
        gtk_print_settings_set_printer_lpi(cast(print_settings_ptr), lpi)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_QUALITY`.
    func set(quality: PrintQuality) {
        gtk_print_settings_set_quality(cast(print_settings_ptr), quality)
    
    }

    /// Sets the values of `GTK_PRINT_SETTINGS_RESOLUTION`,
    /// `GTK_PRINT_SETTINGS_RESOLUTION_X` and
    /// `GTK_PRINT_SETTINGS_RESOLUTION_Y`.
    func set(resolution: CInt) {
        gtk_print_settings_set_resolution(cast(print_settings_ptr), gint(resolution))
    
    }

    /// Sets the values of `GTK_PRINT_SETTINGS_RESOLUTION`,
    /// `GTK_PRINT_SETTINGS_RESOLUTION_X` and
    /// `GTK_PRINT_SETTINGS_RESOLUTION_Y`.
    func setResolutionXy(resolutionX resolution_x: CInt, resolutionY resolution_y: CInt) {
        gtk_print_settings_set_resolution_xy(cast(print_settings_ptr), gint(resolution_x), gint(resolution_y))
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_REVERSE`.
    func set(reverse: Bool) {
        gtk_print_settings_set_reverse(cast(print_settings_ptr), gboolean(reverse ? 1 : 0))
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_SCALE`.
    func set(scale: gdouble) {
        gtk_print_settings_set_scale(cast(print_settings_ptr), scale)
    
    }

    /// Sets the value of `GTK_PRINT_SETTINGS_USE_COLOR`.
    func set(useColor use_color: Bool) {
        gtk_print_settings_set_use_color(cast(print_settings_ptr), gboolean(use_color ? 1 : 0))
    
    }

    /// This function saves the print settings from `settings` to `file_name`. If the
    /// file could not be loaded then error is set to either a `GFileError` or
    /// `GKeyFileError`.
    func toFile(fileName file_name: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_print_settings_to_file(cast(print_settings_ptr), file_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Serialize print settings to an a{sv} variant.
    func toGvariant() -> UnsafeMutablePointer<GVariant>! {
        let rv = gtk_print_settings_to_gvariant(cast(print_settings_ptr))
        return cast(rv)
    }

    /// This function adds the print settings from `settings` to `key_file`.
    func to(keyFile key_file: KeyFileProtocol, groupName group_name: UnsafePointer<gchar>) {
        gtk_print_settings_to_key_file(cast(print_settings_ptr), cast(key_file.ptr), group_name)
    
    }

    /// Removes any value associated with `key`.
    /// This has the same effect as setting the value to `nil`.
    func unset(key: UnsafePointer<gchar>) {
        gtk_print_settings_unset(cast(print_settings_ptr), key)
    
    }

    /// Runs a page setup dialog, letting the user modify the values from
    /// `page_setup`. If the user cancels the dialog, the returned `GtkPageSetup`
    /// is identical to the passed in `page_setup`, otherwise it contains the
    /// modifications done in the dialog.
    /// 
    /// Note that this function may use a recursive mainloop to show the page
    /// setup dialog. See gtk_print_run_page_setup_dialog_async() if this is
    /// a problem.
    func printRunPageSetupDialog(parent: WindowProtocol, pageSetup page_setup: PageSetupProtocol) -> UnsafeMutablePointer<GtkPageSetup>! {
        let rv = gtk_print_run_page_setup_dialog(cast(parent.ptr), cast(page_setup.ptr), cast(print_settings_ptr))
        return cast(rv)
    }

    /// Runs a page setup dialog, letting the user modify the values from `page_setup`.
    /// 
    /// In contrast to gtk_print_run_page_setup_dialog(), this function  returns after
    /// showing the page setup dialog on platforms that support this, and calls `done_cb`
    /// from a signal handler for the ::response signal of the dialog.
    func printRunPageSetupDialogAsync(parent: WindowProtocol, pageSetup page_setup: PageSetupProtocol, doneCb done_cb: @escaping PageSetupDoneFunc, data: UnsafeMutableRawPointer) {
        gtk_print_run_page_setup_dialog_async(cast(parent.ptr), cast(page_setup.ptr), cast(print_settings_ptr), done_cb, cast(data))
    
    }
    /// Gets the value of `GTK_PRINT_SETTINGS_COLLATE`.
    var collate: Bool {
        /// Gets the value of `GTK_PRINT_SETTINGS_COLLATE`.
        get {
            let rv = gtk_print_settings_get_collate(cast(print_settings_ptr))
            return Bool(rv != 0)
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_COLLATE`.
        nonmutating set {
            gtk_print_settings_set_collate(cast(print_settings_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_DEFAULT_SOURCE`.
    var defaultSource: String! {
        /// Gets the value of `GTK_PRINT_SETTINGS_DEFAULT_SOURCE`.
        get {
            let rv = gtk_print_settings_get_default_source(cast(print_settings_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_DEFAULT_SOURCE`.
        nonmutating set {
            gtk_print_settings_set_default_source(cast(print_settings_ptr), newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_DITHER`.
    var dither: String! {
        /// Gets the value of `GTK_PRINT_SETTINGS_DITHER`.
        get {
            let rv = gtk_print_settings_get_dither(cast(print_settings_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_DITHER`.
        nonmutating set {
            gtk_print_settings_set_dither(cast(print_settings_ptr), newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_DUPLEX`.
    var duplex: GtkPrintDuplex {
        /// Gets the value of `GTK_PRINT_SETTINGS_DUPLEX`.
        get {
            let rv = gtk_print_settings_get_duplex(cast(print_settings_ptr))
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_DUPLEX`.
        nonmutating set {
            gtk_print_settings_set_duplex(cast(print_settings_ptr), newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_FINISHINGS`.
    var finishings: String! {
        /// Gets the value of `GTK_PRINT_SETTINGS_FINISHINGS`.
        get {
            let rv = gtk_print_settings_get_finishings(cast(print_settings_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_FINISHINGS`.
        nonmutating set {
            gtk_print_settings_set_finishings(cast(print_settings_ptr), newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_MEDIA_TYPE`.
    /// 
    /// The set of media types is defined in PWG 5101.1-2002 PWG.
    var mediaType: String! {
        /// Gets the value of `GTK_PRINT_SETTINGS_MEDIA_TYPE`.
        /// 
        /// The set of media types is defined in PWG 5101.1-2002 PWG.
        get {
            let rv = gtk_print_settings_get_media_type(cast(print_settings_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_MEDIA_TYPE`.
        /// 
        /// The set of media types is defined in PWG 5101.1-2002 PWG.
        nonmutating set {
            gtk_print_settings_set_media_type(cast(print_settings_ptr), newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_N_COPIES`.
    var nCopies: CInt {
        /// Gets the value of `GTK_PRINT_SETTINGS_N_COPIES`.
        get {
            let rv = gtk_print_settings_get_n_copies(cast(print_settings_ptr))
            return CInt(rv)
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_N_COPIES`.
        nonmutating set {
            gtk_print_settings_set_n_copies(cast(print_settings_ptr), gint(newValue))
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_NUMBER_UP`.
    var numberUp: CInt {
        /// Gets the value of `GTK_PRINT_SETTINGS_NUMBER_UP`.
        get {
            let rv = gtk_print_settings_get_number_up(cast(print_settings_ptr))
            return CInt(rv)
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_NUMBER_UP`.
        nonmutating set {
            gtk_print_settings_set_number_up(cast(print_settings_ptr), gint(newValue))
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT`.
    var numberUpLayout: GtkNumberUpLayout {
        /// Gets the value of `GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT`.
        get {
            let rv = gtk_print_settings_get_number_up_layout(cast(print_settings_ptr))
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT`.
        nonmutating set {
            gtk_print_settings_set_number_up_layout(cast(print_settings_ptr), newValue)
        }
    }

    /// Get the value of `GTK_PRINT_SETTINGS_ORIENTATION`,
    /// converted to a `GtkPageOrientation`.
    var orientation: GtkPageOrientation {
        /// Get the value of `GTK_PRINT_SETTINGS_ORIENTATION`,
        /// converted to a `GtkPageOrientation`.
        get {
            let rv = gtk_print_settings_get_orientation(cast(print_settings_ptr))
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_ORIENTATION`.
        nonmutating set {
            gtk_print_settings_set_orientation(cast(print_settings_ptr), newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_OUTPUT_BIN`.
    var outputBin: String! {
        /// Gets the value of `GTK_PRINT_SETTINGS_OUTPUT_BIN`.
        get {
            let rv = gtk_print_settings_get_output_bin(cast(print_settings_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_OUTPUT_BIN`.
        nonmutating set {
            gtk_print_settings_set_output_bin(cast(print_settings_ptr), newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PAGE_SET`.
    var pageSet: GtkPageSet {
        /// Gets the value of `GTK_PRINT_SETTINGS_PAGE_SET`.
        get {
            let rv = gtk_print_settings_get_page_set(cast(print_settings_ptr))
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_PAGE_SET`.
        nonmutating set {
            gtk_print_settings_set_page_set(cast(print_settings_ptr), newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PAPER_FORMAT`,
    /// converted to a `GtkPaperSize`.
    var paperSize: UnsafeMutablePointer<GtkPaperSize>! {
        /// Gets the value of `GTK_PRINT_SETTINGS_PAPER_FORMAT`,
        /// converted to a `GtkPaperSize`.
        get {
            let rv = gtk_print_settings_get_paper_size(cast(print_settings_ptr))
            return cast(rv)
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_PAPER_FORMAT`,
        /// `GTK_PRINT_SETTINGS_PAPER_WIDTH` and
        /// `GTK_PRINT_SETTINGS_PAPER_HEIGHT`.
        nonmutating set {
            gtk_print_settings_set_paper_size(cast(print_settings_ptr), cast(newValue))
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PRINT_PAGES`.
    var printPages: GtkPrintPages {
        /// Gets the value of `GTK_PRINT_SETTINGS_PRINT_PAGES`.
        get {
            let rv = gtk_print_settings_get_print_pages(cast(print_settings_ptr))
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_PRINT_PAGES`.
        nonmutating set {
            gtk_print_settings_set_print_pages(cast(print_settings_ptr), newValue)
        }
    }

    /// Convenience function to obtain the value of
    /// `GTK_PRINT_SETTINGS_PRINTER`.
    var printer: String! {
        /// Convenience function to obtain the value of
        /// `GTK_PRINT_SETTINGS_PRINTER`.
        get {
            let rv = gtk_print_settings_get_printer(cast(print_settings_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Convenience function to set `GTK_PRINT_SETTINGS_PRINTER`
        /// to `printer`.
        nonmutating set {
            gtk_print_settings_set_printer(cast(print_settings_ptr), newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_PRINTER_LPI`.
    var printerLpi: gdouble {
        /// Gets the value of `GTK_PRINT_SETTINGS_PRINTER_LPI`.
        get {
            let rv = gtk_print_settings_get_printer_lpi(cast(print_settings_ptr))
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_PRINTER_LPI`.
        nonmutating set {
            gtk_print_settings_set_printer_lpi(cast(print_settings_ptr), newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_QUALITY`.
    var quality: GtkPrintQuality {
        /// Gets the value of `GTK_PRINT_SETTINGS_QUALITY`.
        get {
            let rv = gtk_print_settings_get_quality(cast(print_settings_ptr))
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_QUALITY`.
        nonmutating set {
            gtk_print_settings_set_quality(cast(print_settings_ptr), newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION`.
    var resolution: CInt {
        /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION`.
        get {
            let rv = gtk_print_settings_get_resolution(cast(print_settings_ptr))
            return CInt(rv)
        }
        /// Sets the values of `GTK_PRINT_SETTINGS_RESOLUTION`,
        /// `GTK_PRINT_SETTINGS_RESOLUTION_X` and
        /// `GTK_PRINT_SETTINGS_RESOLUTION_Y`.
        nonmutating set {
            gtk_print_settings_set_resolution(cast(print_settings_ptr), gint(newValue))
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION_X`.
    var resolutionX: CInt {
        /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION_X`.
        get {
            let rv = gtk_print_settings_get_resolution_x(cast(print_settings_ptr))
            return CInt(rv)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION_Y`.
    var resolutionY: CInt {
        /// Gets the value of `GTK_PRINT_SETTINGS_RESOLUTION_Y`.
        get {
            let rv = gtk_print_settings_get_resolution_y(cast(print_settings_ptr))
            return CInt(rv)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_REVERSE`.
    var reverse: Bool {
        /// Gets the value of `GTK_PRINT_SETTINGS_REVERSE`.
        get {
            let rv = gtk_print_settings_get_reverse(cast(print_settings_ptr))
            return Bool(rv != 0)
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_REVERSE`.
        nonmutating set {
            gtk_print_settings_set_reverse(cast(print_settings_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_SCALE`.
    var scale: gdouble {
        /// Gets the value of `GTK_PRINT_SETTINGS_SCALE`.
        get {
            let rv = gtk_print_settings_get_scale(cast(print_settings_ptr))
            return rv
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_SCALE`.
        nonmutating set {
            gtk_print_settings_set_scale(cast(print_settings_ptr), newValue)
        }
    }

    /// Gets the value of `GTK_PRINT_SETTINGS_USE_COLOR`.
    var useColor: Bool {
        /// Gets the value of `GTK_PRINT_SETTINGS_USE_COLOR`.
        get {
            let rv = gtk_print_settings_get_use_color(cast(print_settings_ptr))
            return Bool(rv != 0)
        }
        /// Sets the value of `GTK_PRINT_SETTINGS_USE_COLOR`.
        nonmutating set {
            gtk_print_settings_set_use_color(cast(print_settings_ptr), gboolean(newValue ? 1 : 0))
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
/// gtk_progress_bar_set_fraction() periodically to update the progress bar.
/// 
/// When an application has no accurate way of knowing the amount of work
/// to do, it can use the `GtkProgressBar` in activity mode, which shows
/// activity by a block moving back and forth within the progress area. In
/// this mode, the application is required to call gtk_progress_bar_pulse()
/// periodically to update the progress bar.
/// 
/// There is quite a bit of flexibility provided to control the appearance
/// of the `GtkProgressBar`. Functions are provided to control the orientation
/// of the bar, optional text can be displayed along with the bar, and the
/// step size used in activity mode can be set.
/// 
/// `` CSS nodes
/// 
/// ```
/// progressbar[.osd]
/// ├── [text]
/// ╰── trough[.empty][.full]
///     ╰── progress[.pulse]
/// ```
/// 
/// 
/// GtkProgressBar has a main CSS node with name progressbar and subnodes with
/// names text and trough, of which the latter has a subnode named progress. The
/// text subnode is only present if text is shown. The progress subnode has the
/// style class .pulse when in activity mode. It gets the style classes .left,
/// .right, .top or .bottom added when the progress 'touches' the corresponding
/// end of the GtkProgressBar. The .osd class on the progressbar node is for use
/// in overlays like the one Epiphany has for page loading progress.
public protocol ProgressBarProtocol: WidgetProtocol, OrientableProtocol {
    /// Untyped pointer to the underlying `GtkProgressBar` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkProgressBar` instance.
    var progress_bar_ptr: UnsafeMutablePointer<GtkProgressBar> { get }
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
/// gtk_progress_bar_set_fraction() periodically to update the progress bar.
/// 
/// When an application has no accurate way of knowing the amount of work
/// to do, it can use the `GtkProgressBar` in activity mode, which shows
/// activity by a block moving back and forth within the progress area. In
/// this mode, the application is required to call gtk_progress_bar_pulse()
/// periodically to update the progress bar.
/// 
/// There is quite a bit of flexibility provided to control the appearance
/// of the `GtkProgressBar`. Functions are provided to control the orientation
/// of the bar, optional text can be displayed along with the bar, and the
/// step size used in activity mode can be set.
/// 
/// `` CSS nodes
/// 
/// ```
/// progressbar[.osd]
/// ├── [text]
/// ╰── trough[.empty][.full]
///     ╰── progress[.pulse]
/// ```
/// 
/// 
/// GtkProgressBar has a main CSS node with name progressbar and subnodes with
/// names text and trough, of which the latter has a subnode named progress. The
/// text subnode is only present if text is shown. The progress subnode has the
/// style class .pulse when in activity mode. It gets the style classes .left,
/// .right, .top or .bottom added when the progress 'touches' the corresponding
/// end of the GtkProgressBar. The .osd class on the progressbar node is for use
/// in overlays like the one Epiphany has for page loading progress.
public struct ProgressBarRef: ProgressBarProtocol {
    /// Untyped pointer to the underlying `GtkProgressBar` instance.
    /// For type-safe access, use the generated, typed pointer `progress_bar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProgressBarRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkProgressBar>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProgressBarProtocol`
    init<T: ProgressBarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkProgressBar`.
    init() {
        let rv = gtk_progress_bar_new()
        self.init(cast(rv))
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
/// gtk_progress_bar_set_fraction() periodically to update the progress bar.
/// 
/// When an application has no accurate way of knowing the amount of work
/// to do, it can use the `GtkProgressBar` in activity mode, which shows
/// activity by a block moving back and forth within the progress area. In
/// this mode, the application is required to call gtk_progress_bar_pulse()
/// periodically to update the progress bar.
/// 
/// There is quite a bit of flexibility provided to control the appearance
/// of the `GtkProgressBar`. Functions are provided to control the orientation
/// of the bar, optional text can be displayed along with the bar, and the
/// step size used in activity mode can be set.
/// 
/// `` CSS nodes
/// 
/// ```
/// progressbar[.osd]
/// ├── [text]
/// ╰── trough[.empty][.full]
///     ╰── progress[.pulse]
/// ```
/// 
/// 
/// GtkProgressBar has a main CSS node with name progressbar and subnodes with
/// names text and trough, of which the latter has a subnode named progress. The
/// text subnode is only present if text is shown. The progress subnode has the
/// style class .pulse when in activity mode. It gets the style classes .left,
/// .right, .top or .bottom added when the progress 'touches' the corresponding
/// end of the GtkProgressBar. The .osd class on the progressbar node is for use
/// in overlays like the one Epiphany has for page loading progress.
open class ProgressBar: Widget, ProgressBarProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ProgressBar` instance.
    public init(_ op: UnsafeMutablePointer<GtkProgressBar>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ProgressBarProtocol`
    /// Will retain `GtkProgressBar`.
    public convenience init<T: ProgressBarProtocol>(_ other: T) {
        self.init(cast(other.progress_bar_ptr))
        g_object_ref(cast(progress_bar_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkProgressBar.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkProgressBar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkProgressBar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkProgressBar>(opaquePointer))
    }

    /// Creates a new `GtkProgressBar`.
    public convenience init() {
        let rv = gtk_progress_bar_new()
        self.init(cast(rv))
    }


}

public enum ProgressBarPropertyName: String, PropertyNameProtocol {
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
    case appPaintable = "app-paintable"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    /// The preferred place to ellipsize the string, if the progress bar does
    /// not have enough room to display the entire string, specified as a
    /// `PangoEllipsizeMode`.
    /// 
    /// Note that setting this property to a value other than
    /// `PANGO_ELLIPSIZE_NONE` has the side-effect that the progress bar requests
    /// only enough space to display the ellipsis ("..."). Another means to set a
    /// progress bar's width is gtk_widget_set_size_request().
    case ellipsize = "ellipsize"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    case fraction = "fraction"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case hexpandSet = "hexpand-set"
    case inverted = "inverted"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case pulseStep = "pulse-step"
    case receivesDefault = "receives-default"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// Sets whether the progress bar will show a text in addition
    /// to the bar itself. The shown text is either the value of
    /// the `GtkProgressBar`:text property or, if that is `nil`,
    /// the `GtkProgressBar`:fraction value, as a percentage.
    /// 
    /// To make a progress bar that is styled and sized suitably for
    /// showing text (even if the actual text is blank), set
    /// `GtkProgressBar`:show-text to `true` and `GtkProgressBar`:text
    /// to the empty string (not `nil`).
    case showText = "show-text"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    case text = "text"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ProgressBarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(progress_bar_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum ProgressBarSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The ::button-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The ::button-release-event signal will be emitted when a button
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
    /// The ::child-notify signal is emitted for each
    /// [child property][child-properties]  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The ::composited-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See gdk_screen_is_composited().
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The ::configure-event signal will be emitted when the size, position or
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
    /// The ::delete-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting gtk_widget_hide_on_delete() to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The ::destroy-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The ::direction-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The ::drag-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use g_signal_connect_after() to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The ::drag-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The ::drag-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See gtk_selection_data_set() and
    /// gtk_selection_data_set_text().
    case dragDataGet = "drag-data-get"
    /// The ::drag-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call gdk_drag_status() and not finish the drag.
    /// If the data was received in response to a `GtkWidget`::drag-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// gtk_drag_finish(), setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call gdk_drag_status() or gtk_drag_finish().
    /// 
    /// The handler may inspect the selected action with
    /// gdk_drag_context_get_selected_action() before calling
    /// gtk_drag_finish(), e.g. to implement `GDK_ACTION_ASK` as
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
    /// The ::drag-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that gtk_drag_finish() is called to let the source know that
    /// the drop is done. The call to gtk_drag_finish() can be done either
    /// directly or in a `GtkWidget`::drag-data-received handler which gets
    /// triggered by calling gtk_drag_get_data() to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The ::drag-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget`::drag-begin.
    case dragEnd = "drag-end"
    /// The ::drag-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The ::drag-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget`::drag-motion, e.g. undo highlighting
    /// with gtk_drag_unhighlight().
    /// 
    /// 
    /// Likewise, the `GtkWidget`::drag-leave signal is also emitted before the
    /// ::drag-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget`::drag-motion signal handler.
    case dragLeave = "drag-leave"
    /// The ::drag-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling gdk_drag_status().
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling gtk_drag_get_data() and
    /// defer the gdk_drag_status() call to the `GtkWidget`::drag-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to gtk_drag_dest_set()
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget`::drag-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with gtk_drag_highlight().
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
    /// gtk_widget_get_allocated_width() and
    /// gtk_widget_get_allocated_height().
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling cairo_save()
    /// before and cairo_restore() after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
    /// get a finer-grained representation of the dirty region with
    /// cairo_copy_clip_rectangle_list().
    case draw = "draw"
    /// The ::enter-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic ::event signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget`::key-press-event) and finally a generic
    /// `GtkWidget`::event-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget`::event signal and (optionally)
    /// the second more specific signal, ::event-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The ::focus-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The ::focus-out-event signal will be emitted when the keyboard focus
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
    /// The ::grab-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a gtk_grab_add() when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The ::hide signal is emitted when `widget` is hidden, for example with
    /// gtk_widget_hide().
    case hide = "hide"
    /// The ::hierarchy-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The ::key-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The ::key-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See gtk_widget_keynav_failed() for details.
    case keynavFailed = "keynav-failed"
    /// The ::leave-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The ::map signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// gtk_widget_set_visible()) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget`::map-event will
    /// be emitted.
    /// 
    /// The ::map signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget`::unmap.
    case map = "map"
    /// The ::map-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The ::motion-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The ::parent-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist][checklist-popup-menu]
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The ::property-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget`:has-tooltip is `true` and the hover timeout
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
    /// The ::realize signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that gtk_widget_realize() has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The ::screen-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The ::scroll-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The ::selection-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The ::selection-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    /// The ::show signal is emitted when `widget` is shown, for example with
    /// gtk_widget_show().
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The ::state-changed signal is emitted when the widget state changes.
    /// See gtk_widget_get_state().
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The ::state-flags-changed signal is emitted when the widget state
    /// changes, see gtk_widget_get_state_flags().
    case stateFlagsChanged = "state-flags-changed"
    /// The ::style-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// gtk_widget_modify_base() also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget`::style-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The ::style-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext`::changed signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by gtk_widget_get_style_context().
    /// 
    /// Note that style-modifying functions like gtk_widget_override_color() also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The ::unmap signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As ::unmap indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The ::unmap-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The ::unrealize signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that gtk_widget_unrealize() has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The ::visibility-notify-event will be emitted when the `widget`'s
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
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The ::window-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
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
    case notifyAppPaintable = "notify::app-paintable"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    /// The preferred place to ellipsize the string, if the progress bar does
    /// not have enough room to display the entire string, specified as a
    /// `PangoEllipsizeMode`.
    /// 
    /// Note that setting this property to a value other than
    /// `PANGO_ELLIPSIZE_NONE` has the side-effect that the progress bar requests
    /// only enough space to display the ellipsis ("..."). Another means to set a
    /// progress bar's width is gtk_widget_set_size_request().
    case notifyEllipsize = "notify::ellipsize"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    case notifyFraction = "notify::fraction"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyInverted = "notify::inverted"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyPulseStep = "notify::pulse-step"
    case notifyReceivesDefault = "notify::receives-default"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// Sets whether the progress bar will show a text in addition
    /// to the bar itself. The shown text is either the value of
    /// the `GtkProgressBar`:text property or, if that is `nil`,
    /// the `GtkProgressBar`:fraction value, as a percentage.
    /// 
    /// To make a progress bar that is styled and sized suitably for
    /// showing text (even if the actual text is blank), set
    /// `GtkProgressBar`:show-text to `true` and `GtkProgressBar`:text
    /// to the empty string (not `nil`).
    case notifyShowText = "notify::show-text"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    case notifyText = "notify::text"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension ProgressBarProtocol {
    /// Connect a `ProgressBarSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ProgressBarSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(progress_bar_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension ProgressBarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkProgressBar` instance.
    var progress_bar_ptr: UnsafeMutablePointer<GtkProgressBar> { return ptr.assumingMemoryBound(to: GtkProgressBar.self) }

    /// Returns the ellipsizing position of the progress bar.
    /// See gtk_progress_bar_set_ellipsize().
    func getEllipsize() -> PangoEllipsizeMode {
        let rv = gtk_progress_bar_get_ellipsize(cast(progress_bar_ptr))
        return rv
    }

    /// Returns the current fraction of the task that’s been completed.
    func getFraction() -> gdouble {
        let rv = gtk_progress_bar_get_fraction(cast(progress_bar_ptr))
        return rv
    }

    /// Gets the value set by gtk_progress_bar_set_inverted().
    func getInverted() -> Bool {
        let rv = gtk_progress_bar_get_inverted(cast(progress_bar_ptr))
        return Bool(rv != 0)
    }

    /// Retrieves the pulse step set with gtk_progress_bar_set_pulse_step().
    func getPulseStep() -> gdouble {
        let rv = gtk_progress_bar_get_pulse_step(cast(progress_bar_ptr))
        return rv
    }

    /// Gets the value of the `GtkProgressBar`:show-text property.
    /// See gtk_progress_bar_set_show_text().
    func getShowText() -> Bool {
        let rv = gtk_progress_bar_get_show_text(cast(progress_bar_ptr))
        return Bool(rv != 0)
    }

    /// Retrieves the text that is displayed with the progress bar,
    /// if any, otherwise `nil`. The return value is a reference
    /// to the text, not a copy of it, so will become invalid
    /// if you change the text in the progress bar.
    func getText() -> String! {
        let rv = gtk_progress_bar_get_text(cast(progress_bar_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Indicates that some progress has been made, but you don’t know how much.
    /// Causes the progress bar to enter “activity mode,” where a block
    /// bounces back and forth. Each call to gtk_progress_bar_pulse()
    /// causes the block to move by a little bit (the amount of movement
    /// per pulse is determined by gtk_progress_bar_set_pulse_step()).
    func pulse() {
        gtk_progress_bar_pulse(cast(progress_bar_ptr))
    
    }

    /// Sets the mode used to ellipsize (add an ellipsis: "...") the
    /// text if there is not enough space to render the entire string.
    func setEllipsize(mode: Pango.EllipsizeMode) {
        gtk_progress_bar_set_ellipsize(cast(progress_bar_ptr), mode)
    
    }

    /// Causes the progress bar to “fill in” the given fraction
    /// of the bar. The fraction should be between 0.0 and 1.0,
    /// inclusive.
    func set(fraction: gdouble) {
        gtk_progress_bar_set_fraction(cast(progress_bar_ptr), fraction)
    
    }

    /// Progress bars normally grow from top to bottom or left to right.
    /// Inverted progress bars grow in the opposite direction.
    func set(inverted: Bool) {
        gtk_progress_bar_set_inverted(cast(progress_bar_ptr), gboolean(inverted ? 1 : 0))
    
    }

    /// Sets the fraction of total progress bar length to move the
    /// bouncing block for each call to gtk_progress_bar_pulse().
    func setPulseStep(fraction: gdouble) {
        gtk_progress_bar_set_pulse_step(cast(progress_bar_ptr), fraction)
    
    }

    /// Sets whether the progress bar will show text next to the bar.
    /// The shown text is either the value of the `GtkProgressBar`:text
    /// property or, if that is `nil`, the `GtkProgressBar`:fraction value,
    /// as a percentage.
    /// 
    /// To make a progress bar that is styled and sized suitably for containing
    /// text (even if the actual text is blank), set `GtkProgressBar`:show-text to
    /// `true` and `GtkProgressBar`:text to the empty string (not `nil`).
    func set(showText show_text: Bool) {
        gtk_progress_bar_set_show_text(cast(progress_bar_ptr), gboolean(show_text ? 1 : 0))
    
    }

    /// Causes the given `text` to appear next to the progress bar.
    /// 
    /// If `text` is `nil` and `GtkProgressBar`:show-text is `true`, the current
    /// value of `GtkProgressBar`:fraction will be displayed as a percentage.
    /// 
    /// If `text` is non-`nil` and `GtkProgressBar`:show-text is `true`, the text
    /// will be displayed. In this case, it will not display the progress
    /// percentage. If `text` is the empty string, the progress bar will still
    /// be styled and sized suitably for containing text, as long as
    /// `GtkProgressBar`:show-text is `true`.
    func set(text: UnsafePointer<gchar>) {
        gtk_progress_bar_set_text(cast(progress_bar_ptr), text)
    
    }
    /// The preferred place to ellipsize the string, if the progress bar does
    /// not have enough room to display the entire string, specified as a
    /// `PangoEllipsizeMode`.
    /// 
    /// Note that setting this property to a value other than
    /// `PANGO_ELLIPSIZE_NONE` has the side-effect that the progress bar requests
    /// only enough space to display the ellipsis ("..."). Another means to set a
    /// progress bar's width is gtk_widget_set_size_request().
    var ellipsize: PangoEllipsizeMode {
        /// Returns the ellipsizing position of the progress bar.
        /// See gtk_progress_bar_set_ellipsize().
        get {
            let rv = gtk_progress_bar_get_ellipsize(cast(progress_bar_ptr))
            return rv
        }
        /// Sets the mode used to ellipsize (add an ellipsis: "...") the
        /// text if there is not enough space to render the entire string.
        nonmutating set {
            gtk_progress_bar_set_ellipsize(cast(progress_bar_ptr), newValue)
        }
    }

    var fraction: gdouble {
        /// Returns the current fraction of the task that’s been completed.
        get {
            let rv = gtk_progress_bar_get_fraction(cast(progress_bar_ptr))
            return rv
        }
        /// Causes the progress bar to “fill in” the given fraction
        /// of the bar. The fraction should be between 0.0 and 1.0,
        /// inclusive.
        nonmutating set {
            gtk_progress_bar_set_fraction(cast(progress_bar_ptr), newValue)
        }
    }

    var inverted: Bool {
        /// Gets the value set by gtk_progress_bar_set_inverted().
        get {
            let rv = gtk_progress_bar_get_inverted(cast(progress_bar_ptr))
            return Bool(rv != 0)
        }
        /// Progress bars normally grow from top to bottom or left to right.
        /// Inverted progress bars grow in the opposite direction.
        nonmutating set {
            gtk_progress_bar_set_inverted(cast(progress_bar_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Retrieves the pulse step set with gtk_progress_bar_set_pulse_step().
    var pulseStep: gdouble {
        /// Retrieves the pulse step set with gtk_progress_bar_set_pulse_step().
        get {
            let rv = gtk_progress_bar_get_pulse_step(cast(progress_bar_ptr))
            return rv
        }
        /// Sets the fraction of total progress bar length to move the
        /// bouncing block for each call to gtk_progress_bar_pulse().
        nonmutating set {
            gtk_progress_bar_set_pulse_step(cast(progress_bar_ptr), newValue)
        }
    }

    /// Gets the value of the `GtkProgressBar`:show-text property.
    /// See gtk_progress_bar_set_show_text().
    var showText: Bool {
        /// Gets the value of the `GtkProgressBar`:show-text property.
        /// See gtk_progress_bar_set_show_text().
        get {
            let rv = gtk_progress_bar_get_show_text(cast(progress_bar_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the progress bar will show text next to the bar.
        /// The shown text is either the value of the `GtkProgressBar`:text
        /// property or, if that is `nil`, the `GtkProgressBar`:fraction value,
        /// as a percentage.
        /// 
        /// To make a progress bar that is styled and sized suitably for containing
        /// text (even if the actual text is blank), set `GtkProgressBar`:show-text to
        /// `true` and `GtkProgressBar`:text to the empty string (not `nil`).
        nonmutating set {
            gtk_progress_bar_set_show_text(cast(progress_bar_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    var text: String! {
        /// Retrieves the text that is displayed with the progress bar,
        /// if any, otherwise `nil`. The return value is a reference
        /// to the text, not a copy of it, so will become invalid
        /// if you change the text in the progress bar.
        get {
            let rv = gtk_progress_bar_get_text(cast(progress_bar_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Causes the given `text` to appear next to the progress bar.
        /// 
        /// If `text` is `nil` and `GtkProgressBar`:show-text is `true`, the current
        /// value of `GtkProgressBar`:fraction will be displayed as a percentage.
        /// 
        /// If `text` is non-`nil` and `GtkProgressBar`:show-text is `true`, the text
        /// will be displayed. In this case, it will not display the progress
        /// percentage. If `text` is the empty string, the progress bar will still
        /// be styled and sized suitably for containing text, as long as
        /// `GtkProgressBar`:show-text is `true`.
        nonmutating set {
            gtk_progress_bar_set_text(cast(progress_bar_ptr), newValue)
        }
    }
}



// MARK: - ProgressBarAccessible Class

/// The `ProgressBarAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkProgressBarAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProgressBarAccessible`.
/// Alternatively, use `ProgressBarAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ProgressBarAccessibleProtocol: WidgetAccessibleProtocol, Atk.ValueProtocol {
    /// Untyped pointer to the underlying `GtkProgressBarAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkProgressBarAccessible` instance.
    var progress_bar_accessible_ptr: UnsafeMutablePointer<GtkProgressBarAccessible> { get }
}

/// The `ProgressBarAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkProgressBarAccessible` instance.
/// It exposes methods that can operate on this data type through `ProgressBarAccessibleProtocol` conformance.
/// Use `ProgressBarAccessibleRef` only as an `unowned` reference to an existing `GtkProgressBarAccessible` instance.
///

public struct ProgressBarAccessibleRef: ProgressBarAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkProgressBarAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `progress_bar_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProgressBarAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkProgressBarAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProgressBarAccessibleProtocol`
    init<T: ProgressBarAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ProgressBarAccessible` type acts as a reference-counted owner of an underlying `GtkProgressBarAccessible` instance.
/// It provides the methods that can operate on this data type through `ProgressBarAccessibleProtocol` conformance.
/// Use `ProgressBarAccessible` as a strong reference or owner of a `GtkProgressBarAccessible` instance.
///

open class ProgressBarAccessible: WidgetAccessible, ProgressBarAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ProgressBarAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkProgressBarAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ProgressBarAccessibleProtocol`
    /// Will retain `GtkProgressBarAccessible`.
    public convenience init<T: ProgressBarAccessibleProtocol>(_ other: T) {
        self.init(cast(other.progress_bar_accessible_ptr))
        g_object_ref(cast(progress_bar_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkProgressBarAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkProgressBarAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkProgressBarAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProgressBarAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkProgressBarAccessible>(opaquePointer))
    }



}

public enum ProgressBarAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension ProgressBarAccessibleProtocol {
    /// Bind a `ProgressBarAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ProgressBarAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(progress_bar_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum ProgressBarAccessibleSignalName: String, SignalNameProtocol {
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
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
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

public extension ProgressBarAccessibleProtocol {
    /// Connect a `ProgressBarAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ProgressBarAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(progress_bar_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension ProgressBarAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkProgressBarAccessible` instance.
    var progress_bar_accessible_ptr: UnsafeMutablePointer<GtkProgressBarAccessible> { return ptr.assumingMemoryBound(to: GtkProgressBarAccessible.self) }

}



// MARK: - RadioAction Class

/// The `RadioActionProtocol` protocol exposes the methods and properties of an underlying `GtkRadioAction` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioAction`.
/// Alternatively, use `RadioActionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkRadioAction` is similar to `GtkRadioMenuItem`. A number of radio
/// actions can be linked together so that only one may be active at any
/// one time.
public protocol RadioActionProtocol: ToggleActionProtocol {
    /// Untyped pointer to the underlying `GtkRadioAction` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioAction` instance.
    var radio_action_ptr: UnsafeMutablePointer<GtkRadioAction> { get }
}

/// The `RadioActionRef` type acts as a lightweight Swift reference to an underlying `GtkRadioAction` instance.
/// It exposes methods that can operate on this data type through `RadioActionProtocol` conformance.
/// Use `RadioActionRef` only as an `unowned` reference to an existing `GtkRadioAction` instance.
///
/// A `GtkRadioAction` is similar to `GtkRadioMenuItem`. A number of radio
/// actions can be linked together so that only one may be active at any
/// one time.
public struct RadioActionRef: RadioActionProtocol {
    /// Untyped pointer to the underlying `GtkRadioAction` instance.
    /// For type-safe access, use the generated, typed pointer `radio_action_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioActionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioAction>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioActionProtocol`
    init<T: RadioActionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRadioAction` object. To add the action to
    /// a `GtkActionGroup` and set the accelerator for the action,
    /// call gtk_action_group_add_action_with_accel().
    ///
    /// **new is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) init( name: UnsafePointer<gchar>, label: UnsafePointer<gchar>, tooltip: UnsafePointer<gchar>, stockID stock_id: UnsafePointer<gchar>, value: CInt) {
        let rv = gtk_radio_action_new(name, label, tooltip, stock_id, gint(value))
        self.init(cast(rv))
    }
}

/// The `RadioAction` type acts as a reference-counted owner of an underlying `GtkRadioAction` instance.
/// It provides the methods that can operate on this data type through `RadioActionProtocol` conformance.
/// Use `RadioAction` as a strong reference or owner of a `GtkRadioAction` instance.
///
/// A `GtkRadioAction` is similar to `GtkRadioMenuItem`. A number of radio
/// actions can be linked together so that only one may be active at any
/// one time.
open class RadioAction: ToggleAction, RadioActionProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioAction` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioAction>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RadioActionProtocol`
    /// Will retain `GtkRadioAction`.
    public convenience init<T: RadioActionProtocol>(_ other: T) {
        self.init(cast(other.radio_action_ptr))
        g_object_ref(cast(radio_action_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioAction.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioAction.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioAction.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioAction>(opaquePointer))
    }

    /// Creates a new `GtkRadioAction` object. To add the action to
    /// a `GtkActionGroup` and set the accelerator for the action,
    /// call gtk_action_group_add_action_with_accel().
    ///
    /// **new is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) public convenience init( name: UnsafePointer<gchar>, label: UnsafePointer<gchar>, tooltip: UnsafePointer<gchar>, stockID stock_id: UnsafePointer<gchar>, value: CInt) {
        let rv = gtk_radio_action_new(name, label, tooltip, stock_id, gint(value))
        self.init(cast(rv))
    }


}

public enum RadioActionPropertyName: String, PropertyNameProtocol {
    /// The GtkActionGroup this GtkAction is associated with, or NULL
    /// (for internal use).
    ///
    /// **action-group is deprecated:**
    /// Lookup the #GAction using g_action_map_lookup_action()
    /// instead
    case actionGroup = "action-group"
    /// Whether the toggle action should be active.
    ///
    /// **active is deprecated:**
    /// This method is deprecated.
    case active = "active"
    /// If `true`, the action's menu item proxies will ignore the `GtkSettings`:gtk-menu-images
    /// setting and always show their image, if available.
    /// 
    /// Use this property if the menu item would be useless or hard to use
    /// without their image.
    ///
    /// **always-show-image is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case alwaysShowImage = "always-show-image"
    /// The value property of the currently active member of the group to which
    /// this action belongs.
    ///
    /// **current-value is deprecated:**
    /// This method is deprecated.
    case currentValue = "current-value"
    /// Whether the proxies for this action look like radio action proxies.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable`:use-action-appearance is `true`.
    ///
    /// **draw-as-radio is deprecated:**
    /// This method is deprecated.
    case drawAsRadio = "draw-as-radio"
    /// The `GIcon` displayed in the `GtkAction`.
    /// 
    /// Note that the stock icon is preferred, if the `GtkAction`:stock-id
    /// property holds the id of an existing stock icon.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable`:use-action-appearance is `true`.
    ///
    /// **gicon is deprecated:**
    /// Use the "icon" attribute on a #GMenuItem instead
    case gicon = "gicon"
    /// Sets a new group for a radio action.
    ///
    /// **group is deprecated:**
    /// This method is deprecated.
    case group = "group"
    /// When TRUE, empty menu proxies for this action are hidden.
    ///
    /// **hide-if-empty is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case hideIfEmpty = "hide-if-empty"
    /// The name of the icon from the icon theme.
    /// 
    /// Note that the stock icon is preferred, if the `GtkAction`:stock-id
    /// property holds the id of an existing stock icon, and the `GIcon` is
    /// preferred if the `GtkAction`:gicon property is set.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable`:use-action-appearance is `true`.
    ///
    /// **icon-name is deprecated:**
    /// Use the "icon" attribute on a #GMenuItem instead
    case iconName = "icon-name"
    /// Whether the action is considered important. When TRUE, toolitem
    /// proxies for this action show text in GTK_TOOLBAR_BOTH_HORIZ mode.
    ///
    /// **is-important is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case isImportant = "is-important"
    /// The label used for menu items and buttons that activate
    /// this action. If the label is `nil`, GTK+ uses the stock
    /// label specified via the stock-id property.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable`:use-action-appearance is `true`.
    ///
    /// **label is deprecated:**
    /// Use the "label" attribute on #GMenuItem instead
    case label = "label"
    /// A unique name for the action.
    ///
    /// **name is deprecated:**
    /// Use #GAction:name instead
    case name = "name"
    /// Whether the action is enabled.
    ///
    /// **sensitive is deprecated:**
    /// Use #GAction:enabled and #GSimpleAction:enabled
    /// instead
    case sensitive = "sensitive"
    /// A shorter label that may be used on toolbar buttons.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable`:use-action-appearance is `true`.
    ///
    /// **short-label is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case shortLabel = "short-label"
    /// The stock icon displayed in widgets representing this action.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable`:use-action-appearance is `true`.
    ///
    /// **stock-id is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case stockID = "stock-id"
    /// A tooltip for this action.
    ///
    /// **tooltip is deprecated:**
    /// Use gtk_widget_set_tooltip_text() instead
    case tooltip = "tooltip"
    /// The value is an arbitrary integer which can be used as a
    /// convenient way to determine which action in the group is
    /// currently active in an ::activate or ::changed signal handler.
    /// See gtk_radio_action_get_current_value() and `GtkRadioActionEntry`
    /// for convenient ways to get and set this property.
    ///
    /// **value is deprecated:**
    /// This method is deprecated.
    case value = "value"
    /// Whether the action is visible.
    ///
    /// **visible is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case visible = "visible"
    /// Whether the toolbar item is visible when the toolbar is in a horizontal orientation.
    ///
    /// **visible-horizontal is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case visibleHorizontal = "visible-horizontal"
    /// When `true`, toolitem proxies for this action are represented in the
    /// toolbar overflow menu.
    ///
    /// **visible-overflown is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case visibleOverflown = "visible-overflown"
    /// Whether the toolbar item is visible when the toolbar is in a vertical orientation.
    ///
    /// **visible-vertical is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case visibleVertical = "visible-vertical"
}

public extension RadioActionProtocol {
    /// Bind a `RadioActionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RadioActionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(radio_action_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum RadioActionSignalName: String, SignalNameProtocol {
    /// The "activate" signal is emitted when the action is activated.
    ///
    /// **activate is deprecated:**
    /// Use #GSimpleAction::activate instead
    case activate = "activate"
    /// The ::changed signal is emitted on every member of a radio group when the
    /// active member is changed. The signal gets emitted after the ::activate signals
    /// for the previous and current active members.
    ///
    /// **changed is deprecated:**
    /// This method is deprecated.
    case changed = "changed"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Should be connected if you wish to perform an action
    /// whenever the `GtkToggleAction` state is changed.
    ///
    /// **toggled is deprecated:**
    /// This method is deprecated.
    case toggled = "toggled"
    /// The GtkActionGroup this GtkAction is associated with, or NULL
    /// (for internal use).
    ///
    /// **action-group is deprecated:**
    /// Lookup the #GAction using g_action_map_lookup_action()
    /// instead
    case notifyActionGroup = "notify::action-group"
    /// Whether the toggle action should be active.
    ///
    /// **active is deprecated:**
    /// This method is deprecated.
    case notifyActive = "notify::active"
    /// If `true`, the action's menu item proxies will ignore the `GtkSettings`:gtk-menu-images
    /// setting and always show their image, if available.
    /// 
    /// Use this property if the menu item would be useless or hard to use
    /// without their image.
    ///
    /// **always-show-image is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyAlwaysShowImage = "notify::always-show-image"
    /// The value property of the currently active member of the group to which
    /// this action belongs.
    ///
    /// **current-value is deprecated:**
    /// This method is deprecated.
    case notifyCurrentValue = "notify::current-value"
    /// Whether the proxies for this action look like radio action proxies.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable`:use-action-appearance is `true`.
    ///
    /// **draw-as-radio is deprecated:**
    /// This method is deprecated.
    case notifyDrawAsRadio = "notify::draw-as-radio"
    /// The `GIcon` displayed in the `GtkAction`.
    /// 
    /// Note that the stock icon is preferred, if the `GtkAction`:stock-id
    /// property holds the id of an existing stock icon.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable`:use-action-appearance is `true`.
    ///
    /// **gicon is deprecated:**
    /// Use the "icon" attribute on a #GMenuItem instead
    case notifyIcon = "notify::gicon"
    /// Sets a new group for a radio action.
    ///
    /// **group is deprecated:**
    /// This method is deprecated.
    case notifyGroup = "notify::group"
    /// When TRUE, empty menu proxies for this action are hidden.
    ///
    /// **hide-if-empty is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyHideIfEmpty = "notify::hide-if-empty"
    /// The name of the icon from the icon theme.
    /// 
    /// Note that the stock icon is preferred, if the `GtkAction`:stock-id
    /// property holds the id of an existing stock icon, and the `GIcon` is
    /// preferred if the `GtkAction`:gicon property is set.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable`:use-action-appearance is `true`.
    ///
    /// **icon-name is deprecated:**
    /// Use the "icon" attribute on a #GMenuItem instead
    case notifyIconName = "notify::icon-name"
    /// Whether the action is considered important. When TRUE, toolitem
    /// proxies for this action show text in GTK_TOOLBAR_BOTH_HORIZ mode.
    ///
    /// **is-important is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyIsImportant = "notify::is-important"
    /// The label used for menu items and buttons that activate
    /// this action. If the label is `nil`, GTK+ uses the stock
    /// label specified via the stock-id property.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable`:use-action-appearance is `true`.
    ///
    /// **label is deprecated:**
    /// Use the "label" attribute on #GMenuItem instead
    case notifyLabel = "notify::label"
    /// A unique name for the action.
    ///
    /// **name is deprecated:**
    /// Use #GAction:name instead
    case notifyName = "notify::name"
    /// Whether the action is enabled.
    ///
    /// **sensitive is deprecated:**
    /// Use #GAction:enabled and #GSimpleAction:enabled
    /// instead
    case notifySensitive = "notify::sensitive"
    /// A shorter label that may be used on toolbar buttons.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable`:use-action-appearance is `true`.
    ///
    /// **short-label is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyShortLabel = "notify::short-label"
    /// The stock icon displayed in widgets representing this action.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable`:use-action-appearance is `true`.
    ///
    /// **stock-id is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyStockID = "notify::stock-id"
    /// A tooltip for this action.
    ///
    /// **tooltip is deprecated:**
    /// Use gtk_widget_set_tooltip_text() instead
    case notifyTooltip = "notify::tooltip"
    /// The value is an arbitrary integer which can be used as a
    /// convenient way to determine which action in the group is
    /// currently active in an ::activate or ::changed signal handler.
    /// See gtk_radio_action_get_current_value() and `GtkRadioActionEntry`
    /// for convenient ways to get and set this property.
    ///
    /// **value is deprecated:**
    /// This method is deprecated.
    case notifyValue = "notify::value"
    /// Whether the action is visible.
    ///
    /// **visible is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyVisible = "notify::visible"
    /// Whether the toolbar item is visible when the toolbar is in a horizontal orientation.
    ///
    /// **visible-horizontal is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyVisibleHorizontal = "notify::visible-horizontal"
    /// When `true`, toolitem proxies for this action are represented in the
    /// toolbar overflow menu.
    ///
    /// **visible-overflown is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyVisibleOverflown = "notify::visible-overflown"
    /// Whether the toolbar item is visible when the toolbar is in a vertical orientation.
    ///
    /// **visible-vertical is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyVisibleVertical = "notify::visible-vertical"
}

public extension RadioActionProtocol {
    /// Connect a `RadioActionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RadioActionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(radio_action_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RadioActionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioAction` instance.
    var radio_action_ptr: UnsafeMutablePointer<GtkRadioAction> { return ptr.assumingMemoryBound(to: GtkRadioAction.self) }

    /// Obtains the value property of the currently active member of
    /// the group to which `action` belongs.
    ///
    /// **get_current_value is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func getCurrentValue() -> CInt {
        let rv = gtk_radio_action_get_current_value(cast(radio_action_ptr))
        return CInt(rv)
    }

    /// Returns the list representing the radio group for this object.
    /// Note that the returned list is only valid until the next change
    /// to the group.
    /// 
    /// A common way to set up a group of radio group is the following:
    /// (C Language Example):
    /// ```C
    ///   GSList *group = NULL;
    ///   GtkRadioAction *action;
    ///  
    ///   while ( ...more actions to add... /)
    ///     {
    ///        action = gtk_radio_action_new (...);
    ///        
    ///        gtk_radio_action_set_group (action, group);
    ///        group = gtk_radio_action_get_group (action);
    ///     }
    /// ```
    /// 
    ///
    /// **get_group is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func getGroup() -> SListRef! {
        let rv = gtk_radio_action_get_group(cast(radio_action_ptr))
        return cast(rv.map { SListRef($0) })
    }

    /// Joins a radio action object to the group of another radio action object.
    /// 
    /// Use this in language bindings instead of the gtk_radio_action_get_group()
    /// and gtk_radio_action_set_group() methods
    /// 
    /// A common way to set up a group of radio actions is the following:
    /// (C Language Example):
    /// ```C
    ///   GtkRadioAction *action;
    ///   GtkRadioAction *last_action;
    ///  
    ///   while ( ...more actions to add... /)
    ///     {
    ///        action = gtk_radio_action_new (...);
    ///        
    ///        gtk_radio_action_join_group (action, last_action);
    ///        last_action = action;
    ///     }
    /// ```
    /// 
    ///
    /// **join_group is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func joinGroup(groupSource group_source: RadioActionProtocol) {
        gtk_radio_action_join_group(cast(radio_action_ptr), cast(group_source.ptr))
    
    }

    /// Sets the currently active group member to the member with value
    /// property `current_value`.
    ///
    /// **set_current_value is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func set(currentValue current_value: CInt) {
        gtk_radio_action_set_current_value(cast(radio_action_ptr), gint(current_value))
    
    }

    /// Sets the radio group for the radio action object.
    ///
    /// **set_group is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func set(group: SListProtocol) {
        gtk_radio_action_set_group(cast(radio_action_ptr), cast(group.ptr))
    
    }
    /// Obtains the value property of the currently active member of
    /// the group to which `action` belongs.
    ///
    /// **get_current_value is deprecated:**
    /// This method is deprecated.
    var currentValue: CInt {
        /// Obtains the value property of the currently active member of
        /// the group to which `action` belongs.
        ///
        /// **get_current_value is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) get {
            let rv = gtk_radio_action_get_current_value(cast(radio_action_ptr))
            return CInt(rv)
        }
        /// Sets the currently active group member to the member with value
        /// property `current_value`.
        ///
        /// **set_current_value is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) nonmutating set {
            gtk_radio_action_set_current_value(cast(radio_action_ptr), gint(newValue))
        }
    }

    /// Sets a new group for a radio action.
    ///
    /// **group is deprecated:**
    /// This method is deprecated.
    var group: SListRef! {
        /// Returns the list representing the radio group for this object.
        /// Note that the returned list is only valid until the next change
        /// to the group.
        /// 
        /// A common way to set up a group of radio group is the following:
        /// (C Language Example):
        /// ```C
        ///   GSList *group = NULL;
        ///   GtkRadioAction *action;
        ///  
        ///   while ( ...more actions to add... /)
        ///     {
        ///        action = gtk_radio_action_new (...);
        ///        
        ///        gtk_radio_action_set_group (action, group);
        ///        group = gtk_radio_action_get_group (action);
        ///     }
        /// ```
        /// 
        ///
        /// **get_group is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) get {
            let rv = gtk_radio_action_get_group(cast(radio_action_ptr))
            return cast(rv.map { SListRef($0) })
        }
        /// Sets the radio group for the radio action object.
        ///
        /// **set_group is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) nonmutating set {
            gtk_radio_action_set_group(cast(radio_action_ptr), cast(newValue.map { $0.ptr }))
        }
    }
}



