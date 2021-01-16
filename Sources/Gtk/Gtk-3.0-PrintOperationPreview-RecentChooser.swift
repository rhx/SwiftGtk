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

// MARK: - PrintOperationPreview Interface

/// The `PrintOperationPreviewProtocol` protocol exposes the methods and properties of an underlying `GtkPrintOperationPreview` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PrintOperationPreview`.
/// Alternatively, use `PrintOperationPreviewRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PrintOperationPreviewProtocol {
        /// Untyped pointer to the underlying `GtkPrintOperationPreview` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPrintOperationPreview` instance.
    var print_operation_preview_ptr: UnsafeMutablePointer<GtkPrintOperationPreview>! { get }

}

/// The `PrintOperationPreviewRef` type acts as a lightweight Swift reference to an underlying `GtkPrintOperationPreview` instance.
/// It exposes methods that can operate on this data type through `PrintOperationPreviewProtocol` conformance.
/// Use `PrintOperationPreviewRef` only as an `unowned` reference to an existing `GtkPrintOperationPreview` instance.
///

public struct PrintOperationPreviewRef: PrintOperationPreviewProtocol {
        /// Untyped pointer to the underlying `GtkPrintOperationPreview` instance.
    /// For type-safe access, use the generated, typed pointer `print_operation_preview_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PrintOperationPreviewRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPrintOperationPreview>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPrintOperationPreview>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPrintOperationPreview>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPrintOperationPreview>?) {
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

    /// Reference intialiser for a related type that implements `PrintOperationPreviewProtocol`
    @inlinable init<T: PrintOperationPreviewProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PrintOperationPreview` type acts as an owner of an underlying `GtkPrintOperationPreview` instance.
/// It provides the methods that can operate on this data type through `PrintOperationPreviewProtocol` conformance.
/// Use `PrintOperationPreview` as a strong reference or owner of a `GtkPrintOperationPreview` instance.
///

open class PrintOperationPreview: PrintOperationPreviewProtocol {
        /// Untyped pointer to the underlying `GtkPrintOperationPreview` instance.
    /// For type-safe access, use the generated, typed pointer `print_operation_preview_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintOperationPreview` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPrintOperationPreview>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintOperationPreview` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPrintOperationPreview>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintOperationPreview` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintOperationPreview` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintOperationPreview` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPrintOperationPreview>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PrintOperationPreview` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPrintOperationPreview>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkPrintOperationPreview` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PrintOperationPreview` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPrintOperationPreview>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkPrintOperationPreview, cannot ref(print_operation_preview_ptr)
    }

    /// Reference intialiser for a related type that implements `PrintOperationPreviewProtocol`
    /// `GtkPrintOperationPreview` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PrintOperationPreviewProtocol`
    @inlinable public init<T: PrintOperationPreviewProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkPrintOperationPreview, cannot ref(print_operation_preview_ptr)
    }

    /// Do-nothing destructor for `GtkPrintOperationPreview`.
    deinit {
        // no reference counting for GtkPrintOperationPreview, cannot unref(print_operation_preview_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkPrintOperationPreview, cannot ref(print_operation_preview_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkPrintOperationPreview, cannot ref(print_operation_preview_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkPrintOperationPreview, cannot ref(print_operation_preview_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkPrintOperationPreview, cannot ref(print_operation_preview_ptr)
    }



}

// MARK: no PrintOperationPreview properties

// MARK: Signals of PrintOperationPreview
public extension PrintOperationPreviewProtocol {
    /// The `got`-page-size signal is emitted once for each page
    /// that gets rendered to the preview.
    /// 
    /// A handler for this signal should update the `context`
    /// according to `page_setup` and set up a suitable cairo
    /// context, using `gtk_print_context_set_cairo_context()`.
    /// - Note: Representation of signal named `got-page-size`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter context: the current `GtkPrintContext`
    /// - Parameter pageSetup: the `GtkPageSetup` for the current page
    @discardableResult
    func onGotPageSize(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationPreviewRef, _ context: PrintContextRef, _ pageSetup: PageSetupRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<PrintOperationPreviewRef, PrintContextRef, PageSetupRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationPreviewRef(raw: unownedSelf), PrintContextRef(raw: arg1), PageSetupRef(raw: arg2))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "got-page-size", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `ready` signal gets emitted once per preview operation,
    /// before the first page is rendered.
    /// 
    /// A handler for this signal can be used for setup tasks.
    /// - Note: Representation of signal named `ready`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter context: the current `GtkPrintContext`
    @discardableResult
    func onReady(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PrintOperationPreviewRef, _ context: PrintContextRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<PrintOperationPreviewRef, PrintContextRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PrintOperationPreviewRef(raw: unownedSelf), PrintContextRef(raw: arg1))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "ready", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    
}

