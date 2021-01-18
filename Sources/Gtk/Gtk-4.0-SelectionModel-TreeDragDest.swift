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

// MARK: - SelectionModel Interface

/// The `SelectionModelProtocol` protocol exposes the methods and properties of an underlying `GtkSelectionModel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SelectionModel`.
/// Alternatively, use `SelectionModelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkSelectionModel` is an interface that extends the `GListModel` interface by
/// adding support for selections. This support is then used by widgets using list
/// models to add the ability to select and unselect various items.
/// 
/// GTK provides default implementations of the most common selection modes such
/// as `GtkSingleSelection`, so you will only need to implement this interface if
/// you want detailed control about how selections should be handled.
/// 
/// A `GtkSelectionModel` supports a single boolean per item indicating if an item
/// is selected or not. This can be queried via `gtk_selection_model_is_selected()`.
/// When the selected state of one or more items changes, the model will emit the
/// `GtkSelectionModel::selection-changed` signal by calling the
/// `gtk_selection_model_selection_changed()` function. The positions given in that
/// signal may have their selection state changed, though that is not a requirement.
/// If new items added to the model via the `GListModel::items-changed` signal are
/// selected or not is up to the implementation.
/// 
/// Note that items added via `GListModel::items-changed` may already be selected
/// and no `GtkSelectionModel::selection-changed` will be emitted for them. So to
/// track which items are selected, it is necessary to listen to both signals.
/// 
/// Additionally, the interface can expose functionality to select and unselect
/// items. If these functions are implemented, GTK's list widgets will allow users
/// to select and unselect items. However, `GtkSelectionModels` are free to only
/// implement them partially or not at all. In that case the widgets will not
/// support the unimplemented operations.
/// 
/// When selecting or unselecting is supported by a model, the return values of
/// the selection functions do *not* indicate if selection or unselection happened.
/// They are only meant to indicate complete failure, like when this mode of
/// selecting is not supported by the model.
/// 
/// Selections may happen asynchronously, so the only reliable way to find out
/// when an item was selected is to listen to the signals that indicate selection.
public protocol SelectionModelProtocol: GIO.ListModelProtocol {
        /// Untyped pointer to the underlying `GtkSelectionModel` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSelectionModel` instance.
    var selection_model_ptr: UnsafeMutablePointer<GtkSelectionModel>! { get }

    /// Required Initialiser for types conforming to `SelectionModelProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SelectionModelRef` type acts as a lightweight Swift reference to an underlying `GtkSelectionModel` instance.
/// It exposes methods that can operate on this data type through `SelectionModelProtocol` conformance.
/// Use `SelectionModelRef` only as an `unowned` reference to an existing `GtkSelectionModel` instance.
///
/// `GtkSelectionModel` is an interface that extends the `GListModel` interface by
/// adding support for selections. This support is then used by widgets using list
/// models to add the ability to select and unselect various items.
/// 
/// GTK provides default implementations of the most common selection modes such
/// as `GtkSingleSelection`, so you will only need to implement this interface if
/// you want detailed control about how selections should be handled.
/// 
/// A `GtkSelectionModel` supports a single boolean per item indicating if an item
/// is selected or not. This can be queried via `gtk_selection_model_is_selected()`.
/// When the selected state of one or more items changes, the model will emit the
/// `GtkSelectionModel::selection-changed` signal by calling the
/// `gtk_selection_model_selection_changed()` function. The positions given in that
/// signal may have their selection state changed, though that is not a requirement.
/// If new items added to the model via the `GListModel::items-changed` signal are
/// selected or not is up to the implementation.
/// 
/// Note that items added via `GListModel::items-changed` may already be selected
/// and no `GtkSelectionModel::selection-changed` will be emitted for them. So to
/// track which items are selected, it is necessary to listen to both signals.
/// 
/// Additionally, the interface can expose functionality to select and unselect
/// items. If these functions are implemented, GTK's list widgets will allow users
/// to select and unselect items. However, `GtkSelectionModels` are free to only
/// implement them partially or not at all. In that case the widgets will not
/// support the unimplemented operations.
/// 
/// When selecting or unselecting is supported by a model, the return values of
/// the selection functions do *not* indicate if selection or unselection happened.
/// They are only meant to indicate complete failure, like when this mode of
/// selecting is not supported by the model.
/// 
/// Selections may happen asynchronously, so the only reliable way to find out
/// when an item was selected is to listen to the signals that indicate selection.
public struct SelectionModelRef: SelectionModelProtocol {
        /// Untyped pointer to the underlying `GtkSelectionModel` instance.
    /// For type-safe access, use the generated, typed pointer `selection_model_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SelectionModelRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSelectionModel>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSelectionModel>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSelectionModel>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSelectionModel>?) {
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

