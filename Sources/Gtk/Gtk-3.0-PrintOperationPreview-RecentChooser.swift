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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkPrintOperationPreview` instance.
    var print_operation_preview_ptr: UnsafeMutablePointer<GtkPrintOperationPreview> { get }
}

/// The `PrintOperationPreviewRef` type acts as a lightweight Swift reference to an underlying `GtkPrintOperationPreview` instance.
/// It exposes methods that can operate on this data type through `PrintOperationPreviewProtocol` conformance.
/// Use `PrintOperationPreviewRef` only as an `unowned` reference to an existing `GtkPrintOperationPreview` instance.
///

public struct PrintOperationPreviewRef: PrintOperationPreviewProtocol {
    /// Untyped pointer to the underlying `GtkPrintOperationPreview` instance.
    /// For type-safe access, use the generated, typed pointer `print_operation_preview_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PrintOperationPreviewRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkPrintOperationPreview>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PrintOperationPreviewProtocol`
    init<T: PrintOperationPreviewProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PrintOperationPreview` instance.
    public init(_ op: UnsafeMutablePointer<GtkPrintOperationPreview>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PrintOperationPreviewProtocol`
    /// `GtkPrintOperationPreview` does not allow reference counting.
    public convenience init<T: PrintOperationPreviewProtocol>(_ other: T) {
        self.init(cast(other.print_operation_preview_ptr))
        // no reference counting for GtkPrintOperationPreview, cannot ref(cast(print_operation_preview_ptr))
    }

    /// Do-nothing destructor for`GtkPrintOperationPreview`.
    deinit {
        // no reference counting for GtkPrintOperationPreview, cannot unref(cast(print_operation_preview_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkPrintOperationPreview.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkPrintOperationPreview.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkPrintOperationPreview.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrintOperationPreviewProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkPrintOperationPreview>(opaquePointer))
    }



}

// MARK: - no PrintOperationPreview properties

public enum PrintOperationPreviewSignalName: String, SignalNameProtocol {
    /// The ::got-page-size signal is emitted once for each page
    /// that gets rendered to the preview.
    /// 
    /// A handler for this signal should update the `context`
    /// according to `page_setup` and set up a suitable cairo
    /// context, using gtk_print_context_set_cairo_context().
    case gotPageSize = "got-page-size"
    /// The ::ready signal gets emitted once per preview operation,
    /// before the first page is rendered.
    /// 
    /// A handler for this signal can be used for setup tasks.
    case ready = "ready"

}

public extension PrintOperationPreviewProtocol {
    /// Connect a `PrintOperationPreviewSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PrintOperationPreviewSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(print_operation_preview_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension PrintOperationPreviewProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPrintOperationPreview` instance.
    var print_operation_preview_ptr: UnsafeMutablePointer<GtkPrintOperationPreview> { return ptr.assumingMemoryBound(to: GtkPrintOperationPreview.self) }

    /// Ends a preview.
    /// 
    /// This function must be called to finish a custom print preview.
    func endPreview() {
        gtk_print_operation_preview_end_preview(cast(print_operation_preview_ptr))
    
    }

    /// Returns whether the given page is included in the set of pages that
    /// have been selected for printing.
    func isSelected(pageNr page_nr: CInt) -> Bool {
        let rv = gtk_print_operation_preview_is_selected(cast(print_operation_preview_ptr), gint(page_nr))
        return Bool(rv != 0)
    }

    /// Renders a page to the preview, using the print context that
    /// was passed to the `GtkPrintOperation`::preview handler together
    /// with `preview`.
    /// 
    /// A custom iprint preview should use this function in its ::expose
    /// handler to render the currently selected page.
    /// 
    /// Note that this function requires a suitable cairo context to
    /// be associated with the print context.
    func renderPage(pageNr page_nr: CInt) {
        gtk_print_operation_preview_render_page(cast(print_operation_preview_ptr), gint(page_nr))
    
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentChooser` instance.
    var recent_chooser_ptr: UnsafeMutablePointer<GtkRecentChooser> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentChooserRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentChooser>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentChooserProtocol`
    init<T: RecentChooserProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentChooser` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentChooser>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RecentChooserProtocol`
    /// `GtkRecentChooser` does not allow reference counting.
    public convenience init<T: RecentChooserProtocol>(_ other: T) {
        self.init(cast(other.recent_chooser_ptr))
        // no reference counting for GtkRecentChooser, cannot ref(cast(recent_chooser_ptr))
    }

    /// Do-nothing destructor for`GtkRecentChooser`.
    deinit {
        // no reference counting for GtkRecentChooser, cannot unref(cast(recent_chooser_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentChooser.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentChooser.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentChooser.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentChooser>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RecentChooserPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(recent_chooser_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum RecentChooserSignalName: String, SignalNameProtocol {
    /// This signal is emitted when the user "activates" a recent item
    /// in the recent chooser.  This can happen by double-clicking on an item
    /// in the recently used resources list, or by pressing
    /// `Enter`.
    case itemActivated = "item-activated"
    /// This signal is emitted when there is a change in the set of
    /// selected recently used resources.  This can happen when a user
    /// modifies the selection with the mouse or the keyboard, or when
    /// explicitly calling functions to change the selection.
    case selectionChanged = "selection-changed"
    /// The `GtkRecentFilter` object to be used when displaying
    /// the recently used resources.
    case notifyFilter = "notify::filter"
    /// The maximum number of recently used resources to be displayed,
    /// or -1 to display all items.
    case notifyLimit = "notify::limit"
    /// Whether this `GtkRecentChooser` should display only local (file:)
    /// resources.
    case notifyLocalOnly = "notify::local-only"
    /// The `GtkRecentManager` instance used by the `GtkRecentChooser` to
    /// display the list of recently used resources.
    case notifyRecentManager = "notify::recent-manager"
    /// Allow the user to select multiple resources.
    case notifySelectMultiple = "notify::select-multiple"
    /// Whether this `GtkRecentChooser` should display an icon near the item.
    case notifyShowIcons = "notify::show-icons"
    /// Whether this `GtkRecentChooser` should display the recently used resources
    /// even if not present anymore. Setting this to `false` will perform a
    /// potentially expensive check on every local resource (every remote
    /// resource will always be displayed).
    case notifyShowNotFound = "notify::show-not-found"
    case notifyShowPrivate = "notify::show-private"
    /// Whether this `GtkRecentChooser` should display a tooltip containing the
    /// full path of the recently used resources.
    case notifyShowTips = "notify::show-tips"
    /// Sorting order to be used when displaying the recently used resources.
    case notifySortType = "notify::sort-type"
}

public extension RecentChooserProtocol {
    /// Connect a `RecentChooserSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RecentChooserSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(recent_chooser_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension RecentChooserProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooser` instance.
    var recent_chooser_ptr: UnsafeMutablePointer<GtkRecentChooser> { return ptr.assumingMemoryBound(to: GtkRecentChooser.self) }

    /// Adds `filter` to the list of `GtkRecentFilter` objects held by `chooser`.
    /// 
    /// If no previous filter objects were defined, this function will call
    /// gtk_recent_chooser_set_filter().
    func add(filter: RecentFilterProtocol) {
        gtk_recent_chooser_add_filter(cast(recent_chooser_ptr), cast(filter.ptr))
    
    }

    /// Gets the `GtkRecentInfo` currently selected by `chooser`.
    func getCurrentItem() -> UnsafeMutablePointer<GtkRecentInfo>! {
        let rv = gtk_recent_chooser_get_current_item(cast(recent_chooser_ptr))
        return cast(rv)
    }

    /// Gets the URI currently selected by `chooser`.
    func getCurrentURI() -> String! {
        let rv = gtk_recent_chooser_get_current_uri(cast(recent_chooser_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the `GtkRecentFilter` object currently used by `chooser` to affect
    /// the display of the recently used resources.
    func getFilter() -> UnsafeMutablePointer<GtkRecentFilter>! {
        let rv = gtk_recent_chooser_get_filter(cast(recent_chooser_ptr))
        return cast(rv)
    }

    /// Gets the list of recently used resources in form of `GtkRecentInfo` objects.
    /// 
    /// The return value of this function is affected by the “sort-type” and
    /// “limit” properties of `chooser`.
    func getItems() -> UnsafeMutablePointer<GList>! {
        let rv = gtk_recent_chooser_get_items(cast(recent_chooser_ptr))
        return cast(rv)
    }

    /// Gets the number of items returned by gtk_recent_chooser_get_items()
    /// and gtk_recent_chooser_get_uris().
    func getLimit() -> CInt {
        let rv = gtk_recent_chooser_get_limit(cast(recent_chooser_ptr))
        return CInt(rv)
    }

    /// Gets whether only local resources should be shown in the recently used
    /// resources selector.  See gtk_recent_chooser_set_local_only()
    func getLocalOnly() -> Bool {
        let rv = gtk_recent_chooser_get_local_only(cast(recent_chooser_ptr))
        return Bool(rv != 0)
    }

    /// Gets whether `chooser` can select multiple items.
    func getSelectMultiple() -> Bool {
        let rv = gtk_recent_chooser_get_select_multiple(cast(recent_chooser_ptr))
        return Bool(rv != 0)
    }

    /// Retrieves whether `chooser` should show an icon near the resource.
    func getShowIcons() -> Bool {
        let rv = gtk_recent_chooser_get_show_icons(cast(recent_chooser_ptr))
        return Bool(rv != 0)
    }

    /// Retrieves whether `chooser` should show the recently used resources that
    /// were not found.
    func getShowNotFound() -> Bool {
        let rv = gtk_recent_chooser_get_show_not_found(cast(recent_chooser_ptr))
        return Bool(rv != 0)
    }

    /// Returns whether `chooser` should display recently used resources
    /// registered as private.
    func getShowPrivate() -> Bool {
        let rv = gtk_recent_chooser_get_show_private(cast(recent_chooser_ptr))
        return Bool(rv != 0)
    }

    /// Gets whether `chooser` should display tooltips containing the full path
    /// of a recently user resource.
    func getShowTips() -> Bool {
        let rv = gtk_recent_chooser_get_show_tips(cast(recent_chooser_ptr))
        return Bool(rv != 0)
    }

    /// Gets the value set by gtk_recent_chooser_set_sort_type().
    func getSortType() -> GtkRecentSortType {
        let rv = gtk_recent_chooser_get_sort_type(cast(recent_chooser_ptr))
        return rv
    }

    /// Gets the URI of the recently used resources.
    /// 
    /// The return value of this function is affected by the “sort-type” and “limit”
    /// properties of `chooser`.
    /// 
    /// Since the returned array is `nil` terminated, `length` may be `nil`.
    func getURIs(length: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = gtk_recent_chooser_get_uris(cast(recent_chooser_ptr), cast(length))
        return cast(rv)
    }

    /// Gets the `GtkRecentFilter` objects held by `chooser`.
    func listFilters() -> SListRef! {
        let rv = gtk_recent_chooser_list_filters(cast(recent_chooser_ptr))
        return cast(rv.map { SListRef($0) })
    }

    /// Removes `filter` from the list of `GtkRecentFilter` objects held by `chooser`.
    func remove(filter: RecentFilterProtocol) {
        gtk_recent_chooser_remove_filter(cast(recent_chooser_ptr), cast(filter.ptr))
    
    }

    /// Selects all the items inside `chooser`, if the `chooser` supports
    /// multiple selection.
    func selectAll() {
        gtk_recent_chooser_select_all(cast(recent_chooser_ptr))
    
    }

    /// Selects `uri` inside `chooser`.
    func select(uri: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_recent_chooser_select_uri(cast(recent_chooser_ptr), uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets `uri` as the current URI for `chooser`.
    func setCurrent(uri: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_recent_chooser_set_current_uri(cast(recent_chooser_ptr), uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets `filter` as the current `GtkRecentFilter` object used by `chooser`
    /// to affect the displayed recently used resources.
    func set(filter: RecentFilterProtocol) {
        gtk_recent_chooser_set_filter(cast(recent_chooser_ptr), cast(filter.ptr))
    
    }

    /// Sets the number of items that should be returned by
    /// gtk_recent_chooser_get_items() and gtk_recent_chooser_get_uris().
    func set(limit: CInt) {
        gtk_recent_chooser_set_limit(cast(recent_chooser_ptr), gint(limit))
    
    }

    /// Sets whether only local resources, that is resources using the file:// URI
    /// scheme, should be shown in the recently used resources selector.  If
    /// `local_only` is `true` (the default) then the shown resources are guaranteed
    /// to be accessible through the operating system native file system.
    func set(localOnly local_only: Bool) {
        gtk_recent_chooser_set_local_only(cast(recent_chooser_ptr), gboolean(local_only ? 1 : 0))
    
    }

    /// Sets whether `chooser` can select multiple items.
    func set(selectMultiple select_multiple: Bool) {
        gtk_recent_chooser_set_select_multiple(cast(recent_chooser_ptr), gboolean(select_multiple ? 1 : 0))
    
    }

    /// Sets whether `chooser` should show an icon near the resource when
    /// displaying it.
    func set(showIcons show_icons: Bool) {
        gtk_recent_chooser_set_show_icons(cast(recent_chooser_ptr), gboolean(show_icons ? 1 : 0))
    
    }

    /// Sets whether `chooser` should display the recently used resources that
    /// it didn’t find.  This only applies to local resources.
    func set(showNotFound show_not_found: Bool) {
        gtk_recent_chooser_set_show_not_found(cast(recent_chooser_ptr), gboolean(show_not_found ? 1 : 0))
    
    }

    /// Whether to show recently used resources marked registered as private.
    func set(showPrivate show_private: Bool) {
        gtk_recent_chooser_set_show_private(cast(recent_chooser_ptr), gboolean(show_private ? 1 : 0))
    
    }

    /// Sets whether to show a tooltips containing the full path of each
    /// recently used resource in a `GtkRecentChooser` widget.
    func set(showTips show_tips: Bool) {
        gtk_recent_chooser_set_show_tips(cast(recent_chooser_ptr), gboolean(show_tips ? 1 : 0))
    
    }

    /// Sets the comparison function used when sorting to be `sort_func`.  If
    /// the `chooser` has the sort type set to `GTK_RECENT_SORT_CUSTOM` then
    /// the chooser will sort using this function.
    /// 
    /// To the comparison function will be passed two `GtkRecentInfo` structs and
    /// `sort_data`;  `sort_func` should return a positive integer if the first
    /// item comes before the second, zero if the two items are equal and
    /// a negative integer if the first item comes after the second.
    func set(sortFunc sort_func: @escaping RecentSortFunc, sortData sort_data: UnsafeMutableRawPointer, dataDestroy data_destroy: @escaping GLib.DestroyNotify) {
        gtk_recent_chooser_set_sort_func(cast(recent_chooser_ptr), sort_func, cast(sort_data), data_destroy)
    
    }

    /// Changes the sorting order of the recently used resources list displayed by
    /// `chooser`.
    func set(sortType sort_type: RecentSortType) {
        gtk_recent_chooser_set_sort_type(cast(recent_chooser_ptr), sort_type)
    
    }

    /// Unselects all the items inside `chooser`.
    func unselectAll() {
        gtk_recent_chooser_unselect_all(cast(recent_chooser_ptr))
    
    }

    /// Unselects `uri` inside `chooser`.
    func unselect(uri: UnsafePointer<gchar>) {
        gtk_recent_chooser_unselect_uri(cast(recent_chooser_ptr), uri)
    
    }
    /// Gets the `GtkRecentInfo` currently selected by `chooser`.
    var currentItem: UnsafeMutablePointer<GtkRecentInfo>! {
        /// Gets the `GtkRecentInfo` currently selected by `chooser`.
        get {
            let rv = gtk_recent_chooser_get_current_item(cast(recent_chooser_ptr))
            return cast(rv)
        }
    }

    /// Gets the URI currently selected by `chooser`.
    var currentURI: String! {
        /// Gets the URI currently selected by `chooser`.
        get {
            let rv = gtk_recent_chooser_get_current_uri(cast(recent_chooser_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// The `GtkRecentFilter` object to be used when displaying
    /// the recently used resources.
    var filter: UnsafeMutablePointer<GtkRecentFilter>! {
        /// Gets the `GtkRecentFilter` object currently used by `chooser` to affect
        /// the display of the recently used resources.
        get {
            let rv = gtk_recent_chooser_get_filter(cast(recent_chooser_ptr))
            return cast(rv)
        }
        /// Sets `filter` as the current `GtkRecentFilter` object used by `chooser`
        /// to affect the displayed recently used resources.
        nonmutating set {
            gtk_recent_chooser_set_filter(cast(recent_chooser_ptr), cast(newValue))
        }
    }

    /// Gets the list of recently used resources in form of `GtkRecentInfo` objects.
    /// 
    /// The return value of this function is affected by the “sort-type” and
    /// “limit” properties of `chooser`.
    var items: UnsafeMutablePointer<GList>! {
        /// Gets the list of recently used resources in form of `GtkRecentInfo` objects.
        /// 
        /// The return value of this function is affected by the “sort-type” and
        /// “limit” properties of `chooser`.
        get {
            let rv = gtk_recent_chooser_get_items(cast(recent_chooser_ptr))
            return cast(rv)
        }
    }

    /// The maximum number of recently used resources to be displayed,
    /// or -1 to display all items.
    var limit: CInt {
        /// Gets the number of items returned by gtk_recent_chooser_get_items()
        /// and gtk_recent_chooser_get_uris().
        get {
            let rv = gtk_recent_chooser_get_limit(cast(recent_chooser_ptr))
            return CInt(rv)
        }
        /// Sets the number of items that should be returned by
        /// gtk_recent_chooser_get_items() and gtk_recent_chooser_get_uris().
        nonmutating set {
            gtk_recent_chooser_set_limit(cast(recent_chooser_ptr), gint(newValue))
        }
    }

    /// Gets whether only local resources should be shown in the recently used
    /// resources selector.  See gtk_recent_chooser_set_local_only()
    var localOnly: Bool {
        /// Gets whether only local resources should be shown in the recently used
        /// resources selector.  See gtk_recent_chooser_set_local_only()
        get {
            let rv = gtk_recent_chooser_get_local_only(cast(recent_chooser_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether only local resources, that is resources using the file:// URI
        /// scheme, should be shown in the recently used resources selector.  If
        /// `local_only` is `true` (the default) then the shown resources are guaranteed
        /// to be accessible through the operating system native file system.
        nonmutating set {
            gtk_recent_chooser_set_local_only(cast(recent_chooser_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets whether `chooser` can select multiple items.
    var selectMultiple: Bool {
        /// Gets whether `chooser` can select multiple items.
        get {
            let rv = gtk_recent_chooser_get_select_multiple(cast(recent_chooser_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether `chooser` can select multiple items.
        nonmutating set {
            gtk_recent_chooser_set_select_multiple(cast(recent_chooser_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Retrieves whether `chooser` should show an icon near the resource.
    var showIcons: Bool {
        /// Retrieves whether `chooser` should show an icon near the resource.
        get {
            let rv = gtk_recent_chooser_get_show_icons(cast(recent_chooser_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether `chooser` should show an icon near the resource when
        /// displaying it.
        nonmutating set {
            gtk_recent_chooser_set_show_icons(cast(recent_chooser_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Retrieves whether `chooser` should show the recently used resources that
    /// were not found.
    var showNotFound: Bool {
        /// Retrieves whether `chooser` should show the recently used resources that
        /// were not found.
        get {
            let rv = gtk_recent_chooser_get_show_not_found(cast(recent_chooser_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether `chooser` should display the recently used resources that
        /// it didn’t find.  This only applies to local resources.
        nonmutating set {
            gtk_recent_chooser_set_show_not_found(cast(recent_chooser_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns whether `chooser` should display recently used resources
    /// registered as private.
    var showPrivate: Bool {
        /// Returns whether `chooser` should display recently used resources
        /// registered as private.
        get {
            let rv = gtk_recent_chooser_get_show_private(cast(recent_chooser_ptr))
            return Bool(rv != 0)
        }
        /// Whether to show recently used resources marked registered as private.
        nonmutating set {
            gtk_recent_chooser_set_show_private(cast(recent_chooser_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets whether `chooser` should display tooltips containing the full path
    /// of a recently user resource.
    var showTips: Bool {
        /// Gets whether `chooser` should display tooltips containing the full path
        /// of a recently user resource.
        get {
            let rv = gtk_recent_chooser_get_show_tips(cast(recent_chooser_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether to show a tooltips containing the full path of each
        /// recently used resource in a `GtkRecentChooser` widget.
        nonmutating set {
            gtk_recent_chooser_set_show_tips(cast(recent_chooser_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the value set by gtk_recent_chooser_set_sort_type().
    var sortType: GtkRecentSortType {
        /// Gets the value set by gtk_recent_chooser_set_sort_type().
        get {
            let rv = gtk_recent_chooser_get_sort_type(cast(recent_chooser_ptr))
            return rv
        }
        /// Changes the sorting order of the recently used resources list displayed by
        /// `chooser`.
        nonmutating set {
            gtk_recent_chooser_set_sort_type(cast(recent_chooser_ptr), newValue)
        }
    }
}