// MARK: PrintOperationPreview Interface: PrintOperationPreviewProtocol extension (methods and fields)
public extension PrintOperationPreviewProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPrintOperationPreview` instance.
    @inlinable var print_operation_preview_ptr: UnsafeMutablePointer<GtkPrintOperationPreview>! { return ptr?.assumingMemoryBound(to: GtkPrintOperationPreview.self) }

    /// Ends a preview.
    /// 
    /// This function must be called to finish a custom print preview.
    @inlinable func endPreview() {
        gtk_print_operation_preview_end_preview(print_operation_preview_ptr)
    
    }

    /// Returns whether the given page is included in the set of pages that
    /// have been selected for printing.
    @inlinable func isSelected(pageNr: Int) -> Bool {
        let rv = ((gtk_print_operation_preview_is_selected(print_operation_preview_ptr, gint(pageNr))) != 0)
        return rv
    }

    /// Renders a page to the preview, using the print context that
    /// was passed to the `GtkPrintOperation::preview` handler together
    /// with `preview`.
    /// 
    /// A custom iprint preview should use this function in its `expose`
    /// handler to render the currently selected page.
    /// 
    /// Note that this function requires a suitable cairo context to
    /// be associated with the print context.
    @inlinable func renderPage(pageNr: Int) {
        gtk_print_operation_preview_render_page(print_operation_preview_ptr, gint(pageNr))
    
    }


}



// MARK: - RecentChooser Interface

/// The `RecentChooserProtocol` protocol exposes the methods and properties of an underlying `GtkRecentChooser` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentChooser`.
/// Alternatively, use `RecentChooserRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkRecentChooser` is an interface that can be implemented by widgets
/// displaying the list of recently used files.  In GTK+, the main objects
/// that implement this interface are `GtkRecentChooserWidget`,
/// `GtkRecentChooserDialog` and `GtkRecentChooserMenu`.
/// 
/// Recently used files are supported since GTK+ 2.10.
public protocol RecentChooserProtocol {
        /// Untyped pointer to the underlying `GtkRecentChooser` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentChooser` instance.
    var recent_chooser_ptr: UnsafeMutablePointer<GtkRecentChooser>! { get }

}

/// The `RecentChooserRef` type acts as a lightweight Swift reference to an underlying `GtkRecentChooser` instance.
/// It exposes methods that can operate on this data type through `RecentChooserProtocol` conformance.
/// Use `RecentChooserRef` only as an `unowned` reference to an existing `GtkRecentChooser` instance.
///
/// `GtkRecentChooser` is an interface that can be implemented by widgets
/// displaying the list of recently used files.  In GTK+, the main objects
/// that implement this interface are `GtkRecentChooserWidget`,
/// `GtkRecentChooserDialog` and `GtkRecentChooserMenu`.
/// 
/// Recently used files are supported since GTK+ 2.10.
public struct RecentChooserRef: RecentChooserProtocol {
        /// Untyped pointer to the underlying `GtkRecentChooser` instance.
    /// For type-safe access, use the generated, typed pointer `recent_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentChooserRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentChooser>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentChooser>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentChooser>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentChooser>?) {
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