    /// Reference intialiser for a related type that implements `SelectionModelProtocol`
    @inlinable init<T: SelectionModelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SelectionModel` type acts as an owner of an underlying `GtkSelectionModel` instance.
/// It provides the methods that can operate on this data type through `SelectionModelProtocol` conformance.
/// Use `SelectionModel` as a strong reference or owner of a `GtkSelectionModel` instance.
///
/// `GtkSelectionModel` is an interface that extends the `GListModel` interface by
/// adding support for selections. This support is then used by widgets using list
/// models to add the ability to select and unselect various items.
/// 
/// GTK provides default implementations of the most common selection modes such
/// as `GtkSingleSelection`, so you will only need to implement this interface if
/// you want detailed control about how selections should be handled.
/// 
/// A `GtkSelectionModel` supports a single boolean per item indicating if an item
/// is selected or not. This can be queried via `gtk_selection_model_is_selected()`.
/// When the selected state of one or more items changes, the model will emit the
/// `GtkSelectionModel::selection-changed` signal by calling the
/// `gtk_selection_model_selection_changed()` function. The positions given in that
/// signal may have their selection state changed, though that is not a requirement.
/// If new items added to the model via the `GListModel::items-changed` signal are
/// selected or not is up to the implementation.
/// 
/// Note that items added via `GListModel::items-changed` may already be selected
/// and no `GtkSelectionModel::selection-changed` will be emitted for them. So to
/// track which items are selected, it is necessary to listen to both signals.
/// 
/// Additionally, the interface can expose functionality to select and unselect
/// items. If these functions are implemented, GTK's list widgets will allow users
/// to select and unselect items. However, `GtkSelectionModels` are free to only
/// implement them partially or not at all. In that case the widgets will not
/// support the unimplemented operations.
/// 
/// When selecting or unselecting is supported by a model, the return values of
/// the selection functions do *not* indicate if selection or unselection happened.
/// They are only meant to indicate complete failure, like when this mode of
/// selecting is not supported by the model.
/// 
/// Selections may happen asynchronously, so the only reliable way to find out
/// when an item was selected is to listen to the signals that indicate selection.
open class SelectionModel: GIO.ListModel, SelectionModelProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SelectionModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkSelectionModel>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SelectionModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkSelectionModel>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SelectionModel` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SelectionModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SelectionModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkSelectionModel>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SelectionModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkSelectionModel>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkSelectionModel` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SelectionModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkSelectionModel>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SelectionModelProtocol`
    /// `GtkSelectionModel` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SelectionModelProtocol`
    @inlinable public init<T: SelectionModelProtocol>(selectionModel other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no SelectionModel properties

public enum SelectionModelSignalName: String, SignalNameProtocol {
    /// This signal is emitted whenever items were added to or removed
    /// from `list`. At `position`, `removed` items were removed and `added`
    /// items were added in their place.
    /// 
    /// Note: If `removed` != `added`, the positions of all later items
    /// in the model change.
    case itemsChanged = "items-changed"
    /// Emitted when the selection state of some of the items in `model` changes.
    /// 
    /// Note that this signal does not specify the new selection state of the items,
    /// they need to be queried manually.
    /// It is also not necessary for a model to change the selection state of any of
    /// the items in the selection model, though it would be rather useless to emit
    /// such a signal.
    case selectionChanged = "selection-changed"

}

// MARK: SelectionModel signals
public extension SelectionModelProtocol {
    /// Connect a Swift signal handler to the given, typed `SelectionModelSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: SelectionModelSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        GLibObject.ObjectRef(raw: ptr).connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `SelectionModelSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: SelectionModelSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        GLibObject.ObjectRef(raw: ptr).connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the selection state of some of the items in `model` changes.
    /// 
    /// Note that this signal does not specify the new selection state of the items,
    /// they need to be queried manually.
    /// It is also not necessary for a model to change the selection state of any of
    /// the items in the selection model, though it would be rather useless to emit
    /// such a signal.
    /// - Note: This represents the underlying `selection-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter position: The first item that may have changed
    /// - Parameter nItems: number of items with changes
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `selectionChanged` signal is emitted
    @discardableResult @inlinable func onSelectionChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: SelectionModelRef, _ position: UInt, _ nItems: UInt) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<SelectionModelRef, UInt, UInt, Void>
        let cCallback: @convention(c) (gpointer, guint, guint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(SelectionModelRef(raw: unownedSelf), UInt(arg1), UInt(arg2))
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
    static var selectionChangedSignal: SelectionModelSignalName { .selectionChanged }
    
    
}

// MARK: SelectionModel Interface: SelectionModelProtocol extension (methods and fields)
public extension SelectionModelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSelectionModel` instance.
    @inlinable var selection_model_ptr: UnsafeMutablePointer<GtkSelectionModel>! { return ptr?.assumingMemoryBound(to: GtkSelectionModel.self) }

    /// Gets the set containing all currently selected items in the model.
    /// 
    /// This function may be slow, so if you are only interested in single item,
    /// consider using `gtk_selection_model_is_selected()` or if you are only
    /// interested in a few consider `gtk_selection_model_get_selection_in_range()`.
    @inlinable func getSelection() -> BitsetRef! {
        let rv = BitsetRef(gconstpointer: gconstpointer(gtk_selection_model_get_selection(selection_model_ptr)))
        return rv
    }

    /// Gets a set containing a set where the values in the range `[position,
    /// position + n_items)` match the selected state of the items in that range.
    /// All values outside that range are undefined.
    /// 
    /// This function is an optimization for `gtk_selection_model_get_selection()` when
    /// you are only interested in part of the model's selected state. A common use
    /// case is in response to the `GtkSelectionModel::selection-changed` signal.
    @inlinable func getSelectionInRange(position: Int, nItems: Int) -> BitsetRef! {
        let rv = BitsetRef(gconstpointer: gconstpointer(gtk_selection_model_get_selection_in_range(selection_model_ptr, guint(position), guint(nItems))))
        return rv
    }

    /// Checks if the given item is selected.
    @inlinable func isSelected(position: Int) -> Bool {
        let rv = ((gtk_selection_model_is_selected(selection_model_ptr, guint(position))) != 0)
        return rv
    }

    /// Requests to select all items in the model.
    @inlinable func selectAll() -> Bool {
        let rv = ((gtk_selection_model_select_all(selection_model_ptr)) != 0)
        return rv
    }

    /// Requests to select an item in the model.
    @inlinable func selectItem(position: Int, unselectRest: Bool) -> Bool {
        let rv = ((gtk_selection_model_select_item(selection_model_ptr, guint(position), gboolean((unselectRest) ? 1 : 0))) != 0)
        return rv
    }

    /// Requests to select a range of items in the model.
    @inlinable func selectRange(position: Int, nItems: Int, unselectRest: Bool) -> Bool {
        let rv = ((gtk_selection_model_select_range(selection_model_ptr, guint(position), guint(nItems), gboolean((unselectRest) ? 1 : 0))) != 0)
        return rv
    }

    /// Helper function for implementations of `GtkSelectionModel`.
    /// Call this when a the selection changes to emit the
    /// `GtkSelectionModel::selection-changed` signal.
    @inlinable func selectionChanged(position: Int, nItems: Int) {
        gtk_selection_model_selection_changed(selection_model_ptr, guint(position), guint(nItems))
    
    }

    /// This is the most advanced selection updating method that allows
    /// the most fine-grained control over selection changes.
    /// If you can, you should try the simpler versions, as implementations
    /// are more likely to implement support for those.
    /// 
    /// Requests that the selection state of all positions set in `mask` be
    /// updated to the respective value in the `selected` bitmask.
    /// 
    /// In pseudocode, it would look something like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// for (i = 0; i < n_items; i++)
    ///   {
    ///     // don't change values not in the mask
    ///     if (!gtk_bitset_contains (mask, i))
    ///       continue;
    /// 
    ///     if (gtk_bitset_contains (selected, i))
    ///       select_item (i);
    ///     else
    ///       unselect_item (i);
    ///   }
    /// 
    /// gtk_selection_model_selection_changed (model, first_changed_item, n_changed_items);
    /// ```
    /// 
    /// `mask` and `selected` must not be modified. They may refer to the same bitset,
    /// which would mean that every item in the set should be selected.
    @inlinable func setSelection<BitsetT: BitsetProtocol>(selected: BitsetT, mask: BitsetT) -> Bool {
        let rv = ((gtk_selection_model_set_selection(selection_model_ptr, selected.bitset_ptr, mask.bitset_ptr)) != 0)
        return rv
    }

    /// Requests to unselect all items in the model.
    @inlinable func unselectAll() -> Bool {
        let rv = ((gtk_selection_model_unselect_all(selection_model_ptr)) != 0)
        return rv
    }

    /// Requests to unselect an item in the model.
    @inlinable func unselectItem(position: Int) -> Bool {
        let rv = ((gtk_selection_model_unselect_item(selection_model_ptr, guint(position))) != 0)
        return rv
    }

    /// Requests to unselect a range of items in the model.
    @inlinable func unselectRange(position: Int, nItems: Int) -> Bool {
        let rv = ((gtk_selection_model_unselect_range(selection_model_ptr, guint(position), guint(nItems))) != 0)
        return rv
    }
    /// Gets the set containing all currently selected items in the model.
    /// 
    /// This function may be slow, so if you are only interested in single item,
    /// consider using `gtk_selection_model_is_selected()` or if you are only
    /// interested in a few consider `gtk_selection_model_get_selection_in_range()`.
    @inlinable var selection: BitsetRef! {
        /// Gets the set containing all currently selected items in the model.
        /// 
        /// This function may be slow, so if you are only interested in single item,
        /// consider using `gtk_selection_model_is_selected()` or if you are only
        /// interested in a few consider `gtk_selection_model_get_selection_in_range()`.
        get {
            let rv = BitsetRef(gconstpointer: gconstpointer(gtk_selection_model_get_selection(selection_model_ptr)))
            return rv
        }
    }


}



// MARK: - ShortcutManager Interface

/// The `ShortcutManagerProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutManager` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutManager`.
/// Alternatively, use `ShortcutManagerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GtkShortcutManager interface is used to implement
/// shortcut scopes.
/// 
/// This is important for `GtkNative` widgets that have their own surface,
/// since the event controllers that are used to implement managed and
/// global scopes are limited to the same native.
/// 
/// Examples for widgets implementing `GtkShortcutManager` are `GtkWindow`
/// and `GtkPopover`.
public protocol ShortcutManagerProtocol {
        /// Untyped pointer to the underlying `GtkShortcutManager` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkShortcutManager` instance.
    var shortcut_manager_ptr: UnsafeMutablePointer<GtkShortcutManager>! { get }

    /// Required Initialiser for types conforming to `ShortcutManagerProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ShortcutManagerRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutManager` instance.
/// It exposes methods that can operate on this data type through `ShortcutManagerProtocol` conformance.
/// Use `ShortcutManagerRef` only as an `unowned` reference to an existing `GtkShortcutManager` instance.
///
/// The GtkShortcutManager interface is used to implement
/// shortcut scopes.
/// 
/// This is important for `GtkNative` widgets that have their own surface,
/// since the event controllers that are used to implement managed and
/// global scopes are limited to the same native.
/// 
/// Examples for widgets implementing `GtkShortcutManager` are `GtkWindow`
/// and `GtkPopover`.
public struct ShortcutManagerRef: ShortcutManagerProtocol {
        /// Untyped pointer to the underlying `GtkShortcutManager` instance.
    /// For type-safe access, use the generated, typed pointer `shortcut_manager_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ShortcutManagerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkShortcutManager>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkShortcutManager>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkShortcutManager>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkShortcutManager>?) {
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

    /// Reference intialiser for a related type that implements `ShortcutManagerProtocol`
    @inlinable init<T: ShortcutManagerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ShortcutManager` type acts as an owner of an underlying `GtkShortcutManager` instance.
/// It provides the methods that can operate on this data type through `ShortcutManagerProtocol` conformance.
/// Use `ShortcutManager` as a strong reference or owner of a `GtkShortcutManager` instance.
///
/// The GtkShortcutManager interface is used to implement
/// shortcut scopes.
/// 
/// This is important for `GtkNative` widgets that have their own surface,
/// since the event controllers that are used to implement managed and
/// global scopes are limited to the same native.
/// 
/// Examples for widgets implementing `GtkShortcutManager` are `GtkWindow`
/// and `GtkPopover`.
open class ShortcutManager: ShortcutManagerProtocol {
        /// Untyped pointer to the underlying `GtkShortcutManager` instance.
    /// For type-safe access, use the generated, typed pointer `shortcut_manager_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ShortcutManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkShortcutManager>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ShortcutManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkShortcutManager>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ShortcutManager` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ShortcutManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ShortcutManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkShortcutManager>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ShortcutManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkShortcutManager>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkShortcutManager` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ShortcutManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkShortcutManager>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkShortcutManager, cannot ref(shortcut_manager_ptr)
    }

    /// Reference intialiser for a related type that implements `ShortcutManagerProtocol`
    /// `GtkShortcutManager` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ShortcutManagerProtocol`
    @inlinable public init<T: ShortcutManagerProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkShortcutManager, cannot ref(shortcut_manager_ptr)
    }

    /// Do-nothing destructor for `GtkShortcutManager`.
    deinit {
        // no reference counting for GtkShortcutManager, cannot unref(shortcut_manager_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkShortcutManager, cannot ref(shortcut_manager_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkShortcutManager, cannot ref(shortcut_manager_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkShortcutManager, cannot ref(shortcut_manager_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkShortcutManager, cannot ref(shortcut_manager_ptr)
    }



}

// MARK: no ShortcutManager properties

// MARK: no ShortcutManager signals

// MARK: ShortcutManager has no signals
// MARK: ShortcutManager Interface: ShortcutManagerProtocol extension (methods and fields)
public extension ShortcutManagerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutManager` instance.
    @inlinable var shortcut_manager_ptr: UnsafeMutablePointer<GtkShortcutManager>! { return ptr?.assumingMemoryBound(to: GtkShortcutManager.self) }



}



// MARK: - StyleProvider Interface

/// The `StyleProviderProtocol` protocol exposes the methods and properties of an underlying `GtkStyleProvider` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StyleProvider`.
/// Alternatively, use `StyleProviderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkStyleProvider is an interface used to provide style information to a `GtkStyleContext`.
/// See `gtk_style_context_add_provider()` and `gtk_style_context_add_provider_for_display()`.
public protocol StyleProviderProtocol {
        /// Untyped pointer to the underlying `GtkStyleProvider` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStyleProvider` instance.
    var style_provider_ptr: UnsafeMutablePointer<GtkStyleProvider>! { get }