    /// Reference intialiser for a related type that implements `RecentChooserProtocol`
    @inlinable init<T: RecentChooserProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecentChooser` type acts as an owner of an underlying `GtkRecentChooser` instance.
/// It provides the methods that can operate on this data type through `RecentChooserProtocol` conformance.
/// Use `RecentChooser` as a strong reference or owner of a `GtkRecentChooser` instance.
///
/// `GtkRecentChooser` is an interface that can be implemented by widgets
/// displaying the list of recently used files.  In GTK+, the main objects
/// that implement this interface are `GtkRecentChooserWidget`,
/// `GtkRecentChooserDialog` and `GtkRecentChooserMenu`.
/// 
/// Recently used files are supported since GTK+ 2.10.
open class RecentChooser: RecentChooserProtocol {
        /// Untyped pointer to the underlying `GtkRecentChooser` instance.
    /// For type-safe access, use the generated, typed pointer `recent_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRecentChooser>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRecentChooser>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooser` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRecentChooser>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRecentChooser>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkRecentChooser` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `RecentChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRecentChooser>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkRecentChooser, cannot ref(recent_chooser_ptr)
    }

    /// Reference intialiser for a related type that implements `RecentChooserProtocol`
    /// `GtkRecentChooser` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RecentChooserProtocol`
    @inlinable public init<T: RecentChooserProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkRecentChooser, cannot ref(recent_chooser_ptr)
    }

    /// Do-nothing destructor for `GtkRecentChooser`.
    deinit {
        // no reference counting for GtkRecentChooser, cannot unref(recent_chooser_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkRecentChooser, cannot ref(recent_chooser_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkRecentChooser, cannot ref(recent_chooser_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkRecentChooser, cannot ref(recent_chooser_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkRecentChooser, cannot ref(recent_chooser_ptr)
    }



}

public enum RecentChooserPropertyName: String, PropertyNameProtocol {
    /// The `GtkRecentFilter` object to be used when displaying
    /// the recently used resources.
    case filter = "filter"
    /// The maximum number of recently used resources to be displayed,
    /// or -1 to display all items.
    case limit = "limit"
    /// Whether this `GtkRecentChooser` should display only local (file:)
    /// resources.
    case localOnly = "local-only"
    /// The `GtkRecentManager` instance used by the `GtkRecentChooser` to
    /// display the list of recently used resources.
    case recentManager = "recent-manager"
    /// Allow the user to select multiple resources.
    case selectMultiple = "select-multiple"
    /// Whether this `GtkRecentChooser` should display an icon near the item.
    case showIcons = "show-icons"
    /// Whether this `GtkRecentChooser` should display the recently used resources
    /// even if not present anymore. Setting this to `false` will perform a
    /// potentially expensive check on every local resource (every remote
    /// resource will always be displayed).
    case showNotFound = "show-not-found"
    case showPrivate = "show-private"
    /// Whether this `GtkRecentChooser` should display a tooltip containing the
    /// full path of the recently used resources.
    case showTips = "show-tips"
    /// Sorting order to be used when displaying the recently used resources.
    case sortType = "sort-type"
}

public extension RecentChooserProtocol {
    /// Bind a `RecentChooserPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RecentChooserPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a RecentChooser property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RecentChooserPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a RecentChooser property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RecentChooserPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of RecentChooser
public extension RecentChooserProtocol {
    /// This signal is emitted when the user "activates" a recent item
    /// in the recent chooser.  This can happen by double-clicking on an item
    /// in the recently used resources list, or by pressing
    /// `Enter`.
    /// - Note: Representation of signal named `item-activated`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onItemActivated(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RecentChooserRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<RecentChooserRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RecentChooserRef(raw: unownedSelf))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "item-activated", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// This signal is emitted when there is a change in the set of
    /// selected recently used resources.  This can happen when a user
    /// modifies the selection with the mouse or the keyboard, or when
    /// explicitly calling functions to change the selection.
    /// - Note: Representation of signal named `selection-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onSelectionChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RecentChooserRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<RecentChooserRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RecentChooserRef(raw: unownedSelf))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "selection-changed", 
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
    /// - Note: Representation of signal named `notify::filter`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyFilter(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RecentChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RecentChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RecentChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "notify::filter", 
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
    /// - Note: Representation of signal named `notify::limit`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyLimit(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RecentChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RecentChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RecentChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "notify::limit", 
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
    /// - Note: Representation of signal named `notify::local-only`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyLocalOnly(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RecentChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RecentChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RecentChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "notify::local-only", 
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
    /// - Note: Representation of signal named `notify::recent-manager`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyRecentManager(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RecentChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RecentChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RecentChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "notify::recent-manager", 
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
    /// - Note: Representation of signal named `notify::select-multiple`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySelectMultiple(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RecentChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RecentChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RecentChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "notify::select-multiple", 
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
    /// - Note: Representation of signal named `notify::show-icons`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowIcons(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RecentChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RecentChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RecentChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "notify::show-icons", 
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
    /// - Note: Representation of signal named `notify::show-not-found`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowNotFound(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RecentChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RecentChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RecentChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "notify::show-not-found", 
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
    /// - Note: Representation of signal named `notify::show-private`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowPrivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RecentChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RecentChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RecentChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "notify::show-private", 
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
    /// - Note: Representation of signal named `notify::show-tips`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowTips(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RecentChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RecentChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RecentChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "notify::show-tips", 
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
    /// - Note: Representation of signal named `notify::sort-type`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySortType(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RecentChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RecentChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RecentChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "notify::sort-type", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: RecentChooser Interface: RecentChooserProtocol extension (methods and fields)
public extension RecentChooserProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooser` instance.
    @inlinable var recent_chooser_ptr: UnsafeMutablePointer<GtkRecentChooser>! { return ptr?.assumingMemoryBound(to: GtkRecentChooser.self) }

    /// Adds `filter` to the list of `GtkRecentFilter` objects held by `chooser`.
    /// 
    /// If no previous filter objects were defined, this function will call
    /// `gtk_recent_chooser_set_filter()`.
    @inlinable func add<RecentFilterT: RecentFilterProtocol>(filter: RecentFilterT) {
        gtk_recent_chooser_add_filter(recent_chooser_ptr, filter.recent_filter_ptr)
    
    }

    /// Gets the `GtkRecentInfo` currently selected by `chooser`.
    @inlinable func getCurrentItem() -> RecentInfoRef! {
        let rv = RecentInfoRef(gconstpointer: gconstpointer(gtk_recent_chooser_get_current_item(recent_chooser_ptr)))
        return rv
    }

    /// Gets the URI currently selected by `chooser`.
    @inlinable func getCurrentURI() -> String! {
        let rv = gtk_recent_chooser_get_current_uri(recent_chooser_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the `GtkRecentFilter` object currently used by `chooser` to affect
    /// the display of the recently used resources.
    @inlinable func getFilter() -> RecentFilterRef! {
        let rv = RecentFilterRef(gconstpointer: gconstpointer(gtk_recent_chooser_get_filter(recent_chooser_ptr)))
        return rv
    }

    /// Gets the list of recently used resources in form of `GtkRecentInfo` objects.
    /// 
    /// The return value of this function is affected by the “sort-type” and
    /// “limit” properties of `chooser`.
    @inlinable func getItems() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_recent_chooser_get_items(recent_chooser_ptr))
        return rv
    }

    /// Gets the number of items returned by `gtk_recent_chooser_get_items()`
    /// and `gtk_recent_chooser_get_uris()`.
    @inlinable func getLimit() -> Int {
        let rv = Int(gtk_recent_chooser_get_limit(recent_chooser_ptr))
        return rv
    }

    /// Gets whether only local resources should be shown in the recently used
    /// resources selector.  See `gtk_recent_chooser_set_local_only()`
    @inlinable func getLocalOnly() -> Bool {
        let rv = ((gtk_recent_chooser_get_local_only(recent_chooser_ptr)) != 0)
        return rv
    }

    /// Gets whether `chooser` can select multiple items.
    @inlinable func getSelectMultiple() -> Bool {
        let rv = ((gtk_recent_chooser_get_select_multiple(recent_chooser_ptr)) != 0)
        return rv
    }

    /// Retrieves whether `chooser` should show an icon near the resource.
    @inlinable func getShowIcons() -> Bool {
        let rv = ((gtk_recent_chooser_get_show_icons(recent_chooser_ptr)) != 0)
        return rv
    }

    /// Retrieves whether `chooser` should show the recently used resources that
    /// were not found.
    @inlinable func getShowNotFound() -> Bool {
        let rv = ((gtk_recent_chooser_get_show_not_found(recent_chooser_ptr)) != 0)
        return rv
    }

    /// Returns whether `chooser` should display recently used resources
    /// registered as private.
    @inlinable func getShowPrivate() -> Bool {
        let rv = ((gtk_recent_chooser_get_show_private(recent_chooser_ptr)) != 0)
        return rv
    }

    /// Gets whether `chooser` should display tooltips containing the full path
    /// of a recently user resource.
    @inlinable func getShowTips() -> Bool {
        let rv = ((gtk_recent_chooser_get_show_tips(recent_chooser_ptr)) != 0)
        return rv
    }

    /// Gets the value set by `gtk_recent_chooser_set_sort_type()`.
    @inlinable func getSortType() -> GtkRecentSortType {
        let rv = gtk_recent_chooser_get_sort_type(recent_chooser_ptr)
        return rv
    }

    /// Gets the URI of the recently used resources.
    /// 
    /// The return value of this function is affected by the “sort-type” and “limit”
    /// properties of `chooser`.
    /// 
    /// Since the returned array is `nil` terminated, `length` may be `nil`.
    @inlinable func getURIs(length: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = gtk_recent_chooser_get_uris(recent_chooser_ptr, length)
        return rv
    }

    /// Gets the `GtkRecentFilter` objects held by `chooser`.
    @inlinable func listFilters() -> GLib.SListRef! {
        let rv = GLib.SListRef(gtk_recent_chooser_list_filters(recent_chooser_ptr))
        return rv
    }

    /// Removes `filter` from the list of `GtkRecentFilter` objects held by `chooser`.
    @inlinable func remove<RecentFilterT: RecentFilterProtocol>(filter: RecentFilterT) {
        gtk_recent_chooser_remove_filter(recent_chooser_ptr, filter.recent_filter_ptr)
    
    }

    /// Selects all the items inside `chooser`, if the `chooser` supports
    /// multiple selection.
    @inlinable func selectAll() {
        gtk_recent_chooser_select_all(recent_chooser_ptr)
    
    }

    /// Selects `uri` inside `chooser`.
    @inlinable func select(uri: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_recent_chooser_select_uri(recent_chooser_ptr, uri, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets `uri` as the current URI for `chooser`.
    @inlinable func setCurrent(uri: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_recent_chooser_set_current_uri(recent_chooser_ptr, uri, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets `filter` as the current `GtkRecentFilter` object used by `chooser`
    /// to affect the displayed recently used resources.
    @inlinable func set(filter: RecentFilterRef? = nil) {
        gtk_recent_chooser_set_filter(recent_chooser_ptr, filter?.recent_filter_ptr)
    
    }
    /// Sets `filter` as the current `GtkRecentFilter` object used by `chooser`
    /// to affect the displayed recently used resources.
    @inlinable func set<RecentFilterT: RecentFilterProtocol>(filter: RecentFilterT?) {
        gtk_recent_chooser_set_filter(recent_chooser_ptr, filter?.recent_filter_ptr)
    
    }

    /// Sets the number of items that should be returned by
    /// `gtk_recent_chooser_get_items()` and `gtk_recent_chooser_get_uris()`.
    @inlinable func set(limit: Int) {
        gtk_recent_chooser_set_limit(recent_chooser_ptr, gint(limit))
    
    }

    /// Sets whether only local resources, that is resources using the file:// URI
    /// scheme, should be shown in the recently used resources selector.  If
    /// `local_only` is `true` (the default) then the shown resources are guaranteed
    /// to be accessible through the operating system native file system.
    @inlinable func set(localOnly: Bool) {
        gtk_recent_chooser_set_local_only(recent_chooser_ptr, gboolean((localOnly) ? 1 : 0))
    
    }

    /// Sets whether `chooser` can select multiple items.
    @inlinable func set(selectMultiple: Bool) {
        gtk_recent_chooser_set_select_multiple(recent_chooser_ptr, gboolean((selectMultiple) ? 1 : 0))
    
    }

    /// Sets whether `chooser` should show an icon near the resource when
    /// displaying it.
    @inlinable func set(showIcons: Bool) {
        gtk_recent_chooser_set_show_icons(recent_chooser_ptr, gboolean((showIcons) ? 1 : 0))
    
    }

    /// Sets whether `chooser` should display the recently used resources that
    /// it didn’t find.  This only applies to local resources.
    @inlinable func set(showNotFound: Bool) {
        gtk_recent_chooser_set_show_not_found(recent_chooser_ptr, gboolean((showNotFound) ? 1 : 0))
    
    }

    /// Whether to show recently used resources marked registered as private.
    @inlinable func set(showPrivate: Bool) {
        gtk_recent_chooser_set_show_private(recent_chooser_ptr, gboolean((showPrivate) ? 1 : 0))
    
    }

    /// Sets whether to show a tooltips containing the full path of each
    /// recently used resource in a `GtkRecentChooser` widget.
    @inlinable func set(showTips: Bool) {
        gtk_recent_chooser_set_show_tips(recent_chooser_ptr, gboolean((showTips) ? 1 : 0))
    
    }

    /// Sets the comparison function used when sorting to be `sort_func`.  If
    /// the `chooser` has the sort type set to `GTK_RECENT_SORT_CUSTOM` then
    /// the chooser will sort using this function.
    /// 
    /// To the comparison function will be passed two `GtkRecentInfo` structs and
    /// `sort_data`;  `sort_func` should return a positive integer if the first
    /// item comes before the second, zero if the two items are equal and
    /// a negative integer if the first item comes after the second.
    @inlinable func set(sortFunc: GtkRecentSortFunc?, sortData: gpointer! = nil, dataDestroy: GDestroyNotify? = nil) {
        gtk_recent_chooser_set_sort_func(recent_chooser_ptr, sortFunc, sortData, dataDestroy)
    
    }

    /// Changes the sorting order of the recently used resources list displayed by
    /// `chooser`.
    @inlinable func set(sortType: GtkRecentSortType) {
        gtk_recent_chooser_set_sort_type(recent_chooser_ptr, sortType)
    
    }

    /// Unselects all the items inside `chooser`.
    @inlinable func unselectAll() {
        gtk_recent_chooser_unselect_all(recent_chooser_ptr)
    
    }

    /// Unselects `uri` inside `chooser`.
    @inlinable func unselect(uri: UnsafePointer<gchar>!) {
        gtk_recent_chooser_unselect_uri(recent_chooser_ptr, uri)
    
    }
    /// Gets the `GtkRecentInfo` currently selected by `chooser`.
    @inlinable var currentItem: RecentInfoRef! {
        /// Gets the `GtkRecentInfo` currently selected by `chooser`.
        get {
            let rv = RecentInfoRef(gconstpointer: gconstpointer(gtk_recent_chooser_get_current_item(recent_chooser_ptr)))
            return rv
        }
    }

    /// Gets the URI currently selected by `chooser`.
    @inlinable var currentURI: String! {
        /// Gets the URI currently selected by `chooser`.
        get {
            let rv = gtk_recent_chooser_get_current_uri(recent_chooser_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets `uri` as the current URI for `chooser`.
        nonmutating set {
            var error: UnsafeMutablePointer<GError>?
            _ = gtk_recent_chooser_set_current_uri(recent_chooser_ptr, newValue, &error)
            g_log(messagePtr: error?.pointee.message, level: .error)
        }
    }

    /// The `GtkRecentFilter` object to be used when displaying
    /// the recently used resources.
    @inlinable var filter: RecentFilterRef! {
        /// Gets the `GtkRecentFilter` object currently used by `chooser` to affect
        /// the display of the recently used resources.
        get {
            let rv = RecentFilterRef(gconstpointer: gconstpointer(gtk_recent_chooser_get_filter(recent_chooser_ptr)))
            return rv
        }
        /// Sets `filter` as the current `GtkRecentFilter` object used by `chooser`
        /// to affect the displayed recently used resources.
        nonmutating set {
            gtk_recent_chooser_set_filter(recent_chooser_ptr, UnsafeMutablePointer<GtkRecentFilter>(newValue?.recent_filter_ptr))
        }
    }

    /// Gets the list of recently used resources in form of `GtkRecentInfo` objects.
    /// 
    /// The return value of this function is affected by the “sort-type” and
    /// “limit” properties of `chooser`.
    @inlinable var items: GLib.ListRef! {
        /// Gets the list of recently used resources in form of `GtkRecentInfo` objects.
        /// 
        /// The return value of this function is affected by the “sort-type” and
        /// “limit” properties of `chooser`.
        get {
            let rv = GLib.ListRef(gtk_recent_chooser_get_items(recent_chooser_ptr))
            return rv
        }
    }

    /// The maximum number of recently used resources to be displayed,
    /// or -1 to display all items.
    @inlinable var limit: Int {
        /// Gets the number of items returned by `gtk_recent_chooser_get_items()`
        /// and `gtk_recent_chooser_get_uris()`.
        get {
            let rv = Int(gtk_recent_chooser_get_limit(recent_chooser_ptr))
            return rv
        }
        /// Sets the number of items that should be returned by
        /// `gtk_recent_chooser_get_items()` and `gtk_recent_chooser_get_uris()`.
        nonmutating set {
            gtk_recent_chooser_set_limit(recent_chooser_ptr, gint(newValue))
        }
    }

    /// Gets whether only local resources should be shown in the recently used
    /// resources selector.  See `gtk_recent_chooser_set_local_only()`
    @inlinable var localOnly: Bool {
        /// Gets whether only local resources should be shown in the recently used
        /// resources selector.  See `gtk_recent_chooser_set_local_only()`
        get {
            let rv = ((gtk_recent_chooser_get_local_only(recent_chooser_ptr)) != 0)
            return rv
        }
        /// Sets whether only local resources, that is resources using the file:// URI
        /// scheme, should be shown in the recently used resources selector.  If
        /// `local_only` is `true` (the default) then the shown resources are guaranteed
        /// to be accessible through the operating system native file system.
        nonmutating set {
            gtk_recent_chooser_set_local_only(recent_chooser_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets whether `chooser` can select multiple items.
    @inlinable var selectMultiple: Bool {
        /// Gets whether `chooser` can select multiple items.
        get {
            let rv = ((gtk_recent_chooser_get_select_multiple(recent_chooser_ptr)) != 0)
            return rv
        }
        /// Sets whether `chooser` can select multiple items.
        nonmutating set {
            gtk_recent_chooser_set_select_multiple(recent_chooser_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves whether `chooser` should show an icon near the resource.
    @inlinable var showIcons: Bool {
        /// Retrieves whether `chooser` should show an icon near the resource.
        get {
            let rv = ((gtk_recent_chooser_get_show_icons(recent_chooser_ptr)) != 0)
            return rv
        }
        /// Sets whether `chooser` should show an icon near the resource when
        /// displaying it.
        nonmutating set {
            gtk_recent_chooser_set_show_icons(recent_chooser_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves whether `chooser` should show the recently used resources that
    /// were not found.
    @inlinable var showNotFound: Bool {
        /// Retrieves whether `chooser` should show the recently used resources that
        /// were not found.
        get {
            let rv = ((gtk_recent_chooser_get_show_not_found(recent_chooser_ptr)) != 0)
            return rv
        }
        /// Sets whether `chooser` should display the recently used resources that
        /// it didn’t find.  This only applies to local resources.
        nonmutating set {
            gtk_recent_chooser_set_show_not_found(recent_chooser_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether `chooser` should display recently used resources
    /// registered as private.
    @inlinable var showPrivate: Bool {
        /// Returns whether `chooser` should display recently used resources
        /// registered as private.
        get {
            let rv = ((gtk_recent_chooser_get_show_private(recent_chooser_ptr)) != 0)
            return rv
        }
        /// Whether to show recently used resources marked registered as private.
        nonmutating set {
            gtk_recent_chooser_set_show_private(recent_chooser_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets whether `chooser` should display tooltips containing the full path
    /// of a recently user resource.
    @inlinable var showTips: Bool {
        /// Gets whether `chooser` should display tooltips containing the full path
        /// of a recently user resource.
        get {
            let rv = ((gtk_recent_chooser_get_show_tips(recent_chooser_ptr)) != 0)
            return rv
        }
        /// Sets whether to show a tooltips containing the full path of each
        /// recently used resource in a `GtkRecentChooser` widget.
        nonmutating set {
            gtk_recent_chooser_set_show_tips(recent_chooser_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the value set by `gtk_recent_chooser_set_sort_type()`.
    @inlinable var sortType: GtkRecentSortType {
        /// Gets the value set by `gtk_recent_chooser_set_sort_type()`.
        get {
            let rv = gtk_recent_chooser_get_sort_type(recent_chooser_ptr)
            return rv
        }
        /// Changes the sorting order of the recently used resources list displayed by
        /// `chooser`.
        nonmutating set {
            gtk_recent_chooser_set_sort_type(recent_chooser_ptr, newValue)
        }
    }


}