    /// Required Initialiser for types conforming to `StyleProviderProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `StyleProviderRef` type acts as a lightweight Swift reference to an underlying `GtkStyleProvider` instance.
/// It exposes methods that can operate on this data type through `StyleProviderProtocol` conformance.
/// Use `StyleProviderRef` only as an `unowned` reference to an existing `GtkStyleProvider` instance.
///
/// GtkStyleProvider is an interface used to provide style information to a `GtkStyleContext`.
/// See `gtk_style_context_add_provider()` and `gtk_style_context_add_provider_for_display()`.
public struct StyleProviderRef: StyleProviderProtocol {
        /// Untyped pointer to the underlying `GtkStyleProvider` instance.
    /// For type-safe access, use the generated, typed pointer `style_provider_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StyleProviderRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStyleProvider>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStyleProvider>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStyleProvider>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStyleProvider>?) {
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

    /// Reference intialiser for a related type that implements `StyleProviderProtocol`
    @inlinable init<T: StyleProviderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StyleProvider` type acts as an owner of an underlying `GtkStyleProvider` instance.
/// It provides the methods that can operate on this data type through `StyleProviderProtocol` conformance.
/// Use `StyleProvider` as a strong reference or owner of a `GtkStyleProvider` instance.
///
/// GtkStyleProvider is an interface used to provide style information to a `GtkStyleContext`.
/// See `gtk_style_context_add_provider()` and `gtk_style_context_add_provider_for_display()`.
open class StyleProvider: StyleProviderProtocol {
        /// Untyped pointer to the underlying `GtkStyleProvider` instance.
    /// For type-safe access, use the generated, typed pointer `style_provider_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StyleProvider` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkStyleProvider>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StyleProvider` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkStyleProvider>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StyleProvider` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StyleProvider` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StyleProvider` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkStyleProvider>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StyleProvider` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkStyleProvider>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkStyleProvider` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `StyleProvider` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkStyleProvider>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkStyleProvider, cannot ref(style_provider_ptr)
    }

    /// Reference intialiser for a related type that implements `StyleProviderProtocol`
    /// `GtkStyleProvider` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `StyleProviderProtocol`
    @inlinable public init<T: StyleProviderProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkStyleProvider, cannot ref(style_provider_ptr)
    }

    /// Do-nothing destructor for `GtkStyleProvider`.
    deinit {
        // no reference counting for GtkStyleProvider, cannot unref(style_provider_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkStyleProvider, cannot ref(style_provider_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkStyleProvider, cannot ref(style_provider_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkStyleProvider, cannot ref(style_provider_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkStyleProvider, cannot ref(style_provider_ptr)
    }



}

// MARK: no StyleProvider properties

public enum StyleProviderSignalName: String, SignalNameProtocol {
    case gtkPrivateChanged = "gtk-private-changed"

}

// MARK: StyleProvider signals
public extension StyleProviderProtocol {
    /// Connect a Swift signal handler to the given, typed `StyleProviderSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: StyleProviderSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        GLibObject.ObjectRef(raw: ptr).connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `StyleProviderSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: StyleProviderSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        GLibObject.ObjectRef(raw: ptr).connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// - Note: This represents the underlying `gtk-private-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `gtkPrivateChanged` signal is emitted
    @discardableResult @inlinable func onGtkPrivateChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: StyleProviderRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<StyleProviderRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(StyleProviderRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .gtkPrivateChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `gtk-private-changed` signal for using the `connect(signal:)` methods
    static var gtkPrivateChangedSignal: StyleProviderSignalName { .gtkPrivateChanged }
    
    
}

// MARK: StyleProvider Interface: StyleProviderProtocol extension (methods and fields)
public extension StyleProviderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStyleProvider` instance.
    @inlinable var style_provider_ptr: UnsafeMutablePointer<GtkStyleProvider>! { return ptr?.assumingMemoryBound(to: GtkStyleProvider.self) }



}



// MARK: - TreeDragDest Interface

/// The `TreeDragDestProtocol` protocol exposes the methods and properties of an underlying `GtkTreeDragDest` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeDragDest`.
/// Alternatively, use `TreeDragDestRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeDragDestProtocol {
        /// Untyped pointer to the underlying `GtkTreeDragDest` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTreeDragDest` instance.
    var tree_drag_dest_ptr: UnsafeMutablePointer<GtkTreeDragDest>! { get }

    /// Required Initialiser for types conforming to `TreeDragDestProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TreeDragDestRef` type acts as a lightweight Swift reference to an underlying `GtkTreeDragDest` instance.
/// It exposes methods that can operate on this data type through `TreeDragDestProtocol` conformance.
/// Use `TreeDragDestRef` only as an `unowned` reference to an existing `GtkTreeDragDest` instance.
///

public struct TreeDragDestRef: TreeDragDestProtocol {
        /// Untyped pointer to the underlying `GtkTreeDragDest` instance.
    /// For type-safe access, use the generated, typed pointer `tree_drag_dest_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeDragDestRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTreeDragDest>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTreeDragDest>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTreeDragDest>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTreeDragDest>?) {
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

    /// Reference intialiser for a related type that implements `TreeDragDestProtocol`
    @inlinable init<T: TreeDragDestProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeDragDest` type acts as an owner of an underlying `GtkTreeDragDest` instance.
/// It provides the methods that can operate on this data type through `TreeDragDestProtocol` conformance.
/// Use `TreeDragDest` as a strong reference or owner of a `GtkTreeDragDest` instance.
///

open class TreeDragDest: TreeDragDestProtocol {
        /// Untyped pointer to the underlying `GtkTreeDragDest` instance.
    /// For type-safe access, use the generated, typed pointer `tree_drag_dest_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeDragDest` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkTreeDragDest>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeDragDest` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkTreeDragDest>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeDragDest` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeDragDest` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeDragDest` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkTreeDragDest>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TreeDragDest` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkTreeDragDest>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkTreeDragDest` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TreeDragDest` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkTreeDragDest>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkTreeDragDest, cannot ref(tree_drag_dest_ptr)
    }

    /// Reference intialiser for a related type that implements `TreeDragDestProtocol`
    /// `GtkTreeDragDest` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TreeDragDestProtocol`
    @inlinable public init<T: TreeDragDestProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkTreeDragDest, cannot ref(tree_drag_dest_ptr)
    }

    /// Do-nothing destructor for `GtkTreeDragDest`.
    deinit {
        // no reference counting for GtkTreeDragDest, cannot unref(tree_drag_dest_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkTreeDragDest, cannot ref(tree_drag_dest_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkTreeDragDest, cannot ref(tree_drag_dest_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkTreeDragDest, cannot ref(tree_drag_dest_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkTreeDragDest, cannot ref(tree_drag_dest_ptr)
    }



}

// MARK: no TreeDragDest properties

// MARK: no TreeDragDest signals

// MARK: TreeDragDest has no signals
// MARK: TreeDragDest Interface: TreeDragDestProtocol extension (methods and fields)
public extension TreeDragDestProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeDragDest` instance.
    @inlinable var tree_drag_dest_ptr: UnsafeMutablePointer<GtkTreeDragDest>! { return ptr?.assumingMemoryBound(to: GtkTreeDragDest.self) }

    /// Asks the `GtkTreeDragDest` to insert a row before the path `dest`,
    /// deriving the contents of the row from `value`. If `dest` is
    /// outside the tree so that inserting before it is impossible, `false`
    /// will be returned. Also, `false` may be returned if the new row is
    /// not created for some model-specific reason.  Should robustly handle
    /// a `dest` no longer found in the model!
    @inlinable func dragDataReceived<TreePathT: TreePathProtocol, ValueT: GLibObject.ValueProtocol>(dest: TreePathT, value: ValueT) -> Bool {
        let rv = ((gtk_tree_drag_dest_drag_data_received(tree_drag_dest_ptr, dest.tree_path_ptr, value.value_ptr)) != 0)
        return rv
    }

    /// Determines whether a drop is possible before the given `dest_path`,
    /// at the same depth as `dest_path`. i.e., can we drop the data in
    /// `value` at that location. `dest_path` does not have to
    /// exist; the return value will almost certainly be `false` if the
    /// parent of `dest_path` doesn’t exist, though.
    @inlinable func rowDropPossible<TreePathT: TreePathProtocol, ValueT: GLibObject.ValueProtocol>(destPath: TreePathT, value: ValueT) -> Bool {
        let rv = ((gtk_tree_drag_dest_row_drop_possible(tree_drag_dest_ptr, destPath.tree_path_ptr, value.value_ptr)) != 0)
        return rv
    }


}



