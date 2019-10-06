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

// MARK: - EntryAccessible Class

/// The `EntryAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkEntryAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryAccessible`.
/// Alternatively, use `EntryAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EntryAccessibleProtocol: WidgetAccessibleProtocol, Atk.ActionProtocol, Atk.EditableTextProtocol, Atk.TextProtocol {
    /// Untyped pointer to the underlying `GtkEntryAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEntryAccessible` instance.
    var entry_accessible_ptr: UnsafeMutablePointer<GtkEntryAccessible> { get }
}

/// The `EntryAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkEntryAccessible` instance.
/// It exposes methods that can operate on this data type through `EntryAccessibleProtocol` conformance.
/// Use `EntryAccessibleRef` only as an `unowned` reference to an existing `GtkEntryAccessible` instance.
///

public struct EntryAccessibleRef: EntryAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkEntryAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `entry_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EntryAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEntryAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EntryAccessibleProtocol`
    init<T: EntryAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EntryAccessible` type acts as a reference-counted owner of an underlying `GtkEntryAccessible` instance.
/// It provides the methods that can operate on this data type through `EntryAccessibleProtocol` conformance.
/// Use `EntryAccessible` as a strong reference or owner of a `GtkEntryAccessible` instance.
///

open class EntryAccessible: WidgetAccessible, EntryAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EntryAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkEntryAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `EntryAccessibleProtocol`
    /// Will retain `GtkEntryAccessible`.
    public convenience init<T: EntryAccessibleProtocol>(_ other: T) {
        self.init(cast(other.entry_accessible_ptr))
        g_object_ref(cast(entry_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEntryAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEntryAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEntryAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEntryAccessible>(opaquePointer))
    }



}

public enum EntryAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension EntryAccessibleProtocol {
    /// Bind a `EntryAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EntryAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(entry_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum EntryAccessibleSignalName: String, SignalNameProtocol {
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
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
    /// notifications. `AtkObject::property`-changed is needed by the
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

public extension EntryAccessibleProtocol {
    /// Connect a `EntryAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: EntryAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(entry_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension EntryAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryAccessible` instance.
    var entry_accessible_ptr: UnsafeMutablePointer<GtkEntryAccessible> { return ptr.assumingMemoryBound(to: GtkEntryAccessible.self) }

}



// MARK: - EntryBuffer Class

/// The `EntryBufferProtocol` protocol exposes the methods and properties of an underlying `GtkEntryBuffer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryBuffer`.
/// Alternatively, use `EntryBufferRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkEntryBuffer` class contains the actual text displayed in a
/// `GtkEntry` widget.
/// 
/// A single `GtkEntryBuffer` object can be shared by multiple `GtkEntry`
/// widgets which will then share the same text content, but not the cursor
/// position, visibility attributes, icon etc.
/// 
/// `GtkEntryBuffer` may be derived from. Such a derived class might allow
/// text to be stored in an alternate location, such as non-pageable memory,
/// useful in the case of important passwords. Or a derived class could
/// integrate with an application’s concept of undo/redo.
public protocol EntryBufferProtocol: GLibObject.ObjectProtocol {
    /// Untyped pointer to the underlying `GtkEntryBuffer` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEntryBuffer` instance.
    var entry_buffer_ptr: UnsafeMutablePointer<GtkEntryBuffer> { get }
}

/// The `EntryBufferRef` type acts as a lightweight Swift reference to an underlying `GtkEntryBuffer` instance.
/// It exposes methods that can operate on this data type through `EntryBufferProtocol` conformance.
/// Use `EntryBufferRef` only as an `unowned` reference to an existing `GtkEntryBuffer` instance.
///
/// The `GtkEntryBuffer` class contains the actual text displayed in a
/// `GtkEntry` widget.
/// 
/// A single `GtkEntryBuffer` object can be shared by multiple `GtkEntry`
/// widgets which will then share the same text content, but not the cursor
/// position, visibility attributes, icon etc.
/// 
/// `GtkEntryBuffer` may be derived from. Such a derived class might allow
/// text to be stored in an alternate location, such as non-pageable memory,
/// useful in the case of important passwords. Or a derived class could
/// integrate with an application’s concept of undo/redo.
public struct EntryBufferRef: EntryBufferProtocol {
    /// Untyped pointer to the underlying `GtkEntryBuffer` instance.
    /// For type-safe access, use the generated, typed pointer `entry_buffer_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EntryBufferRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEntryBuffer>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EntryBufferProtocol`
    init<T: EntryBufferProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new GtkEntryBuffer object.
    /// 
    /// Optionally, specify initial text to set in the buffer.
    init( initial_chars: UnsafePointer<gchar>, nInitialChars n_initial_chars: CInt) {
        let rv = gtk_entry_buffer_new(initial_chars, gint(n_initial_chars))
        self.init(cast(rv))
    }
}

/// The `EntryBuffer` type acts as a reference-counted owner of an underlying `GtkEntryBuffer` instance.
/// It provides the methods that can operate on this data type through `EntryBufferProtocol` conformance.
/// Use `EntryBuffer` as a strong reference or owner of a `GtkEntryBuffer` instance.
///
/// The `GtkEntryBuffer` class contains the actual text displayed in a
/// `GtkEntry` widget.
/// 
/// A single `GtkEntryBuffer` object can be shared by multiple `GtkEntry`
/// widgets which will then share the same text content, but not the cursor
/// position, visibility attributes, icon etc.
/// 
/// `GtkEntryBuffer` may be derived from. Such a derived class might allow
/// text to be stored in an alternate location, such as non-pageable memory,
/// useful in the case of important passwords. Or a derived class could
/// integrate with an application’s concept of undo/redo.
open class EntryBuffer: GLibObject.Object, EntryBufferProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EntryBuffer` instance.
    public init(_ op: UnsafeMutablePointer<GtkEntryBuffer>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `EntryBufferProtocol`
    /// Will retain `GtkEntryBuffer`.
    public convenience init<T: EntryBufferProtocol>(_ other: T) {
        self.init(cast(other.entry_buffer_ptr))
        g_object_ref(cast(entry_buffer_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEntryBuffer.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEntryBuffer.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEntryBuffer.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryBufferProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEntryBuffer>(opaquePointer))
    }

    /// Create a new GtkEntryBuffer object.
    /// 
    /// Optionally, specify initial text to set in the buffer.
    public convenience init( initial_chars: UnsafePointer<gchar>, nInitialChars n_initial_chars: CInt) {
        let rv = gtk_entry_buffer_new(initial_chars, gint(n_initial_chars))
        self.init(cast(rv))
    }


}

public enum EntryBufferPropertyName: String, PropertyNameProtocol {
    /// The length (in characters) of the text in buffer.
    case length = "length"
    /// The maximum length (in characters) of the text in the buffer.
    case maxLength = "max-length"
    /// The contents of the buffer.
    case text = "text"
}

public extension EntryBufferProtocol {
    /// Bind a `EntryBufferPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EntryBufferPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(entry_buffer_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum EntryBufferSignalName: String, SignalNameProtocol {
    /// This signal is emitted after text is deleted from the buffer.
    case deletedText = "deleted-text"
    /// This signal is emitted after text is inserted into the buffer.
    case insertedText = "inserted-text"
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
    case notify = "notify"
    /// The length (in characters) of the text in buffer.
    case notifyLength = "notify::length"
    /// The maximum length (in characters) of the text in the buffer.
    case notifyMaxLength = "notify::max-length"
    /// The contents of the buffer.
    case notifyText = "notify::text"
}

public extension EntryBufferProtocol {
    /// Connect a `EntryBufferSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: EntryBufferSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(entry_buffer_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension EntryBufferProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryBuffer` instance.
    var entry_buffer_ptr: UnsafeMutablePointer<GtkEntryBuffer> { return ptr.assumingMemoryBound(to: GtkEntryBuffer.self) }

    /// Deletes a sequence of characters from the buffer. `n_chars` characters are
    /// deleted starting at `position`. If `n_chars` is negative, then all characters
    /// until the end of the text are deleted.
    /// 
    /// If `position` or `n_chars` are out of bounds, then they are coerced to sane
    /// values.
    /// 
    /// Note that the positions are specified in characters, not bytes.
    func deleteText(position: CUnsignedInt, nChars n_chars: CInt) -> CUnsignedInt {
        let rv = gtk_entry_buffer_delete_text(cast(entry_buffer_ptr), guint(position), gint(n_chars))
        return CUnsignedInt(rv)
    }

    /// Used when subclassing `GtkEntryBuffer`
    func emitDeletedText(position: CUnsignedInt, nChars n_chars: CUnsignedInt) {
        gtk_entry_buffer_emit_deleted_text(cast(entry_buffer_ptr), guint(position), guint(n_chars))
    
    }

    /// Used when subclassing `GtkEntryBuffer`
    func emitInsertedText(position: CUnsignedInt, chars: UnsafePointer<gchar>, nChars n_chars: CUnsignedInt) {
        gtk_entry_buffer_emit_inserted_text(cast(entry_buffer_ptr), guint(position), chars, guint(n_chars))
    
    }

    /// Retrieves the length in bytes of the buffer.
    /// See `gtk_entry_buffer_get_length()`.
    func getBytes() -> Int {
        let rv = gtk_entry_buffer_get_bytes(cast(entry_buffer_ptr))
        return Int(rv)
    }

    /// Retrieves the length in characters of the buffer.
    func getLength() -> CUnsignedInt {
        let rv = gtk_entry_buffer_get_length(cast(entry_buffer_ptr))
        return CUnsignedInt(rv)
    }

    /// Retrieves the maximum allowed length of the text in
    /// `buffer`. See `gtk_entry_buffer_set_max_length()`.
    func getMaxLength() -> CInt {
        let rv = gtk_entry_buffer_get_max_length(cast(entry_buffer_ptr))
        return CInt(rv)
    }

    /// Retrieves the contents of the buffer.
    /// 
    /// The memory pointer returned by this call will not change
    /// unless this object emits a signal, or is finalized.
    func getText() -> String! {
        let rv = gtk_entry_buffer_get_text(cast(entry_buffer_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Inserts `n_chars` characters of `chars` into the contents of the
    /// buffer, at position `position`.
    /// 
    /// If `n_chars` is negative, then characters from chars will be inserted
    /// until a null-terminator is found. If `position` or `n_chars` are out of
    /// bounds, or the maximum buffer text length is exceeded, then they are
    /// coerced to sane values.
    /// 
    /// Note that the position and length are in characters, not in bytes.
    func insertText(position: CUnsignedInt, chars: UnsafePointer<gchar>, nChars n_chars: CInt) -> CUnsignedInt {
        let rv = gtk_entry_buffer_insert_text(cast(entry_buffer_ptr), guint(position), chars, gint(n_chars))
        return CUnsignedInt(rv)
    }

    /// Sets the maximum allowed length of the contents of the buffer. If
    /// the current contents are longer than the given length, then they
    /// will be truncated to fit.
    func set(maxLength max_length: CInt) {
        gtk_entry_buffer_set_max_length(cast(entry_buffer_ptr), gint(max_length))
    
    }

    /// Sets the text in the buffer.
    /// 
    /// This is roughly equivalent to calling `gtk_entry_buffer_delete_text()`
    /// and `gtk_entry_buffer_insert_text()`.
    /// 
    /// Note that `n_chars` is in characters, not in bytes.
    func setText(chars: UnsafePointer<gchar>, nChars n_chars: CInt) {
        gtk_entry_buffer_set_text(cast(entry_buffer_ptr), chars, gint(n_chars))
    
    }
    /// Retrieves the length in bytes of the buffer.
    /// See `gtk_entry_buffer_get_length()`.
    var bytes: Int {
        /// Retrieves the length in bytes of the buffer.
        /// See `gtk_entry_buffer_get_length()`.
        get {
            let rv = gtk_entry_buffer_get_bytes(cast(entry_buffer_ptr))
            return Int(rv)
        }
    }

    /// The length (in characters) of the text in buffer.
    var length: CUnsignedInt {
        /// Retrieves the length in characters of the buffer.
        get {
            let rv = gtk_entry_buffer_get_length(cast(entry_buffer_ptr))
            return CUnsignedInt(rv)
        }
    }

    /// Retrieves the maximum allowed length of the text in
    /// `buffer`. See `gtk_entry_buffer_set_max_length()`.
    var maxLength: CInt {
        /// Retrieves the maximum allowed length of the text in
        /// `buffer`. See `gtk_entry_buffer_set_max_length()`.
        get {
            let rv = gtk_entry_buffer_get_max_length(cast(entry_buffer_ptr))
            return CInt(rv)
        }
        /// Sets the maximum allowed length of the contents of the buffer. If
        /// the current contents are longer than the given length, then they
        /// will be truncated to fit.
        nonmutating set {
            gtk_entry_buffer_set_max_length(cast(entry_buffer_ptr), gint(newValue))
        }
    }

    /// The contents of the buffer.
    var text: String! {
        /// Retrieves the contents of the buffer.
        /// 
        /// The memory pointer returned by this call will not change
        /// unless this object emits a signal, or is finalized.
        get {
            let rv = gtk_entry_buffer_get_text(cast(entry_buffer_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
}



// MARK: - EntryCompletion Class

/// The `EntryCompletionProtocol` protocol exposes the methods and properties of an underlying `GtkEntryCompletion` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryCompletion`.
/// Alternatively, use `EntryCompletionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkEntryCompletion` is an auxiliary object to be used in conjunction with
/// `GtkEntry` to provide the completion functionality. It implements the
/// `GtkCellLayout` interface, to allow the user to add extra cells to the
/// `GtkTreeView` with completion matches.
/// 
/// “Completion functionality” means that when the user modifies the text
/// in the entry, `GtkEntryCompletion` checks which rows in the model match
/// the current content of the entry, and displays a list of matches.
/// By default, the matching is done by comparing the entry text
/// case-insensitively against the text column of the model (see
/// `gtk_entry_completion_set_text_column()`), but this can be overridden
/// with a custom match function (see `gtk_entry_completion_set_match_func()`).
/// 
/// When the user selects a completion, the content of the entry is
/// updated. By default, the content of the entry is replaced by the
/// text column of the model, but this can be overridden by connecting
/// to the `GtkEntryCompletion::match`-selected signal and updating the
/// entry in the signal handler. Note that you should return `true` from
/// the signal handler to suppress the default behaviour.
/// 
/// To add completion functionality to an entry, use `gtk_entry_set_completion()`.
/// 
/// In addition to regular completion matches, which will be inserted into the
/// entry when they are selected, `GtkEntryCompletion` also allows to display
/// “actions” in the popup window. Their appearance is similar to menuitems,
/// to differentiate them clearly from completion strings. When an action is
/// selected, the `GtkEntryCompletion::action`-activated signal is emitted.
/// 
/// GtkEntryCompletion uses a `GtkTreeModelFilter` model to represent the
/// subset of the entire model that is currently matching. While the
/// GtkEntryCompletion signals `GtkEntryCompletion::match`-selected and
/// `GtkEntryCompletion::cursor`-on-match take the original model and an
/// iter pointing to that model as arguments, other callbacks and signals
/// (such as `GtkCellLayoutDataFuncs` or `GtkCellArea::apply`-attributes)
/// will generally take the filter model as argument. As long as you are
/// only calling `gtk_tree_model_get()`, this will make no difference to
/// you. If for some reason, you need the original model, use
/// `gtk_tree_model_filter_get_model()`. Don’t forget to use
/// `gtk_tree_model_filter_convert_iter_to_child_iter()` to obtain a
/// matching iter.
public protocol EntryCompletionProtocol: GLibObject.ObjectProtocol, BuildableProtocol, CellLayoutProtocol {
    /// Untyped pointer to the underlying `GtkEntryCompletion` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEntryCompletion` instance.
    var entry_completion_ptr: UnsafeMutablePointer<GtkEntryCompletion> { get }
}

/// The `EntryCompletionRef` type acts as a lightweight Swift reference to an underlying `GtkEntryCompletion` instance.
/// It exposes methods that can operate on this data type through `EntryCompletionProtocol` conformance.
/// Use `EntryCompletionRef` only as an `unowned` reference to an existing `GtkEntryCompletion` instance.
///
/// `GtkEntryCompletion` is an auxiliary object to be used in conjunction with
/// `GtkEntry` to provide the completion functionality. It implements the
/// `GtkCellLayout` interface, to allow the user to add extra cells to the
/// `GtkTreeView` with completion matches.
/// 
/// “Completion functionality” means that when the user modifies the text
/// in the entry, `GtkEntryCompletion` checks which rows in the model match
/// the current content of the entry, and displays a list of matches.
/// By default, the matching is done by comparing the entry text
/// case-insensitively against the text column of the model (see
/// `gtk_entry_completion_set_text_column()`), but this can be overridden
/// with a custom match function (see `gtk_entry_completion_set_match_func()`).
/// 
/// When the user selects a completion, the content of the entry is
/// updated. By default, the content of the entry is replaced by the
/// text column of the model, but this can be overridden by connecting
/// to the `GtkEntryCompletion::match`-selected signal and updating the
/// entry in the signal handler. Note that you should return `true` from
/// the signal handler to suppress the default behaviour.
/// 
/// To add completion functionality to an entry, use `gtk_entry_set_completion()`.
/// 
/// In addition to regular completion matches, which will be inserted into the
/// entry when they are selected, `GtkEntryCompletion` also allows to display
/// “actions” in the popup window. Their appearance is similar to menuitems,
/// to differentiate them clearly from completion strings. When an action is
/// selected, the `GtkEntryCompletion::action`-activated signal is emitted.
/// 
/// GtkEntryCompletion uses a `GtkTreeModelFilter` model to represent the
/// subset of the entire model that is currently matching. While the
/// GtkEntryCompletion signals `GtkEntryCompletion::match`-selected and
/// `GtkEntryCompletion::cursor`-on-match take the original model and an
/// iter pointing to that model as arguments, other callbacks and signals
/// (such as `GtkCellLayoutDataFuncs` or `GtkCellArea::apply`-attributes)
/// will generally take the filter model as argument. As long as you are
/// only calling `gtk_tree_model_get()`, this will make no difference to
/// you. If for some reason, you need the original model, use
/// `gtk_tree_model_filter_get_model()`. Don’t forget to use
/// `gtk_tree_model_filter_convert_iter_to_child_iter()` to obtain a
/// matching iter.
public struct EntryCompletionRef: EntryCompletionProtocol {
    /// Untyped pointer to the underlying `GtkEntryCompletion` instance.
    /// For type-safe access, use the generated, typed pointer `entry_completion_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EntryCompletionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEntryCompletion>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EntryCompletionProtocol`
    init<T: EntryCompletionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkEntryCompletion` object.
    init() {
        let rv = gtk_entry_completion_new()
        self.init(cast(rv))
    }

    /// Creates a new `GtkEntryCompletion` object using the
    /// specified `area` to layout cells in the underlying
    /// `GtkTreeViewColumn` for the drop-down menu.
    init(area: CellAreaProtocol) {
        let rv = gtk_entry_completion_new_with_area(cast(area.ptr))
        self.init(cast(rv))
    }
    /// Creates a new `GtkEntryCompletion` object using the
    /// specified `area` to layout cells in the underlying
    /// `GtkTreeViewColumn` for the drop-down menu.
    static func newWith(area: CellAreaProtocol) -> EntryCompletionRef! {
        let rv = gtk_entry_completion_new_with_area(cast(area.ptr))
        return rv.map { EntryCompletionRef(cast($0)) }
    }
}

/// The `EntryCompletion` type acts as a reference-counted owner of an underlying `GtkEntryCompletion` instance.
/// It provides the methods that can operate on this data type through `EntryCompletionProtocol` conformance.
/// Use `EntryCompletion` as a strong reference or owner of a `GtkEntryCompletion` instance.
///
/// `GtkEntryCompletion` is an auxiliary object to be used in conjunction with
/// `GtkEntry` to provide the completion functionality. It implements the
/// `GtkCellLayout` interface, to allow the user to add extra cells to the
/// `GtkTreeView` with completion matches.
/// 
/// “Completion functionality” means that when the user modifies the text
/// in the entry, `GtkEntryCompletion` checks which rows in the model match
/// the current content of the entry, and displays a list of matches.
/// By default, the matching is done by comparing the entry text
/// case-insensitively against the text column of the model (see
/// `gtk_entry_completion_set_text_column()`), but this can be overridden
/// with a custom match function (see `gtk_entry_completion_set_match_func()`).
/// 
/// When the user selects a completion, the content of the entry is
/// updated. By default, the content of the entry is replaced by the
/// text column of the model, but this can be overridden by connecting
/// to the `GtkEntryCompletion::match`-selected signal and updating the
/// entry in the signal handler. Note that you should return `true` from
/// the signal handler to suppress the default behaviour.
/// 
/// To add completion functionality to an entry, use `gtk_entry_set_completion()`.
/// 
/// In addition to regular completion matches, which will be inserted into the
/// entry when they are selected, `GtkEntryCompletion` also allows to display
/// “actions” in the popup window. Their appearance is similar to menuitems,
/// to differentiate them clearly from completion strings. When an action is
/// selected, the `GtkEntryCompletion::action`-activated signal is emitted.
/// 
/// GtkEntryCompletion uses a `GtkTreeModelFilter` model to represent the
/// subset of the entire model that is currently matching. While the
/// GtkEntryCompletion signals `GtkEntryCompletion::match`-selected and
/// `GtkEntryCompletion::cursor`-on-match take the original model and an
/// iter pointing to that model as arguments, other callbacks and signals
/// (such as `GtkCellLayoutDataFuncs` or `GtkCellArea::apply`-attributes)
/// will generally take the filter model as argument. As long as you are
/// only calling `gtk_tree_model_get()`, this will make no difference to
/// you. If for some reason, you need the original model, use
/// `gtk_tree_model_filter_get_model()`. Don’t forget to use
/// `gtk_tree_model_filter_convert_iter_to_child_iter()` to obtain a
/// matching iter.
open class EntryCompletion: GLibObject.Object, EntryCompletionProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EntryCompletion` instance.
    public init(_ op: UnsafeMutablePointer<GtkEntryCompletion>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `EntryCompletionProtocol`
    /// Will retain `GtkEntryCompletion`.
    public convenience init<T: EntryCompletionProtocol>(_ other: T) {
        self.init(cast(other.entry_completion_ptr))
        g_object_ref(cast(entry_completion_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEntryCompletion.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEntryCompletion.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEntryCompletion.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryCompletionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEntryCompletion>(opaquePointer))
    }

    /// Creates a new `GtkEntryCompletion` object.
    public convenience init() {
        let rv = gtk_entry_completion_new()
        self.init(cast(rv))
    }

    /// Creates a new `GtkEntryCompletion` object using the
    /// specified `area` to layout cells in the underlying
    /// `GtkTreeViewColumn` for the drop-down menu.
    public convenience init(area: CellAreaProtocol) {
        let rv = gtk_entry_completion_new_with_area(cast(area.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GtkEntryCompletion` object using the
    /// specified `area` to layout cells in the underlying
    /// `GtkTreeViewColumn` for the drop-down menu.
    public static func newWith(area: CellAreaProtocol) -> EntryCompletion! {
        let rv = gtk_entry_completion_new_with_area(cast(area.ptr))
        return rv.map { EntryCompletion(cast($0)) }
    }

}

public enum EntryCompletionPropertyName: String, PropertyNameProtocol {
    /// The `GtkCellArea` used to layout cell renderers in the treeview column.
    /// 
    /// If no area is specified when creating the entry completion with
    /// `gtk_entry_completion_new_with_area()` a horizontally oriented
    /// `GtkCellAreaBox` will be used.
    case cellArea = "cell-area"
    /// Determines whether the common prefix of the possible completions
    /// should be inserted automatically in the entry. Note that this
    /// requires text-column to be set, even if you are using a custom
    /// match function.
    case inlineCompletion = "inline-completion"
    /// Determines whether the possible completions on the popup
    /// will appear in the entry as you navigate through them.
    case inlineSelection = "inline-selection"
    case minimumKeyLength = "minimum-key-length"
    case model = "model"
    /// Determines whether the possible completions should be
    /// shown in a popup window.
    case popupCompletion = "popup-completion"
    /// Determines whether the completions popup window will be
    /// resized to the width of the entry.
    case popupSetWidth = "popup-set-width"
    /// Determines whether the completions popup window will shown
    /// for a single possible completion. You probably want to set
    /// this to `false` if you are using
    /// [inline completion](#GtkEntryCompletion--inline-completion).
    case popupSingleMatch = "popup-single-match"
    /// The column of the model containing the strings.
    /// Note that the strings must be UTF-8.
    case textColumn = "text-column"
}

public extension EntryCompletionProtocol {
    /// Bind a `EntryCompletionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EntryCompletionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(entry_completion_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum EntryCompletionSignalName: String, SignalNameProtocol {
    /// Gets emitted when an action is activated.
    case actionActivated = "action-activated"
    /// Gets emitted when a match from the cursor is on a match
    /// of the list. The default behaviour is to replace the contents
    /// of the entry with the contents of the text column in the row
    /// pointed to by `iter`.
    /// 
    /// Note that `model` is the model that was passed to
    /// `gtk_entry_completion_set_model()`.
    case cursorOnMatch = "cursor-on-match"
    /// Gets emitted when the inline autocompletion is triggered.
    /// The default behaviour is to make the entry display the
    /// whole prefix and select the newly inserted part.
    /// 
    /// Applications may connect to this signal in order to insert only a
    /// smaller part of the `prefix` into the entry - e.g. the entry used in
    /// the `GtkFileChooser` inserts only the part of the prefix up to the
    /// next '/'.
    case insertPrefix = "insert-prefix"
    /// Gets emitted when a match from the list is selected.
    /// The default behaviour is to replace the contents of the
    /// entry with the contents of the text column in the row
    /// pointed to by `iter`.
    /// 
    /// Note that `model` is the model that was passed to
    /// `gtk_entry_completion_set_model()`.
    case matchSelected = "match-selected"
    /// Gets emitted when the filter model has zero
    /// number of rows in completion_complete method.
    /// (In other words when GtkEntryCompletion is out of
    ///  suggestions)
    case noMatches = "no-matches"
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
    case notify = "notify"
    /// The `GtkCellArea` used to layout cell renderers in the treeview column.
    /// 
    /// If no area is specified when creating the entry completion with
    /// `gtk_entry_completion_new_with_area()` a horizontally oriented
    /// `GtkCellAreaBox` will be used.
    case notifyCellArea = "notify::cell-area"
    /// Determines whether the common prefix of the possible completions
    /// should be inserted automatically in the entry. Note that this
    /// requires text-column to be set, even if you are using a custom
    /// match function.
    case notifyInlineCompletion = "notify::inline-completion"
    /// Determines whether the possible completions on the popup
    /// will appear in the entry as you navigate through them.
    case notifyInlineSelection = "notify::inline-selection"
    case notifyMinimumKeyLength = "notify::minimum-key-length"
    case notifyModel = "notify::model"
    /// Determines whether the possible completions should be
    /// shown in a popup window.
    case notifyPopupCompletion = "notify::popup-completion"
    /// Determines whether the completions popup window will be
    /// resized to the width of the entry.
    case notifyPopupSetWidth = "notify::popup-set-width"
    /// Determines whether the completions popup window will shown
    /// for a single possible completion. You probably want to set
    /// this to `false` if you are using
    /// [inline completion](#GtkEntryCompletion--inline-completion).
    case notifyPopupSingleMatch = "notify::popup-single-match"
    /// The column of the model containing the strings.
    /// Note that the strings must be UTF-8.
    case notifyTextColumn = "notify::text-column"
}

public extension EntryCompletionProtocol {
    /// Connect a `EntryCompletionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: EntryCompletionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(entry_completion_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension EntryCompletionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryCompletion` instance.
    var entry_completion_ptr: UnsafeMutablePointer<GtkEntryCompletion> { return ptr.assumingMemoryBound(to: GtkEntryCompletion.self) }

    /// Requests a completion operation, or in other words a refiltering of the
    /// current list with completions, using the current key. The completion list
    /// view will be updated accordingly.
    func complete() {
        gtk_entry_completion_complete(cast(entry_completion_ptr))
    
    }

    /// Computes the common prefix that is shared by all rows in `completion`
    /// that start with `key`. If no row matches `key`, `nil` will be returned.
    /// Note that a text column must have been set for this function to work,
    /// see `gtk_entry_completion_set_text_column()` for details.
    func computePrefix(key: UnsafePointer<CChar>) -> String! {
        let rv = gtk_entry_completion_compute_prefix(cast(entry_completion_ptr), key)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Deletes the action at `index_` from `completion`’s action list.
    /// 
    /// Note that `index_` is a relative position and the position of an
    /// action may have changed since it was inserted.
    func deleteAction(index_: CInt) {
        gtk_entry_completion_delete_action(cast(entry_completion_ptr), gint(index_))
    
    }

    /// Get the original text entered by the user that triggered
    /// the completion or `nil` if there’s no completion ongoing.
    func getCompletionPrefix() -> String! {
        let rv = gtk_entry_completion_get_completion_prefix(cast(entry_completion_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the entry `completion` has been attached to.
    func getEntry() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_entry_completion_get_entry(cast(entry_completion_ptr))
        return cast(rv)
    }

    /// Returns whether the common prefix of the possible completions should
    /// be automatically inserted in the entry.
    func getInlineCompletion() -> Bool {
        let rv = gtk_entry_completion_get_inline_completion(cast(entry_completion_ptr))
        return Bool(rv != 0)
    }

    /// Returns `true` if inline-selection mode is turned on.
    func getInlineSelection() -> Bool {
        let rv = gtk_entry_completion_get_inline_selection(cast(entry_completion_ptr))
        return Bool(rv != 0)
    }

    /// Returns the minimum key length as set for `completion`.
    func getMinimumKeyLength() -> CInt {
        let rv = gtk_entry_completion_get_minimum_key_length(cast(entry_completion_ptr))
        return CInt(rv)
    }

    /// Returns the model the `GtkEntryCompletion` is using as data source.
    /// Returns `nil` if the model is unset.
    func getModel() -> UnsafeMutablePointer<GtkTreeModel>! {
        let rv = gtk_entry_completion_get_model(cast(entry_completion_ptr))
        return cast(rv)
    }

    /// Returns whether the completions should be presented in a popup window.
    func getPopupCompletion() -> Bool {
        let rv = gtk_entry_completion_get_popup_completion(cast(entry_completion_ptr))
        return Bool(rv != 0)
    }

    /// Returns whether the  completion popup window will be resized to the
    /// width of the entry.
    func getPopupSetWidth() -> Bool {
        let rv = gtk_entry_completion_get_popup_set_width(cast(entry_completion_ptr))
        return Bool(rv != 0)
    }

    /// Returns whether the completion popup window will appear even if there is
    /// only a single match.
    func getPopupSingleMatch() -> Bool {
        let rv = gtk_entry_completion_get_popup_single_match(cast(entry_completion_ptr))
        return Bool(rv != 0)
    }

    /// Returns the column in the model of `completion` to get strings from.
    func getTextColumn() -> CInt {
        let rv = gtk_entry_completion_get_text_column(cast(entry_completion_ptr))
        return CInt(rv)
    }

    /// Inserts an action in `completion`’s action item list at position `index_`
    /// with markup `markup`.
    func insertActionMarkup(index_: CInt, markup: UnsafePointer<gchar>) {
        gtk_entry_completion_insert_action_markup(cast(entry_completion_ptr), gint(index_), markup)
    
    }

    /// Inserts an action in `completion`’s action item list at position `index_`
    /// with text `text`. If you want the action item to have markup, use
    /// `gtk_entry_completion_insert_action_markup()`.
    /// 
    /// Note that `index_` is a relative position in the list of actions and
    /// the position of an action can change when deleting a different action.
    func insertActionText(index_: CInt, text: UnsafePointer<gchar>) {
        gtk_entry_completion_insert_action_text(cast(entry_completion_ptr), gint(index_), text)
    
    }

    /// Requests a prefix insertion.
    func insertPrefix() {
        gtk_entry_completion_insert_prefix(cast(entry_completion_ptr))
    
    }

    /// Sets whether the common prefix of the possible completions should
    /// be automatically inserted in the entry.
    func set(inlineCompletion inline_completion: Bool) {
        gtk_entry_completion_set_inline_completion(cast(entry_completion_ptr), gboolean(inline_completion ? 1 : 0))
    
    }

    /// Sets whether it is possible to cycle through the possible completions
    /// inside the entry.
    func set(inlineSelection inline_selection: Bool) {
        gtk_entry_completion_set_inline_selection(cast(entry_completion_ptr), gboolean(inline_selection ? 1 : 0))
    
    }

    /// Sets the match function for `completion` to be `func`. The match function
    /// is used to determine if a row should or should not be in the completion
    /// list.
    func setMatchFunc(_ func_: @escaping EntryCompletionMatchFunc, funcData func_data: UnsafeMutableRawPointer, funcNotify func_notify: @escaping GLib.DestroyNotify) {
        gtk_entry_completion_set_match_func(cast(entry_completion_ptr), func_, cast(func_data), func_notify)
    
    }

    /// Requires the length of the search key for `completion` to be at least
    /// `length`. This is useful for long lists, where completing using a small
    /// key takes a lot of time and will come up with meaningless results anyway
    /// (ie, a too large dataset).
    func setMinimumKey(length: CInt) {
        gtk_entry_completion_set_minimum_key_length(cast(entry_completion_ptr), gint(length))
    
    }

    /// Sets the model for a `GtkEntryCompletion`. If `completion` already has
    /// a model set, it will remove it before setting the new model.
    /// If model is `nil`, then it will unset the model.
    func set(model: TreeModelProtocol) {
        gtk_entry_completion_set_model(cast(entry_completion_ptr), cast(model.ptr))
    
    }

    /// Sets whether the completions should be presented in a popup window.
    func set(popupCompletion popup_completion: Bool) {
        gtk_entry_completion_set_popup_completion(cast(entry_completion_ptr), gboolean(popup_completion ? 1 : 0))
    
    }

    /// Sets whether the completion popup window will be resized to be the same
    /// width as the entry.
    func set(popupSetWidth popup_set_width: Bool) {
        gtk_entry_completion_set_popup_set_width(cast(entry_completion_ptr), gboolean(popup_set_width ? 1 : 0))
    
    }

    /// Sets whether the completion popup window will appear even if there is
    /// only a single match. You may want to set this to `false` if you
    /// are using [inline completion](#GtkEntryCompletion--inline-completion).
    func set(popupSingleMatch popup_single_match: Bool) {
        gtk_entry_completion_set_popup_single_match(cast(entry_completion_ptr), gboolean(popup_single_match ? 1 : 0))
    
    }

    /// Convenience function for setting up the most used case of this code: a
    /// completion list with just strings. This function will set up `completion`
    /// to have a list displaying all (and just) strings in the completion list,
    /// and to get those strings from `column` in the model of `completion`.
    /// 
    /// This functions creates and adds a `GtkCellRendererText` for the selected
    /// column. If you need to set the text column, but don't want the cell
    /// renderer, use `g_object_set()` to set the `GtkEntryCompletion:text`-column
    /// property directly.
    func setText(column: CInt) {
        gtk_entry_completion_set_text_column(cast(entry_completion_ptr), gint(column))
    
    }
    /// Get the original text entered by the user that triggered
    /// the completion or `nil` if there’s no completion ongoing.
    var completionPrefix: String! {
        /// Get the original text entered by the user that triggered
        /// the completion or `nil` if there’s no completion ongoing.
        get {
            let rv = gtk_entry_completion_get_completion_prefix(cast(entry_completion_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the entry `completion` has been attached to.
    var entry: UnsafeMutablePointer<GtkWidget>! {
        /// Gets the entry `completion` has been attached to.
        get {
            let rv = gtk_entry_completion_get_entry(cast(entry_completion_ptr))
            return cast(rv)
        }
    }

    /// Returns whether the common prefix of the possible completions should
    /// be automatically inserted in the entry.
    var inlineCompletion: Bool {
        /// Returns whether the common prefix of the possible completions should
        /// be automatically inserted in the entry.
        get {
            let rv = gtk_entry_completion_get_inline_completion(cast(entry_completion_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the common prefix of the possible completions should
        /// be automatically inserted in the entry.
        nonmutating set {
            gtk_entry_completion_set_inline_completion(cast(entry_completion_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns `true` if inline-selection mode is turned on.
    var inlineSelection: Bool {
        /// Returns `true` if inline-selection mode is turned on.
        get {
            let rv = gtk_entry_completion_get_inline_selection(cast(entry_completion_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether it is possible to cycle through the possible completions
        /// inside the entry.
        nonmutating set {
            gtk_entry_completion_set_inline_selection(cast(entry_completion_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the minimum key length as set for `completion`.
    var minimumKeyLength: CInt {
        /// Returns the minimum key length as set for `completion`.
        get {
            let rv = gtk_entry_completion_get_minimum_key_length(cast(entry_completion_ptr))
            return CInt(rv)
        }
        /// Requires the length of the search key for `completion` to be at least
        /// `length`. This is useful for long lists, where completing using a small
        /// key takes a lot of time and will come up with meaningless results anyway
        /// (ie, a too large dataset).
        nonmutating set {
            gtk_entry_completion_set_minimum_key_length(cast(entry_completion_ptr), gint(newValue))
        }
    }

    var model: UnsafeMutablePointer<GtkTreeModel>! {
        /// Returns the model the `GtkEntryCompletion` is using as data source.
        /// Returns `nil` if the model is unset.
        get {
            let rv = gtk_entry_completion_get_model(cast(entry_completion_ptr))
            return cast(rv)
        }
        /// Sets the model for a `GtkEntryCompletion`. If `completion` already has
        /// a model set, it will remove it before setting the new model.
        /// If model is `nil`, then it will unset the model.
        nonmutating set {
            gtk_entry_completion_set_model(cast(entry_completion_ptr), cast(newValue))
        }
    }

    /// Returns whether the completions should be presented in a popup window.
    var popupCompletion: Bool {
        /// Returns whether the completions should be presented in a popup window.
        get {
            let rv = gtk_entry_completion_get_popup_completion(cast(entry_completion_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the completions should be presented in a popup window.
        nonmutating set {
            gtk_entry_completion_set_popup_completion(cast(entry_completion_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns whether the  completion popup window will be resized to the
    /// width of the entry.
    var popupSetWidth: Bool {
        /// Returns whether the  completion popup window will be resized to the
        /// width of the entry.
        get {
            let rv = gtk_entry_completion_get_popup_set_width(cast(entry_completion_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the completion popup window will be resized to be the same
        /// width as the entry.
        nonmutating set {
            gtk_entry_completion_set_popup_set_width(cast(entry_completion_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns whether the completion popup window will appear even if there is
    /// only a single match.
    var popupSingleMatch: Bool {
        /// Returns whether the completion popup window will appear even if there is
        /// only a single match.
        get {
            let rv = gtk_entry_completion_get_popup_single_match(cast(entry_completion_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the completion popup window will appear even if there is
        /// only a single match. You may want to set this to `false` if you
        /// are using [inline completion](#GtkEntryCompletion--inline-completion).
        nonmutating set {
            gtk_entry_completion_set_popup_single_match(cast(entry_completion_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the column in the model of `completion` to get strings from.
    var textColumn: CInt {
        /// Returns the column in the model of `completion` to get strings from.
        get {
            let rv = gtk_entry_completion_get_text_column(cast(entry_completion_ptr))
            return CInt(rv)
        }
        /// Convenience function for setting up the most used case of this code: a
        /// completion list with just strings. This function will set up `completion`
        /// to have a list displaying all (and just) strings in the completion list,
        /// and to get those strings from `column` in the model of `completion`.
        /// 
        /// This functions creates and adds a `GtkCellRendererText` for the selected
        /// column. If you need to set the text column, but don't want the cell
        /// renderer, use `g_object_set()` to set the `GtkEntryCompletion:text`-column
        /// property directly.
        nonmutating set {
            gtk_entry_completion_set_text_column(cast(entry_completion_ptr), gint(newValue))
        }
    }
}



// MARK: - EntryIconAccessible Class

/// The `EntryIconAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkEntryIconAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EntryIconAccessible`.
/// Alternatively, use `EntryIconAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EntryIconAccessibleProtocol: Atk.ObjectProtocol, Atk.ActionProtocol, Atk.ComponentProtocol {
    /// Untyped pointer to the underlying `GtkEntryIconAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEntryIconAccessible` instance.
    var entry_icon_accessible_ptr: UnsafeMutablePointer<GtkEntryIconAccessible> { get }
}

/// The `EntryIconAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkEntryIconAccessible` instance.
/// It exposes methods that can operate on this data type through `EntryIconAccessibleProtocol` conformance.
/// Use `EntryIconAccessibleRef` only as an `unowned` reference to an existing `GtkEntryIconAccessible` instance.
///

public struct EntryIconAccessibleRef: EntryIconAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkEntryIconAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `entry_icon_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EntryIconAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEntryIconAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EntryIconAccessibleProtocol`
    init<T: EntryIconAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryIconAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryIconAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryIconAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryIconAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryIconAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EntryIconAccessible` type acts as a reference-counted owner of an underlying `GtkEntryIconAccessible` instance.
/// It provides the methods that can operate on this data type through `EntryIconAccessibleProtocol` conformance.
/// Use `EntryIconAccessible` as a strong reference or owner of a `GtkEntryIconAccessible` instance.
///

open class EntryIconAccessible: Atk.Object, EntryIconAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EntryIconAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkEntryIconAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `EntryIconAccessibleProtocol`
    /// Will retain ``.
    public convenience init<T: EntryIconAccessibleProtocol>(_ other: T) {
        self.init(cast(other.entry_icon_accessible_ptr))
        g_object_ref(cast(entry_icon_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryIconAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEntryIconAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryIconAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEntryIconAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryIconAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEntryIconAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryIconAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEntryIconAccessible>(opaquePointer))
    }



}

public enum EntryIconAccessiblePropertyName: String, PropertyNameProtocol {
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
}

public extension EntryIconAccessibleProtocol {
    /// Bind a `EntryIconAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EntryIconAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(entry_icon_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum EntryIconAccessibleSignalName: String, SignalNameProtocol {
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
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
    /// notifications. `AtkObject::property`-changed is needed by the
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
}

public extension EntryIconAccessibleProtocol {
    /// Connect a `EntryIconAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: EntryIconAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(entry_icon_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension EntryIconAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntryIconAccessible` instance.
    var entry_icon_accessible_ptr: UnsafeMutablePointer<GtkEntryIconAccessible> { return ptr.assumingMemoryBound(to: GtkEntryIconAccessible.self) }

}



// MARK: - EventBox Class

/// The `EventBoxProtocol` protocol exposes the methods and properties of an underlying `GtkEventBox` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventBox`.
/// Alternatively, use `EventBoxRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkEventBox` widget is a subclass of `GtkBin` which also has its
/// own window. It is useful since it allows you to catch events for widgets
/// which do not have their own window.
public protocol EventBoxProtocol: BinProtocol {
    /// Untyped pointer to the underlying `GtkEventBox` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEventBox` instance.
    var event_box_ptr: UnsafeMutablePointer<GtkEventBox> { get }
}

/// The `EventBoxRef` type acts as a lightweight Swift reference to an underlying `GtkEventBox` instance.
/// It exposes methods that can operate on this data type through `EventBoxProtocol` conformance.
/// Use `EventBoxRef` only as an `unowned` reference to an existing `GtkEventBox` instance.
///
/// The `GtkEventBox` widget is a subclass of `GtkBin` which also has its
/// own window. It is useful since it allows you to catch events for widgets
/// which do not have their own window.
public struct EventBoxRef: EventBoxProtocol {
    /// Untyped pointer to the underlying `GtkEventBox` instance.
    /// For type-safe access, use the generated, typed pointer `event_box_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventBoxRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEventBox>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventBoxProtocol`
    init<T: EventBoxProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkEventBox`.
    init() {
        let rv = gtk_event_box_new()
        self.init(cast(rv))
    }
}

/// The `EventBox` type acts as a reference-counted owner of an underlying `GtkEventBox` instance.
/// It provides the methods that can operate on this data type through `EventBoxProtocol` conformance.
/// Use `EventBox` as a strong reference or owner of a `GtkEventBox` instance.
///
/// The `GtkEventBox` widget is a subclass of `GtkBin` which also has its
/// own window. It is useful since it allows you to catch events for widgets
/// which do not have their own window.
open class EventBox: Bin, EventBoxProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EventBox` instance.
    public init(_ op: UnsafeMutablePointer<GtkEventBox>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `EventBoxProtocol`
    /// Will retain `GtkEventBox`.
    public convenience init<T: EventBoxProtocol>(_ other: T) {
        self.init(cast(other.event_box_ptr))
        g_object_ref(cast(event_box_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEventBox.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEventBox.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEventBox.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventBoxProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEventBox>(opaquePointer))
    }

    /// Creates a new `GtkEventBox`.
    public convenience init() {
        let rv = gtk_event_box_new()
        self.init(cast(rv))
    }


}

public enum EventBoxPropertyName: String, PropertyNameProtocol {
    case aboveChild = "above-child"
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
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
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
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
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
    case visibleWindow = "visible-window"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension EventBoxProtocol {
    /// Bind a `EventBoxPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EventBoxPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(event_box_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum EventBoxSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
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
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
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
    /// The `delete`-event signal is emitted if a user requests that
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
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
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
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
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
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
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
    /// The `enter`-notify-event will be emitted when the pointer enters
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
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
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
    /// The `grab`-notify signal is emitted when a widget becomes
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
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
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
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent`-set signal is emitted when a new parent
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
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The `property`-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
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
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
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
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
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
    /// The `visibility`-notify-event will be emitted when the `widget`'s
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
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    case notifyAboveChild = "notify::above-child"
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
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
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
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
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
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
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
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyVisibleWindow = "notify::visible-window"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension EventBoxProtocol {
    /// Connect a `EventBoxSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: EventBoxSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(event_box_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension EventBoxProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventBox` instance.
    var event_box_ptr: UnsafeMutablePointer<GtkEventBox> { return ptr.assumingMemoryBound(to: GtkEventBox.self) }

    /// Returns whether the event box window is above or below the
    /// windows of its child. See `gtk_event_box_set_above_child()`
    /// for details.
    func getAboveChild() -> Bool {
        let rv = gtk_event_box_get_above_child(cast(event_box_ptr))
        return Bool(rv != 0)
    }

    /// Returns whether the event box has a visible window.
    /// See `gtk_event_box_set_visible_window()` for details.
    func getVisibleWindow() -> Bool {
        let rv = gtk_event_box_get_visible_window(cast(event_box_ptr))
        return Bool(rv != 0)
    }

    /// Set whether the event box window is positioned above the windows
    /// of its child, as opposed to below it. If the window is above, all
    /// events inside the event box will go to the event box. If the window
    /// is below, events in windows of child widgets will first got to that
    /// widget, and then to its parents.
    /// 
    /// The default is to keep the window below the child.
    func set(aboveChild above_child: Bool) {
        gtk_event_box_set_above_child(cast(event_box_ptr), gboolean(above_child ? 1 : 0))
    
    }

    /// Set whether the event box uses a visible or invisible child
    /// window. The default is to use visible windows.
    /// 
    /// In an invisible window event box, the window that the
    /// event box creates is a `GDK_INPUT_ONLY` window, which
    /// means that it is invisible and only serves to receive
    /// events.
    /// 
    /// A visible window event box creates a visible (`GDK_INPUT_OUTPUT`)
    /// window that acts as the parent window for all the widgets
    /// contained in the event box.
    /// 
    /// You should generally make your event box invisible if
    /// you just want to trap events. Creating a visible window
    /// may cause artifacts that are visible to the user, especially
    /// if the user is using a theme with gradients or pixmaps.
    /// 
    /// The main reason to create a non input-only event box is if
    /// you want to set the background to a different color or
    /// draw on it.
    /// 
    /// There is one unexpected issue for an invisible event box that has its
    /// window below the child. (See `gtk_event_box_set_above_child()`.)
    /// Since the input-only window is not an ancestor window of any windows
    /// that descendent widgets of the event box create, events on these
    /// windows aren’t propagated up by the windowing system, but only by GTK+.
    /// The practical effect of this is if an event isn’t in the event
    /// mask for the descendant window (see `gtk_widget_add_events()`),
    /// it won’t be received by the event box.
    /// 
    /// This problem doesn’t occur for visible event boxes, because in
    /// that case, the event box window is actually the ancestor of the
    /// descendant windows, not just at the same place on the screen.
    func set(visibleWindow visible_window: Bool) {
        gtk_event_box_set_visible_window(cast(event_box_ptr), gboolean(visible_window ? 1 : 0))
    
    }
    /// Returns whether the event box window is above or below the
    /// windows of its child. See `gtk_event_box_set_above_child()`
    /// for details.
    var aboveChild: Bool {
        /// Returns whether the event box window is above or below the
        /// windows of its child. See `gtk_event_box_set_above_child()`
        /// for details.
        get {
            let rv = gtk_event_box_get_above_child(cast(event_box_ptr))
            return Bool(rv != 0)
        }
        /// Set whether the event box window is positioned above the windows
        /// of its child, as opposed to below it. If the window is above, all
        /// events inside the event box will go to the event box. If the window
        /// is below, events in windows of child widgets will first got to that
        /// widget, and then to its parents.
        /// 
        /// The default is to keep the window below the child.
        nonmutating set {
            gtk_event_box_set_above_child(cast(event_box_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns whether the event box has a visible window.
    /// See `gtk_event_box_set_visible_window()` for details.
    var visibleWindow: Bool {
        /// Returns whether the event box has a visible window.
        /// See `gtk_event_box_set_visible_window()` for details.
        get {
            let rv = gtk_event_box_get_visible_window(cast(event_box_ptr))
            return Bool(rv != 0)
        }
        /// Set whether the event box uses a visible or invisible child
        /// window. The default is to use visible windows.
        /// 
        /// In an invisible window event box, the window that the
        /// event box creates is a `GDK_INPUT_ONLY` window, which
        /// means that it is invisible and only serves to receive
        /// events.
        /// 
        /// A visible window event box creates a visible (`GDK_INPUT_OUTPUT`)
        /// window that acts as the parent window for all the widgets
        /// contained in the event box.
        /// 
        /// You should generally make your event box invisible if
        /// you just want to trap events. Creating a visible window
        /// may cause artifacts that are visible to the user, especially
        /// if the user is using a theme with gradients or pixmaps.
        /// 
        /// The main reason to create a non input-only event box is if
        /// you want to set the background to a different color or
        /// draw on it.
        /// 
        /// There is one unexpected issue for an invisible event box that has its
        /// window below the child. (See `gtk_event_box_set_above_child()`.)
        /// Since the input-only window is not an ancestor window of any windows
        /// that descendent widgets of the event box create, events on these
        /// windows aren’t propagated up by the windowing system, but only by GTK+.
        /// The practical effect of this is if an event isn’t in the event
        /// mask for the descendant window (see `gtk_widget_add_events()`),
        /// it won’t be received by the event box.
        /// 
        /// This problem doesn’t occur for visible event boxes, because in
        /// that case, the event box window is actually the ancestor of the
        /// descendant windows, not just at the same place on the screen.
        nonmutating set {
            gtk_event_box_set_visible_window(cast(event_box_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



// MARK: - EventController Class

/// The `EventControllerProtocol` protocol exposes the methods and properties of an underlying `GtkEventController` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventController`.
/// Alternatively, use `EventControllerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkEventController` is a base, low-level implementation for event
/// controllers. Those react to a series of `GdkEvents`, and possibly trigger
/// actions as a consequence of those.
public protocol EventControllerProtocol: GLibObject.ObjectProtocol {
    /// Untyped pointer to the underlying `GtkEventController` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEventController` instance.
    var event_controller_ptr: UnsafeMutablePointer<GtkEventController> { get }
}

/// The `EventControllerRef` type acts as a lightweight Swift reference to an underlying `GtkEventController` instance.
/// It exposes methods that can operate on this data type through `EventControllerProtocol` conformance.
/// Use `EventControllerRef` only as an `unowned` reference to an existing `GtkEventController` instance.
///
/// `GtkEventController` is a base, low-level implementation for event
/// controllers. Those react to a series of `GdkEvents`, and possibly trigger
/// actions as a consequence of those.
public struct EventControllerRef: EventControllerProtocol {
    /// Untyped pointer to the underlying `GtkEventController` instance.
    /// For type-safe access, use the generated, typed pointer `event_controller_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventControllerRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEventController>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventControllerProtocol`
    init<T: EventControllerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventController` type acts as a reference-counted owner of an underlying `GtkEventController` instance.
/// It provides the methods that can operate on this data type through `EventControllerProtocol` conformance.
/// Use `EventController` as a strong reference or owner of a `GtkEventController` instance.
///
/// `GtkEventController` is a base, low-level implementation for event
/// controllers. Those react to a series of `GdkEvents`, and possibly trigger
/// actions as a consequence of those.
open class EventController: GLibObject.Object, EventControllerProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EventController` instance.
    public init(_ op: UnsafeMutablePointer<GtkEventController>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `EventControllerProtocol`
    /// Will retain `GtkEventController`.
    public convenience init<T: EventControllerProtocol>(_ other: T) {
        self.init(cast(other.event_controller_ptr))
        g_object_ref(cast(event_controller_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEventController.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEventController.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEventController.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEventController>(opaquePointer))
    }



}

public enum EventControllerPropertyName: String, PropertyNameProtocol {
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
}

public extension EventControllerProtocol {
    /// Bind a `EventControllerPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EventControllerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(event_controller_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum EventControllerSignalName: String, SignalNameProtocol {
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
    case notify = "notify"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

public extension EventControllerProtocol {
    /// Connect a `EventControllerSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: EventControllerSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(event_controller_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension EventControllerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventController` instance.
    var event_controller_ptr: UnsafeMutablePointer<GtkEventController> { return ptr.assumingMemoryBound(to: GtkEventController.self) }

    /// Gets the propagation phase at which `controller` handles events.
    func getPropagationPhase() -> GtkPropagationPhase {
        let rv = gtk_event_controller_get_propagation_phase(cast(event_controller_ptr))
        return rv
    }

    /// Returns the `GtkWidget` this controller relates to.
    func getWidget() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_event_controller_get_widget(cast(event_controller_ptr))
        return cast(rv)
    }

    /// Feeds an events into `controller`, so it can be interpreted
    /// and the controller actions triggered.
    func handle(event: UnsafePointer<GdkEvent>) -> Bool {
        let rv = gtk_event_controller_handle_event(cast(event_controller_ptr), cast(event))
        return Bool(rv != 0)
    }

    /// Resets the `controller` to a clean state. Every interaction
    /// the controller did through `GtkEventController::handle`-event
    /// will be dropped at this point.
    func reset() {
        gtk_event_controller_reset(cast(event_controller_ptr))
    
    }

    /// Sets the propagation phase at which a controller handles events.
    /// 
    /// If `phase` is `GTK_PHASE_NONE`, no automatic event handling will be
    /// performed, but other additional gesture maintenance will. In that phase,
    /// the events can be managed by calling `gtk_event_controller_handle_event()`.
    func setPropagation(phase: PropagationPhase) {
        gtk_event_controller_set_propagation_phase(cast(event_controller_ptr), phase)
    
    }
    /// Gets the propagation phase at which `controller` handles events.
    var propagationPhase: GtkPropagationPhase {
        /// Gets the propagation phase at which `controller` handles events.
        get {
            let rv = gtk_event_controller_get_propagation_phase(cast(event_controller_ptr))
            return rv
        }
        /// Sets the propagation phase at which a controller handles events.
        /// 
        /// If `phase` is `GTK_PHASE_NONE`, no automatic event handling will be
        /// performed, but other additional gesture maintenance will. In that phase,
        /// the events can be managed by calling `gtk_event_controller_handle_event()`.
        nonmutating set {
            gtk_event_controller_set_propagation_phase(cast(event_controller_ptr), newValue)
        }
    }

    /// The widget receiving the `GdkEvents` that the controller will handle.
    var widget: UnsafeMutablePointer<GtkWidget>! {
        /// Returns the `GtkWidget` this controller relates to.
        get {
            let rv = gtk_event_controller_get_widget(cast(event_controller_ptr))
            return cast(rv)
        }
    }
}



// MARK: - EventControllerKey Class

/// The `EventControllerKeyProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerKey` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerKey`.
/// Alternatively, use `EventControllerKeyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkEventControllerKey` is an event controller meant for situations
/// where you need access to key events.
/// 
/// This object was added in 3.24.
public protocol EventControllerKeyProtocol: EventControllerProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerKey` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEventControllerKey` instance.
    var event_controller_key_ptr: UnsafeMutablePointer<GtkEventControllerKey> { get }
}

/// The `EventControllerKeyRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerKey` instance.
/// It exposes methods that can operate on this data type through `EventControllerKeyProtocol` conformance.
/// Use `EventControllerKeyRef` only as an `unowned` reference to an existing `GtkEventControllerKey` instance.
///
/// `GtkEventControllerKey` is an event controller meant for situations
/// where you need access to key events.
/// 
/// This object was added in 3.24.
public struct EventControllerKeyRef: EventControllerKeyProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerKey` instance.
    /// For type-safe access, use the generated, typed pointer `event_controller_key_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventControllerKeyRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEventControllerKey>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventControllerKeyProtocol`
    init<T: EventControllerKeyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        init( widget: WidgetProtocol) {
        let rv = gtk_event_controller_key_new(cast(widget.ptr))
        self.init(cast(rv))
    }
}

/// The `EventControllerKey` type acts as a reference-counted owner of an underlying `GtkEventControllerKey` instance.
/// It provides the methods that can operate on this data type through `EventControllerKeyProtocol` conformance.
/// Use `EventControllerKey` as a strong reference or owner of a `GtkEventControllerKey` instance.
///
/// `GtkEventControllerKey` is an event controller meant for situations
/// where you need access to key events.
/// 
/// This object was added in 3.24.
open class EventControllerKey: EventController, EventControllerKeyProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EventControllerKey` instance.
    public init(_ op: UnsafeMutablePointer<GtkEventControllerKey>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `EventControllerKeyProtocol`
    /// Will retain `GtkEventControllerKey`.
    public convenience init<T: EventControllerKeyProtocol>(_ other: T) {
        self.init(cast(other.event_controller_key_ptr))
        g_object_ref(cast(event_controller_key_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEventControllerKey.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEventControllerKey.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEventControllerKey.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerKeyProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEventControllerKey>(opaquePointer))
    }

    public convenience init( widget: WidgetProtocol) {
        let rv = gtk_event_controller_key_new(cast(widget.ptr))
        self.init(cast(rv))
    }


}

public enum EventControllerKeyPropertyName: String, PropertyNameProtocol {
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
}

public extension EventControllerKeyProtocol {
    /// Bind a `EventControllerKeyPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EventControllerKeyPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(event_controller_key_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum EventControllerKeySignalName: String, SignalNameProtocol {
    case focusIn = "focus-in"
    case focusOut = "focus-out"
    case imUpdate = "im-update"
    /// This signal is emitted whenever a key is pressed.
    case keyPressed = "key-pressed"
    /// This signal is emitted whenever a key is released.
    case keyReleased = "key-released"
    case modifiers = "modifiers"
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
    case notify = "notify"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

public extension EventControllerKeyProtocol {
    /// Connect a `EventControllerKeySignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: EventControllerKeySignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(event_controller_key_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension EventControllerKeyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerKey` instance.
    var event_controller_key_ptr: UnsafeMutablePointer<GtkEventControllerKey> { return ptr.assumingMemoryBound(to: GtkEventControllerKey.self) }

    func forward(widget: WidgetProtocol) -> Bool {
        let rv = gtk_event_controller_key_forward(cast(event_controller_key_ptr), cast(widget.ptr))
        return Bool(rv != 0)
    }

    func getGroup() -> CUnsignedInt {
        let rv = gtk_event_controller_key_get_group(cast(event_controller_key_ptr))
        return CUnsignedInt(rv)
    }

    /// Gets the IM context of a key controller.
    func getImContext() -> UnsafeMutablePointer<GtkIMContext>! {
        let rv = gtk_event_controller_key_get_im_context(cast(event_controller_key_ptr))
        return cast(rv)
    }

    func set(imContext im_context: IMContextProtocol) {
        gtk_event_controller_key_set_im_context(cast(event_controller_key_ptr), cast(im_context.ptr))
    
    }
    var group: CUnsignedInt {
        get {
            let rv = gtk_event_controller_key_get_group(cast(event_controller_key_ptr))
            return CUnsignedInt(rv)
        }
    }

    /// Gets the IM context of a key controller.
    var imContext: UnsafeMutablePointer<GtkIMContext>! {
        /// Gets the IM context of a key controller.
        get {
            let rv = gtk_event_controller_key_get_im_context(cast(event_controller_key_ptr))
            return cast(rv)
        }
        nonmutating set {
            gtk_event_controller_key_set_im_context(cast(event_controller_key_ptr), cast(newValue))
        }
    }
}



// MARK: - EventControllerMotion Class

/// The `EventControllerMotionProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerMotion` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerMotion`.
/// Alternatively, use `EventControllerMotionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkEventControllerMotion` is an event controller meant for situations
/// where you need to track the position of the pointer.
/// 
/// This object was added in 3.24.
public protocol EventControllerMotionProtocol: EventControllerProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerMotion` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEventControllerMotion` instance.
    var event_controller_motion_ptr: UnsafeMutablePointer<GtkEventControllerMotion> { get }
}

/// The `EventControllerMotionRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerMotion` instance.
/// It exposes methods that can operate on this data type through `EventControllerMotionProtocol` conformance.
/// Use `EventControllerMotionRef` only as an `unowned` reference to an existing `GtkEventControllerMotion` instance.
///
/// `GtkEventControllerMotion` is an event controller meant for situations
/// where you need to track the position of the pointer.
/// 
/// This object was added in 3.24.
public struct EventControllerMotionRef: EventControllerMotionProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerMotion` instance.
    /// For type-safe access, use the generated, typed pointer `event_controller_motion_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventControllerMotionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEventControllerMotion>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventControllerMotionProtocol`
    init<T: EventControllerMotionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new event controller that will handle motion events
    /// for the given `widget`.
    init( widget: WidgetProtocol) {
        let rv = gtk_event_controller_motion_new(cast(widget.ptr))
        self.init(cast(rv))
    }
}

/// The `EventControllerMotion` type acts as a reference-counted owner of an underlying `GtkEventControllerMotion` instance.
/// It provides the methods that can operate on this data type through `EventControllerMotionProtocol` conformance.
/// Use `EventControllerMotion` as a strong reference or owner of a `GtkEventControllerMotion` instance.
///
/// `GtkEventControllerMotion` is an event controller meant for situations
/// where you need to track the position of the pointer.
/// 
/// This object was added in 3.24.
open class EventControllerMotion: EventController, EventControllerMotionProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EventControllerMotion` instance.
    public init(_ op: UnsafeMutablePointer<GtkEventControllerMotion>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `EventControllerMotionProtocol`
    /// Will retain `GtkEventControllerMotion`.
    public convenience init<T: EventControllerMotionProtocol>(_ other: T) {
        self.init(cast(other.event_controller_motion_ptr))
        g_object_ref(cast(event_controller_motion_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEventControllerMotion.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEventControllerMotion.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEventControllerMotion.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerMotionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEventControllerMotion>(opaquePointer))
    }

    /// Creates a new event controller that will handle motion events
    /// for the given `widget`.
    public convenience init( widget: WidgetProtocol) {
        let rv = gtk_event_controller_motion_new(cast(widget.ptr))
        self.init(cast(rv))
    }


}

public enum EventControllerMotionPropertyName: String, PropertyNameProtocol {
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
}

public extension EventControllerMotionProtocol {
    /// Bind a `EventControllerMotionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EventControllerMotionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(event_controller_motion_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum EventControllerMotionSignalName: String, SignalNameProtocol {
    /// Signals that the pointer has entered the widget.
    case enter = "enter"
    /// Signals that pointer has left the widget.
    case leave = "leave"
    /// Emitted when the pointer moves inside the widget.
    case motion = "motion"
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
    case notify = "notify"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

public extension EventControllerMotionProtocol {
    /// Connect a `EventControllerMotionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: EventControllerMotionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(event_controller_motion_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension EventControllerMotionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerMotion` instance.
    var event_controller_motion_ptr: UnsafeMutablePointer<GtkEventControllerMotion> { return ptr.assumingMemoryBound(to: GtkEventControllerMotion.self) }

}



// MARK: - EventControllerScroll Class

/// The `EventControllerScrollProtocol` protocol exposes the methods and properties of an underlying `GtkEventControllerScroll` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventControllerScroll`.
/// Alternatively, use `EventControllerScrollRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkEventControllerScroll` is an event controller meant to handle
/// scroll events from mice and touchpads. It is capable of handling
/// both discrete and continuous scroll events, abstracting them both
/// on the `GtkEventControllerScroll::scroll` signal (deltas in the
/// discrete case are multiples of 1).
/// 
/// In the case of continuous scroll events, `GtkEventControllerScroll`
/// encloses all `GtkEventControllerScroll::scroll` events between two
/// `GtkEventControllerScroll::scroll`-begin and `GtkEventControllerScroll::scroll`-end
/// signals.
/// 
/// The behavior of the event controller can be modified by the
/// flags given at creation time, or modified at a later point through
/// `gtk_event_controller_scroll_set_flags()` (e.g. because the scrolling
/// conditions of the widget changed).
/// 
/// The controller can be set up to emit motion for either/both vertical
/// and horizontal scroll events through `GTK_EVENT_CONTROLLER_SCROLL_VERTICAL`,
/// `GTK_EVENT_CONTROLLER_SCROLL_HORIZONTAL` and `GTK_EVENT_CONTROLLER_SCROLL_BOTH`.
/// If any axis is disabled, the respective `GtkEventControllerScroll::scroll`
/// delta will be 0. Vertical scroll events will be translated to horizontal
/// motion for the devices incapable of horizontal scrolling.
/// 
/// The event controller can also be forced to emit discrete events on all devices
/// through `GTK_EVENT_CONTROLLER_SCROLL_DISCRETE`. This can be used to implement
/// discrete actions triggered through scroll events (e.g. switching across
/// combobox options).
/// 
/// The `GTK_EVENT_CONTROLLER_SCROLL_KINETIC` flag toggles the emission of the
/// `GtkEventControllerScroll::decelerate` signal, emitted at the end of scrolling
/// with two X/Y velocity arguments that are consistent with the motion that
/// was received.
/// 
/// This object was added in 3.24.
public protocol EventControllerScrollProtocol: EventControllerProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerScroll` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEventControllerScroll` instance.
    var event_controller_scroll_ptr: UnsafeMutablePointer<GtkEventControllerScroll> { get }
}

/// The `EventControllerScrollRef` type acts as a lightweight Swift reference to an underlying `GtkEventControllerScroll` instance.
/// It exposes methods that can operate on this data type through `EventControllerScrollProtocol` conformance.
/// Use `EventControllerScrollRef` only as an `unowned` reference to an existing `GtkEventControllerScroll` instance.
///
/// `GtkEventControllerScroll` is an event controller meant to handle
/// scroll events from mice and touchpads. It is capable of handling
/// both discrete and continuous scroll events, abstracting them both
/// on the `GtkEventControllerScroll::scroll` signal (deltas in the
/// discrete case are multiples of 1).
/// 
/// In the case of continuous scroll events, `GtkEventControllerScroll`
/// encloses all `GtkEventControllerScroll::scroll` events between two
/// `GtkEventControllerScroll::scroll`-begin and `GtkEventControllerScroll::scroll`-end
/// signals.
/// 
/// The behavior of the event controller can be modified by the
/// flags given at creation time, or modified at a later point through
/// `gtk_event_controller_scroll_set_flags()` (e.g. because the scrolling
/// conditions of the widget changed).
/// 
/// The controller can be set up to emit motion for either/both vertical
/// and horizontal scroll events through `GTK_EVENT_CONTROLLER_SCROLL_VERTICAL`,
/// `GTK_EVENT_CONTROLLER_SCROLL_HORIZONTAL` and `GTK_EVENT_CONTROLLER_SCROLL_BOTH`.
/// If any axis is disabled, the respective `GtkEventControllerScroll::scroll`
/// delta will be 0. Vertical scroll events will be translated to horizontal
/// motion for the devices incapable of horizontal scrolling.
/// 
/// The event controller can also be forced to emit discrete events on all devices
/// through `GTK_EVENT_CONTROLLER_SCROLL_DISCRETE`. This can be used to implement
/// discrete actions triggered through scroll events (e.g. switching across
/// combobox options).
/// 
/// The `GTK_EVENT_CONTROLLER_SCROLL_KINETIC` flag toggles the emission of the
/// `GtkEventControllerScroll::decelerate` signal, emitted at the end of scrolling
/// with two X/Y velocity arguments that are consistent with the motion that
/// was received.
/// 
/// This object was added in 3.24.
public struct EventControllerScrollRef: EventControllerScrollProtocol {
    /// Untyped pointer to the underlying `GtkEventControllerScroll` instance.
    /// For type-safe access, use the generated, typed pointer `event_controller_scroll_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventControllerScrollRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEventControllerScroll>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventControllerScrollProtocol`
    init<T: EventControllerScrollProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new event controller that will handle scroll events
    /// for the given `widget`.
    init( widget: WidgetProtocol, flags: EventControllerScrollFlags) {
        let rv = gtk_event_controller_scroll_new(cast(widget.ptr), flags)
        self.init(cast(rv))
    }
}

/// The `EventControllerScroll` type acts as a reference-counted owner of an underlying `GtkEventControllerScroll` instance.
/// It provides the methods that can operate on this data type through `EventControllerScrollProtocol` conformance.
/// Use `EventControllerScroll` as a strong reference or owner of a `GtkEventControllerScroll` instance.
///
/// `GtkEventControllerScroll` is an event controller meant to handle
/// scroll events from mice and touchpads. It is capable of handling
/// both discrete and continuous scroll events, abstracting them both
/// on the `GtkEventControllerScroll::scroll` signal (deltas in the
/// discrete case are multiples of 1).
/// 
/// In the case of continuous scroll events, `GtkEventControllerScroll`
/// encloses all `GtkEventControllerScroll::scroll` events between two
/// `GtkEventControllerScroll::scroll`-begin and `GtkEventControllerScroll::scroll`-end
/// signals.
/// 
/// The behavior of the event controller can be modified by the
/// flags given at creation time, or modified at a later point through
/// `gtk_event_controller_scroll_set_flags()` (e.g. because the scrolling
/// conditions of the widget changed).
/// 
/// The controller can be set up to emit motion for either/both vertical
/// and horizontal scroll events through `GTK_EVENT_CONTROLLER_SCROLL_VERTICAL`,
/// `GTK_EVENT_CONTROLLER_SCROLL_HORIZONTAL` and `GTK_EVENT_CONTROLLER_SCROLL_BOTH`.
/// If any axis is disabled, the respective `GtkEventControllerScroll::scroll`
/// delta will be 0. Vertical scroll events will be translated to horizontal
/// motion for the devices incapable of horizontal scrolling.
/// 
/// The event controller can also be forced to emit discrete events on all devices
/// through `GTK_EVENT_CONTROLLER_SCROLL_DISCRETE`. This can be used to implement
/// discrete actions triggered through scroll events (e.g. switching across
/// combobox options).
/// 
/// The `GTK_EVENT_CONTROLLER_SCROLL_KINETIC` flag toggles the emission of the
/// `GtkEventControllerScroll::decelerate` signal, emitted at the end of scrolling
/// with two X/Y velocity arguments that are consistent with the motion that
/// was received.
/// 
/// This object was added in 3.24.
open class EventControllerScroll: EventController, EventControllerScrollProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EventControllerScroll` instance.
    public init(_ op: UnsafeMutablePointer<GtkEventControllerScroll>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `EventControllerScrollProtocol`
    /// Will retain `GtkEventControllerScroll`.
    public convenience init<T: EventControllerScrollProtocol>(_ other: T) {
        self.init(cast(other.event_controller_scroll_ptr))
        g_object_ref(cast(event_controller_scroll_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEventControllerScroll.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEventControllerScroll.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEventControllerScroll.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventControllerScrollProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEventControllerScroll>(opaquePointer))
    }

    /// Creates a new event controller that will handle scroll events
    /// for the given `widget`.
    public convenience init( widget: WidgetProtocol, flags: EventControllerScrollFlags) {
        let rv = gtk_event_controller_scroll_new(cast(widget.ptr), flags)
        self.init(cast(rv))
    }


}

public enum EventControllerScrollPropertyName: String, PropertyNameProtocol {
    /// The flags affecting event controller behavior
    case flags = "flags"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
}

public extension EventControllerScrollProtocol {
    /// Bind a `EventControllerScrollPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EventControllerScrollPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(event_controller_scroll_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum EventControllerScrollSignalName: String, SignalNameProtocol {
    /// Emitted after scroll is finished if the `GTK_EVENT_CONTROLLER_SCROLL_KINETIC`
    /// flag is set. `vel_x` and `vel_y` express the initial velocity that was
    /// imprinted by the scroll events. `vel_x` and `vel_y` are expressed in
    /// pixels/ms.
    case decelerate = "decelerate"
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
    case notify = "notify"
    /// Signals that the widget should scroll by the
    /// amount specified by `dx` and `dy`.
    case scroll = "scroll"
    /// Signals that a new scrolling operation has begun. It will
    /// only be emitted on devices capable of it.
    case scrollBegin = "scroll-begin"
    /// Signals that a new scrolling operation has finished. It will
    /// only be emitted on devices capable of it.
    case scrollEnd = "scroll-end"
    /// The flags affecting event controller behavior
    case notifyFlags = "notify::flags"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

public extension EventControllerScrollProtocol {
    /// Connect a `EventControllerScrollSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: EventControllerScrollSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(event_controller_scroll_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension EventControllerScrollProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEventControllerScroll` instance.
    var event_controller_scroll_ptr: UnsafeMutablePointer<GtkEventControllerScroll> { return ptr.assumingMemoryBound(to: GtkEventControllerScroll.self) }

    /// Gets the flags conditioning the scroll controller behavior.
    func getFlags() -> GtkEventControllerScrollFlags {
        let rv = gtk_event_controller_scroll_get_flags(cast(event_controller_scroll_ptr))
        return rv
    }

    /// Sets the flags conditioning scroll controller behavior.
    func set(flags: EventControllerScrollFlags) {
        gtk_event_controller_scroll_set_flags(cast(event_controller_scroll_ptr), flags)
    
    }
    /// The flags affecting event controller behavior
    var flags: GtkEventControllerScrollFlags {
        /// Gets the flags conditioning the scroll controller behavior.
        get {
            let rv = gtk_event_controller_scroll_get_flags(cast(event_controller_scroll_ptr))
            return rv
        }
        /// Sets the flags conditioning scroll controller behavior.
        nonmutating set {
            gtk_event_controller_scroll_set_flags(cast(event_controller_scroll_ptr), newValue)
        }
    }
}



// MARK: - Expander Class

/// The `ExpanderProtocol` protocol exposes the methods and properties of an underlying `GtkExpander` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Expander`.
/// Alternatively, use `ExpanderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkExpander` allows the user to hide or show its child by clicking
/// on an expander triangle similar to the triangles used in a `GtkTreeView`.
/// 
/// Normally you use an expander as you would use any other descendant
/// of `GtkBin`; you create the child widget and use `gtk_container_add()`
/// to add it to the expander. When the expander is toggled, it will take
/// care of showing and hiding the child automatically.
/// 
/// # Special Usage
/// 
/// There are situations in which you may prefer to show and hide the
/// expanded widget yourself, such as when you want to actually create
/// the widget at expansion time. In this case, create a `GtkExpander`
/// but do not add a child to it. The expander widget has an
/// `GtkExpander:expanded` property which can be used to monitor
/// its expansion state. You should watch this property with a signal
/// connection as follows:
/// 
/// (C Language Example):
/// ```C
/// static void
/// expander_callback (GObject    *object,
///                    GParamSpec *param_spec,
///                    gpointer    user_data)
/// {
///   GtkExpander *expander;
/// 
///   expander = GTK_EXPANDER (object);
/// 
///   if (gtk_expander_get_expanded (expander))
///     {
///       // Show or create widgets
///     }
///   else
///     {
///       // Hide or destroy widgets
///     }
/// }
/// 
/// static void
/// create_expander (void)
/// {
///   GtkWidget *expander = gtk_expander_new_with_mnemonic ("_More Options");
///   g_signal_connect (expander, "notify::expanded",
///                     G_CALLBACK (expander_callback), NULL);
/// 
///   // ...
/// }
/// ```
/// 
/// # GtkExpander as GtkBuildable
/// 
/// The GtkExpander implementation of the GtkBuildable interface supports
/// placing a child in the label position by specifying “label” as the
/// “type” attribute of a <child> element. A normal content child can be
/// specified without specifying a <child> type attribute.
/// 
/// An example of a UI definition fragment with GtkExpander:
/// ```
/// <object class="GtkExpander">
///   <child type="label">
///     <object class="GtkLabel" id="expander-label"/>
///   </child>
///   <child>
///     <object class="GtkEntry" id="expander-content"/>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// expander
/// ├── title
/// │   ├── arrow
/// │   ╰── <label widget>
/// ╰── <child>
/// ```
/// 
/// GtkExpander has three CSS nodes, the main node with the name expander,
/// a subnode with name title and node below it with name arrow. The arrow of an
/// expander that is showing its child gets the :checked pseudoclass added to it.
public protocol ExpanderProtocol: BinProtocol {
    /// Untyped pointer to the underlying `GtkExpander` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkExpander` instance.
    var expander_ptr: UnsafeMutablePointer<GtkExpander> { get }
}

/// The `ExpanderRef` type acts as a lightweight Swift reference to an underlying `GtkExpander` instance.
/// It exposes methods that can operate on this data type through `ExpanderProtocol` conformance.
/// Use `ExpanderRef` only as an `unowned` reference to an existing `GtkExpander` instance.
///
/// A `GtkExpander` allows the user to hide or show its child by clicking
/// on an expander triangle similar to the triangles used in a `GtkTreeView`.
/// 
/// Normally you use an expander as you would use any other descendant
/// of `GtkBin`; you create the child widget and use `gtk_container_add()`
/// to add it to the expander. When the expander is toggled, it will take
/// care of showing and hiding the child automatically.
/// 
/// # Special Usage
/// 
/// There are situations in which you may prefer to show and hide the
/// expanded widget yourself, such as when you want to actually create
/// the widget at expansion time. In this case, create a `GtkExpander`
/// but do not add a child to it. The expander widget has an
/// `GtkExpander:expanded` property which can be used to monitor
/// its expansion state. You should watch this property with a signal
/// connection as follows:
/// 
/// (C Language Example):
/// ```C
/// static void
/// expander_callback (GObject    *object,
///                    GParamSpec *param_spec,
///                    gpointer    user_data)
/// {
///   GtkExpander *expander;
/// 
///   expander = GTK_EXPANDER (object);
/// 
///   if (gtk_expander_get_expanded (expander))
///     {
///       // Show or create widgets
///     }
///   else
///     {
///       // Hide or destroy widgets
///     }
/// }
/// 
/// static void
/// create_expander (void)
/// {
///   GtkWidget *expander = gtk_expander_new_with_mnemonic ("_More Options");
///   g_signal_connect (expander, "notify::expanded",
///                     G_CALLBACK (expander_callback), NULL);
/// 
///   // ...
/// }
/// ```
/// 
/// # GtkExpander as GtkBuildable
/// 
/// The GtkExpander implementation of the GtkBuildable interface supports
/// placing a child in the label position by specifying “label” as the
/// “type” attribute of a <child> element. A normal content child can be
/// specified without specifying a <child> type attribute.
/// 
/// An example of a UI definition fragment with GtkExpander:
/// ```
/// <object class="GtkExpander">
///   <child type="label">
///     <object class="GtkLabel" id="expander-label"/>
///   </child>
///   <child>
///     <object class="GtkEntry" id="expander-content"/>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// expander
/// ├── title
/// │   ├── arrow
/// │   ╰── <label widget>
/// ╰── <child>
/// ```
/// 
/// GtkExpander has three CSS nodes, the main node with the name expander,
/// a subnode with name title and node below it with name arrow. The arrow of an
/// expander that is showing its child gets the :checked pseudoclass added to it.
public struct ExpanderRef: ExpanderProtocol {
    /// Untyped pointer to the underlying `GtkExpander` instance.
    /// For type-safe access, use the generated, typed pointer `expander_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ExpanderRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkExpander>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ExpanderProtocol`
    init<T: ExpanderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new expander using `label` as the text of the label.
    init( label: UnsafePointer<gchar>) {
        let rv = gtk_expander_new(label)
        self.init(cast(rv))
    }

    /// Creates a new expander using `label` as the text of the label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    init(mnemonic label: UnsafePointer<gchar>) {
        let rv = gtk_expander_new_with_mnemonic(label)
        self.init(cast(rv))
    }
    /// Creates a new expander using `label` as the text of the label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    static func newWith(mnemonic label: UnsafePointer<gchar>) -> ExpanderRef! {
        let rv = gtk_expander_new_with_mnemonic(label)
        return rv.map { ExpanderRef(cast($0)) }
    }
}

/// The `Expander` type acts as a reference-counted owner of an underlying `GtkExpander` instance.
/// It provides the methods that can operate on this data type through `ExpanderProtocol` conformance.
/// Use `Expander` as a strong reference or owner of a `GtkExpander` instance.
///
/// A `GtkExpander` allows the user to hide or show its child by clicking
/// on an expander triangle similar to the triangles used in a `GtkTreeView`.
/// 
/// Normally you use an expander as you would use any other descendant
/// of `GtkBin`; you create the child widget and use `gtk_container_add()`
/// to add it to the expander. When the expander is toggled, it will take
/// care of showing and hiding the child automatically.
/// 
/// # Special Usage
/// 
/// There are situations in which you may prefer to show and hide the
/// expanded widget yourself, such as when you want to actually create
/// the widget at expansion time. In this case, create a `GtkExpander`
/// but do not add a child to it. The expander widget has an
/// `GtkExpander:expanded` property which can be used to monitor
/// its expansion state. You should watch this property with a signal
/// connection as follows:
/// 
/// (C Language Example):
/// ```C
/// static void
/// expander_callback (GObject    *object,
///                    GParamSpec *param_spec,
///                    gpointer    user_data)
/// {
///   GtkExpander *expander;
/// 
///   expander = GTK_EXPANDER (object);
/// 
///   if (gtk_expander_get_expanded (expander))
///     {
///       // Show or create widgets
///     }
///   else
///     {
///       // Hide or destroy widgets
///     }
/// }
/// 
/// static void
/// create_expander (void)
/// {
///   GtkWidget *expander = gtk_expander_new_with_mnemonic ("_More Options");
///   g_signal_connect (expander, "notify::expanded",
///                     G_CALLBACK (expander_callback), NULL);
/// 
///   // ...
/// }
/// ```
/// 
/// # GtkExpander as GtkBuildable
/// 
/// The GtkExpander implementation of the GtkBuildable interface supports
/// placing a child in the label position by specifying “label” as the
/// “type” attribute of a <child> element. A normal content child can be
/// specified without specifying a <child> type attribute.
/// 
/// An example of a UI definition fragment with GtkExpander:
/// ```
/// <object class="GtkExpander">
///   <child type="label">
///     <object class="GtkLabel" id="expander-label"/>
///   </child>
///   <child>
///     <object class="GtkEntry" id="expander-content"/>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// expander
/// ├── title
/// │   ├── arrow
/// │   ╰── <label widget>
/// ╰── <child>
/// ```
/// 
/// GtkExpander has three CSS nodes, the main node with the name expander,
/// a subnode with name title and node below it with name arrow. The arrow of an
/// expander that is showing its child gets the :checked pseudoclass added to it.
open class Expander: Bin, ExpanderProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Expander` instance.
    public init(_ op: UnsafeMutablePointer<GtkExpander>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ExpanderProtocol`
    /// Will retain `GtkExpander`.
    public convenience init<T: ExpanderProtocol>(_ other: T) {
        self.init(cast(other.expander_ptr))
        g_object_ref(cast(expander_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkExpander.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkExpander.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkExpander.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkExpander>(opaquePointer))
    }

    /// Creates a new expander using `label` as the text of the label.
    public convenience init( label: UnsafePointer<gchar>) {
        let rv = gtk_expander_new(label)
        self.init(cast(rv))
    }

    /// Creates a new expander using `label` as the text of the label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    public convenience init(mnemonic label: UnsafePointer<gchar>) {
        let rv = gtk_expander_new_with_mnemonic(label)
        self.init(cast(rv))
    }

    /// Creates a new expander using `label` as the text of the label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    public static func newWith(mnemonic label: UnsafePointer<gchar>) -> Expander! {
        let rv = gtk_expander_new_with_mnemonic(label)
        return rv.map { Expander(cast($0)) }
    }

}

public enum ExpanderPropertyName: String, PropertyNameProtocol {
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    case expanded = "expanded"
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
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
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
    case label = "label"
    case labelFill = "label-fill"
    case labelWidget = "label-widget"
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
    /// When this property is `true`, the expander will resize the toplevel
    /// widget containing the expander upon expanding and collapsing.
    case resizeToplevel = "resize-toplevel"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// Space to put between the label and the child when the
    /// expander is expanded.
    ///
    /// **spacing is deprecated:**
    /// This property is deprecated and ignored.
    ///     Use margins on the child instead.
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
    case useMarkup = "use-markup"
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

public extension ExpanderProtocol {
    /// Bind a `ExpanderPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ExpanderPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(expander_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ExpanderSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    case activate = "activate"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
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
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
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
    /// The `delete`-event signal is emitted if a user requests that
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
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
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
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
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
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
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
    /// The `enter`-notify-event will be emitted when the pointer enters
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
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
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
    /// The `grab`-notify signal is emitted when a widget becomes
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
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
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
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent`-set signal is emitted when a new parent
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
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The `property`-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
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
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
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
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
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
    /// The `visibility`-notify-event will be emitted when the `widget`'s
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
    /// The `window`-state-event will be emitted when the state of the
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    case notifyExpanded = "notify::expanded"
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
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
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
    case notifyLabel = "notify::label"
    case notifyLabelFill = "notify::label-fill"
    case notifyLabelWidget = "notify::label-widget"
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
    /// When this property is `true`, the expander will resize the toplevel
    /// widget containing the expander upon expanding and collapsing.
    case notifyResizeToplevel = "notify::resize-toplevel"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// Space to put between the label and the child when the
    /// expander is expanded.
    ///
    /// **spacing is deprecated:**
    /// This property is deprecated and ignored.
    ///     Use margins on the child instead.
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
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
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
    case notifyTooltipText = "notify::tooltip-text"
    case notifyUseMarkup = "notify::use-markup"
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

public extension ExpanderProtocol {
    /// Connect a `ExpanderSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ExpanderSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(expander_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ExpanderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkExpander` instance.
    var expander_ptr: UnsafeMutablePointer<GtkExpander> { return ptr.assumingMemoryBound(to: GtkExpander.self) }

    /// Queries a `GtkExpander` and returns its current state. Returns `true`
    /// if the child widget is revealed.
    /// 
    /// See `gtk_expander_set_expanded()`.
    func getExpanded() -> Bool {
        let rv = gtk_expander_get_expanded(cast(expander_ptr))
        return Bool(rv != 0)
    }

    /// Fetches the text from a label widget including any embedded
    /// underlines indicating mnemonics and Pango markup, as set by
    /// `gtk_expander_set_label()`. If the label text has not been set the
    /// return value will be `nil`. This will be the case if you create an
    /// empty button with `gtk_button_new()` to use as a container.
    /// 
    /// Note that this function behaved differently in versions prior to
    /// 2.14 and used to return the label text stripped of embedded
    /// underlines indicating mnemonics and Pango markup. This problem can
    /// be avoided by fetching the label text directly from the label
    /// widget.
    func getLabel() -> String! {
        let rv = gtk_expander_get_label(cast(expander_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns whether the label widget will fill all available
    /// horizontal space allocated to `expander`.
    func getLabelFill() -> Bool {
        let rv = gtk_expander_get_label_fill(cast(expander_ptr))
        return Bool(rv != 0)
    }

    /// Retrieves the label widget for the frame. See
    /// `gtk_expander_set_label_widget()`.
    func getLabelWidget() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_expander_get_label_widget(cast(expander_ptr))
        return cast(rv)
    }

    /// Returns whether the expander will resize the toplevel widget
    /// containing the expander upon resizing and collpasing.
    func getResizeToplevel() -> Bool {
        let rv = gtk_expander_get_resize_toplevel(cast(expander_ptr))
        return Bool(rv != 0)
    }

    /// Gets the value set by `gtk_expander_set_spacing()`.
    ///
    /// **get_spacing is deprecated:**
    /// Use margins on the child instead.
    @available(*, deprecated) func getSpacing() -> CInt {
        let rv = gtk_expander_get_spacing(cast(expander_ptr))
        return CInt(rv)
    }

    /// Returns whether the label’s text is interpreted as marked up with
    /// the [Pango text markup language](#PangoMarkupFormat).
    /// See `gtk_expander_set_use_markup()`.
    func getUseMarkup() -> Bool {
        let rv = gtk_expander_get_use_markup(cast(expander_ptr))
        return Bool(rv != 0)
    }

    /// Returns whether an embedded underline in the expander label
    /// indicates a mnemonic. See `gtk_expander_set_use_underline()`.
    func getUseUnderline() -> Bool {
        let rv = gtk_expander_get_use_underline(cast(expander_ptr))
        return Bool(rv != 0)
    }

    /// Sets the state of the expander. Set to `true`, if you want
    /// the child widget to be revealed, and `false` if you want the
    /// child widget to be hidden.
    func set(expanded: Bool) {
        gtk_expander_set_expanded(cast(expander_ptr), gboolean(expanded ? 1 : 0))
    
    }

    /// Sets the text of the label of the expander to `label`.
    /// 
    /// This will also clear any previously set labels.
    func set(label: UnsafePointer<gchar>) {
        gtk_expander_set_label(cast(expander_ptr), label)
    
    }

    /// Sets whether the label widget should fill all available
    /// horizontal space allocated to `expander`.
    func set(labelFill label_fill: Bool) {
        gtk_expander_set_label_fill(cast(expander_ptr), gboolean(label_fill ? 1 : 0))
    
    }

    /// Set the label widget for the expander. This is the widget
    /// that will appear embedded alongside the expander arrow.
    func set(labelWidget label_widget: WidgetProtocol) {
        gtk_expander_set_label_widget(cast(expander_ptr), cast(label_widget.ptr))
    
    }

    /// Sets whether the expander will resize the toplevel widget
    /// containing the expander upon resizing and collpasing.
    func set(resizeToplevel resize_toplevel: Bool) {
        gtk_expander_set_resize_toplevel(cast(expander_ptr), gboolean(resize_toplevel ? 1 : 0))
    
    }

    /// Sets the spacing field of `expander`, which is the number of
    /// pixels to place between expander and the child.
    ///
    /// **set_spacing is deprecated:**
    /// Use margins on the child instead.
    @available(*, deprecated) func set(spacing: CInt) {
        gtk_expander_set_spacing(cast(expander_ptr), gint(spacing))
    
    }

    /// Sets whether the text of the label contains markup in
    /// [Pango’s text markup language](#PangoMarkupFormat).
    /// See `gtk_label_set_markup()`.
    func set(useMarkup use_markup: Bool) {
        gtk_expander_set_use_markup(cast(expander_ptr), gboolean(use_markup ? 1 : 0))
    
    }

    /// If true, an underline in the text of the expander label indicates
    /// the next character should be used for the mnemonic accelerator key.
    func set(useUnderline use_underline: Bool) {
        gtk_expander_set_use_underline(cast(expander_ptr), gboolean(use_underline ? 1 : 0))
    
    }
    var expanded: Bool {
        /// Queries a `GtkExpander` and returns its current state. Returns `true`
        /// if the child widget is revealed.
        /// 
        /// See `gtk_expander_set_expanded()`.
        get {
            let rv = gtk_expander_get_expanded(cast(expander_ptr))
            return Bool(rv != 0)
        }
        /// Sets the state of the expander. Set to `true`, if you want
        /// the child widget to be revealed, and `false` if you want the
        /// child widget to be hidden.
        nonmutating set {
            gtk_expander_set_expanded(cast(expander_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    var label: String! {
        /// Fetches the text from a label widget including any embedded
        /// underlines indicating mnemonics and Pango markup, as set by
        /// `gtk_expander_set_label()`. If the label text has not been set the
        /// return value will be `nil`. This will be the case if you create an
        /// empty button with `gtk_button_new()` to use as a container.
        /// 
        /// Note that this function behaved differently in versions prior to
        /// 2.14 and used to return the label text stripped of embedded
        /// underlines indicating mnemonics and Pango markup. This problem can
        /// be avoided by fetching the label text directly from the label
        /// widget.
        get {
            let rv = gtk_expander_get_label(cast(expander_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the text of the label of the expander to `label`.
        /// 
        /// This will also clear any previously set labels.
        nonmutating set {
            gtk_expander_set_label(cast(expander_ptr), newValue)
        }
    }

    /// Returns whether the label widget will fill all available
    /// horizontal space allocated to `expander`.
    var labelFill: Bool {
        /// Returns whether the label widget will fill all available
        /// horizontal space allocated to `expander`.
        get {
            let rv = gtk_expander_get_label_fill(cast(expander_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the label widget should fill all available
        /// horizontal space allocated to `expander`.
        nonmutating set {
            gtk_expander_set_label_fill(cast(expander_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Retrieves the label widget for the frame. See
    /// `gtk_expander_set_label_widget()`.
    var labelWidget: UnsafeMutablePointer<GtkWidget>! {
        /// Retrieves the label widget for the frame. See
        /// `gtk_expander_set_label_widget()`.
        get {
            let rv = gtk_expander_get_label_widget(cast(expander_ptr))
            return cast(rv)
        }
        /// Set the label widget for the expander. This is the widget
        /// that will appear embedded alongside the expander arrow.
        nonmutating set {
            gtk_expander_set_label_widget(cast(expander_ptr), cast(newValue))
        }
    }

    /// Returns whether the expander will resize the toplevel widget
    /// containing the expander upon resizing and collpasing.
    var resizeToplevel: Bool {
        /// Returns whether the expander will resize the toplevel widget
        /// containing the expander upon resizing and collpasing.
        get {
            let rv = gtk_expander_get_resize_toplevel(cast(expander_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the expander will resize the toplevel widget
        /// containing the expander upon resizing and collpasing.
        nonmutating set {
            gtk_expander_set_resize_toplevel(cast(expander_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Space to put between the label and the child when the
    /// expander is expanded.
    ///
    /// **spacing is deprecated:**
    /// This property is deprecated and ignored.
    ///     Use margins on the child instead.
    var spacing: CInt {
        /// Gets the value set by `gtk_expander_set_spacing()`.
        ///
        /// **get_spacing is deprecated:**
        /// Use margins on the child instead.
        @available(*, deprecated) get {
            let rv = gtk_expander_get_spacing(cast(expander_ptr))
            return CInt(rv)
        }
        /// Sets the spacing field of `expander`, which is the number of
        /// pixels to place between expander and the child.
        ///
        /// **set_spacing is deprecated:**
        /// Use margins on the child instead.
        @available(*, deprecated) nonmutating set {
            gtk_expander_set_spacing(cast(expander_ptr), gint(newValue))
        }
    }

    /// Returns whether the label’s text is interpreted as marked up with
    /// the [Pango text markup language](#PangoMarkupFormat).
    /// See `gtk_expander_set_use_markup()`.
    var useMarkup: Bool {
        /// Returns whether the label’s text is interpreted as marked up with
        /// the [Pango text markup language](#PangoMarkupFormat).
        /// See `gtk_expander_set_use_markup()`.
        get {
            let rv = gtk_expander_get_use_markup(cast(expander_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the text of the label contains markup in
        /// [Pango’s text markup language](#PangoMarkupFormat).
        /// See `gtk_label_set_markup()`.
        nonmutating set {
            gtk_expander_set_use_markup(cast(expander_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns whether an embedded underline in the expander label
    /// indicates a mnemonic. See `gtk_expander_set_use_underline()`.
    var useUnderline: Bool {
        /// Returns whether an embedded underline in the expander label
        /// indicates a mnemonic. See `gtk_expander_set_use_underline()`.
        get {
            let rv = gtk_expander_get_use_underline(cast(expander_ptr))
            return Bool(rv != 0)
        }
        /// If true, an underline in the text of the expander label indicates
        /// the next character should be used for the mnemonic accelerator key.
        nonmutating set {
            gtk_expander_set_use_underline(cast(expander_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



// MARK: - ExpanderAccessible Class

/// The `ExpanderAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkExpanderAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ExpanderAccessible`.
/// Alternatively, use `ExpanderAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ExpanderAccessibleProtocol: ContainerAccessibleProtocol, Atk.ActionProtocol {
    /// Untyped pointer to the underlying `GtkExpanderAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkExpanderAccessible` instance.
    var expander_accessible_ptr: UnsafeMutablePointer<GtkExpanderAccessible> { get }
}

/// The `ExpanderAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkExpanderAccessible` instance.
/// It exposes methods that can operate on this data type through `ExpanderAccessibleProtocol` conformance.
/// Use `ExpanderAccessibleRef` only as an `unowned` reference to an existing `GtkExpanderAccessible` instance.
///

public struct ExpanderAccessibleRef: ExpanderAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkExpanderAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `expander_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ExpanderAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkExpanderAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ExpanderAccessibleProtocol`
    init<T: ExpanderAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ExpanderAccessible` type acts as a reference-counted owner of an underlying `GtkExpanderAccessible` instance.
/// It provides the methods that can operate on this data type through `ExpanderAccessibleProtocol` conformance.
/// Use `ExpanderAccessible` as a strong reference or owner of a `GtkExpanderAccessible` instance.
///

open class ExpanderAccessible: ContainerAccessible, ExpanderAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ExpanderAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkExpanderAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ExpanderAccessibleProtocol`
    /// Will retain `GtkExpanderAccessible`.
    public convenience init<T: ExpanderAccessibleProtocol>(_ other: T) {
        self.init(cast(other.expander_accessible_ptr))
        g_object_ref(cast(expander_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkExpanderAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkExpanderAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkExpanderAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ExpanderAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkExpanderAccessible>(opaquePointer))
    }



}

public enum ExpanderAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension ExpanderAccessibleProtocol {
    /// Bind a `ExpanderAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ExpanderAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(expander_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ExpanderAccessibleSignalName: String, SignalNameProtocol {
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
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
    /// notifications. `AtkObject::property`-changed is needed by the
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

public extension ExpanderAccessibleProtocol {
    /// Connect a `ExpanderAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ExpanderAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(expander_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ExpanderAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkExpanderAccessible` instance.
    var expander_accessible_ptr: UnsafeMutablePointer<GtkExpanderAccessible> { return ptr.assumingMemoryBound(to: GtkExpanderAccessible.self) }

}



// MARK: - FileChooserButton Class

/// The `FileChooserButtonProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserButton`.
/// Alternatively, use `FileChooserButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkFileChooserButton` is a widget that lets the user select a
/// file.  It implements the `GtkFileChooser` interface.  Visually, it is a
/// file name with a button to bring up a `GtkFileChooserDialog`.
/// The user can then use that dialog to change the file associated with
/// that button.  This widget does not support setting the
/// `GtkFileChooser:select`-multiple property to `true`.
/// 
/// ## Create a button to let the user select a file in /etc
/// 
/// (C Language Example):
/// ```C
/// {
///   GtkWidget *button;
/// 
///   button = gtk_file_chooser_button_new (_("Select a file"),
///                                         GTK_FILE_CHOOSER_ACTION_OPEN);
///   gtk_file_chooser_set_current_folder (GTK_FILE_CHOOSER (button),
///                                        "/etc");
/// }
/// ```
/// 
/// The `GtkFileChooserButton` supports the `GtkFileChooserActions`
/// `GTK_FILE_CHOOSER_ACTION_OPEN` and `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER`.
/// 
/// > The `GtkFileChooserButton` will ellipsize the label, and will thus
/// > request little horizontal space.  To give the button more space,
/// > you should call `gtk_widget_get_preferred_size()`,
/// > `gtk_file_chooser_button_set_width_chars()`, or pack the button in
/// > such a way that other interface elements give space to the
/// > widget.
/// 
/// # CSS nodes
/// 
/// GtkFileChooserButton has a CSS node with name “filechooserbutton”, containing
/// a subnode for the internal button with name “button” and style class “.file”.
public protocol FileChooserButtonProtocol: BoxProtocol, FileChooserProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserButton` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFileChooserButton` instance.
    var file_chooser_button_ptr: UnsafeMutablePointer<GtkFileChooserButton> { get }
}

/// The `FileChooserButtonRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserButton` instance.
/// It exposes methods that can operate on this data type through `FileChooserButtonProtocol` conformance.
/// Use `FileChooserButtonRef` only as an `unowned` reference to an existing `GtkFileChooserButton` instance.
///
/// The `GtkFileChooserButton` is a widget that lets the user select a
/// file.  It implements the `GtkFileChooser` interface.  Visually, it is a
/// file name with a button to bring up a `GtkFileChooserDialog`.
/// The user can then use that dialog to change the file associated with
/// that button.  This widget does not support setting the
/// `GtkFileChooser:select`-multiple property to `true`.
/// 
/// ## Create a button to let the user select a file in /etc
/// 
/// (C Language Example):
/// ```C
/// {
///   GtkWidget *button;
/// 
///   button = gtk_file_chooser_button_new (_("Select a file"),
///                                         GTK_FILE_CHOOSER_ACTION_OPEN);
///   gtk_file_chooser_set_current_folder (GTK_FILE_CHOOSER (button),
///                                        "/etc");
/// }
/// ```
/// 
/// The `GtkFileChooserButton` supports the `GtkFileChooserActions`
/// `GTK_FILE_CHOOSER_ACTION_OPEN` and `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER`.
/// 
/// > The `GtkFileChooserButton` will ellipsize the label, and will thus
/// > request little horizontal space.  To give the button more space,
/// > you should call `gtk_widget_get_preferred_size()`,
/// > `gtk_file_chooser_button_set_width_chars()`, or pack the button in
/// > such a way that other interface elements give space to the
/// > widget.
/// 
/// # CSS nodes
/// 
/// GtkFileChooserButton has a CSS node with name “filechooserbutton”, containing
/// a subnode for the internal button with name “button” and style class “.file”.
public struct FileChooserButtonRef: FileChooserButtonProtocol {
    /// Untyped pointer to the underlying `GtkFileChooserButton` instance.
    /// For type-safe access, use the generated, typed pointer `file_chooser_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileChooserButtonRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFileChooserButton>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileChooserButtonProtocol`
    init<T: FileChooserButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new file-selecting button widget.
    init( title: UnsafePointer<gchar>, action: FileChooserAction) {
        let rv = gtk_file_chooser_button_new(title, action)
        self.init(cast(rv))
    }

    /// Creates a `GtkFileChooserButton` widget which uses `dialog` as its
    /// file-picking window.
    /// 
    /// Note that `dialog` must be a `GtkDialog` (or subclass) which
    /// implements the `GtkFileChooser` interface and must not have
    /// `GTK_DIALOG_DESTROY_WITH_PARENT` set.
    /// 
    /// Also note that the dialog needs to have its confirmative button
    /// added with response `GTK_RESPONSE_ACCEPT` or `GTK_RESPONSE_OK` in
    /// order for the button to take over the file selected in the dialog.
    init(dialog: DialogProtocol) {
        let rv = gtk_file_chooser_button_new_with_dialog(cast(dialog.ptr))
        self.init(cast(rv))
    }
    /// Creates a `GtkFileChooserButton` widget which uses `dialog` as its
    /// file-picking window.
    /// 
    /// Note that `dialog` must be a `GtkDialog` (or subclass) which
    /// implements the `GtkFileChooser` interface and must not have
    /// `GTK_DIALOG_DESTROY_WITH_PARENT` set.
    /// 
    /// Also note that the dialog needs to have its confirmative button
    /// added with response `GTK_RESPONSE_ACCEPT` or `GTK_RESPONSE_OK` in
    /// order for the button to take over the file selected in the dialog.
    static func newWith(dialog: DialogProtocol) -> FileChooserButtonRef! {
        let rv = gtk_file_chooser_button_new_with_dialog(cast(dialog.ptr))
        return rv.map { FileChooserButtonRef(cast($0)) }
    }
}

/// The `FileChooserButton` type acts as a reference-counted owner of an underlying `GtkFileChooserButton` instance.
/// It provides the methods that can operate on this data type through `FileChooserButtonProtocol` conformance.
/// Use `FileChooserButton` as a strong reference or owner of a `GtkFileChooserButton` instance.
///
/// The `GtkFileChooserButton` is a widget that lets the user select a
/// file.  It implements the `GtkFileChooser` interface.  Visually, it is a
/// file name with a button to bring up a `GtkFileChooserDialog`.
/// The user can then use that dialog to change the file associated with
/// that button.  This widget does not support setting the
/// `GtkFileChooser:select`-multiple property to `true`.
/// 
/// ## Create a button to let the user select a file in /etc
/// 
/// (C Language Example):
/// ```C
/// {
///   GtkWidget *button;
/// 
///   button = gtk_file_chooser_button_new (_("Select a file"),
///                                         GTK_FILE_CHOOSER_ACTION_OPEN);
///   gtk_file_chooser_set_current_folder (GTK_FILE_CHOOSER (button),
///                                        "/etc");
/// }
/// ```
/// 
/// The `GtkFileChooserButton` supports the `GtkFileChooserActions`
/// `GTK_FILE_CHOOSER_ACTION_OPEN` and `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER`.
/// 
/// > The `GtkFileChooserButton` will ellipsize the label, and will thus
/// > request little horizontal space.  To give the button more space,
/// > you should call `gtk_widget_get_preferred_size()`,
/// > `gtk_file_chooser_button_set_width_chars()`, or pack the button in
/// > such a way that other interface elements give space to the
/// > widget.
/// 
/// # CSS nodes
/// 
/// GtkFileChooserButton has a CSS node with name “filechooserbutton”, containing
/// a subnode for the internal button with name “button” and style class “.file”.
open class FileChooserButton: Box, FileChooserButtonProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FileChooserButton` instance.
    public init(_ op: UnsafeMutablePointer<GtkFileChooserButton>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FileChooserButtonProtocol`
    /// Will retain `GtkFileChooserButton`.
    public convenience init<T: FileChooserButtonProtocol>(_ other: T) {
        self.init(cast(other.file_chooser_button_ptr))
        g_object_ref(cast(file_chooser_button_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFileChooserButton.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFileChooserButton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFileChooserButton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserButtonProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFileChooserButton>(opaquePointer))
    }

    /// Creates a new file-selecting button widget.
    public convenience init( title: UnsafePointer<gchar>, action: FileChooserAction) {
        let rv = gtk_file_chooser_button_new(title, action)
        self.init(cast(rv))
    }

    /// Creates a `GtkFileChooserButton` widget which uses `dialog` as its
    /// file-picking window.
    /// 
    /// Note that `dialog` must be a `GtkDialog` (or subclass) which
    /// implements the `GtkFileChooser` interface and must not have
    /// `GTK_DIALOG_DESTROY_WITH_PARENT` set.
    /// 
    /// Also note that the dialog needs to have its confirmative button
    /// added with response `GTK_RESPONSE_ACCEPT` or `GTK_RESPONSE_OK` in
    /// order for the button to take over the file selected in the dialog.
    public convenience init(dialog: DialogProtocol) {
        let rv = gtk_file_chooser_button_new_with_dialog(cast(dialog.ptr))
        self.init(cast(rv))
    }

    /// Creates a `GtkFileChooserButton` widget which uses `dialog` as its
    /// file-picking window.
    /// 
    /// Note that `dialog` must be a `GtkDialog` (or subclass) which
    /// implements the `GtkFileChooser` interface and must not have
    /// `GTK_DIALOG_DESTROY_WITH_PARENT` set.
    /// 
    /// Also note that the dialog needs to have its confirmative button
    /// added with response `GTK_RESPONSE_ACCEPT` or `GTK_RESPONSE_OK` in
    /// order for the button to take over the file selected in the dialog.
    public static func newWith(dialog: DialogProtocol) -> FileChooserButton! {
        let rv = gtk_file_chooser_button_new_with_dialog(cast(dialog.ptr))
        return rv.map { FileChooserButton(cast($0)) }
    }

}

public enum FileChooserButtonPropertyName: String, PropertyNameProtocol {
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
    case baselinePosition = "baseline-position"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Instance of the `GtkFileChooserDialog` associated with the button.
    case dialog = "dialog"
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
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
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
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    case spacing = "spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Title to put on the `GtkFileChooserDialog` associated with the button.
    case title = "title"
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
    /// The width of the entry and label inside the button, in characters.
    case widthChars = "width-chars"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension FileChooserButtonProtocol {
    /// Bind a `FileChooserButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FileChooserButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(file_chooser_button_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum FileChooserButtonSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
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
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
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
    /// The `delete`-event signal is emitted if a user requests that
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
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
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
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
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
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
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
    /// The `enter`-notify-event will be emitted when the pointer enters
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
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    /// The `file`-set signal is emitted when the user selects a file.
    /// 
    /// Note that this signal is only emitted when the user
    /// changes the file.
    case fileSet = "file-set"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
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
    /// The `grab`-notify signal is emitted when a widget becomes
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
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
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
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent`-set signal is emitted when a new parent
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
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The `property`-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
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
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
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
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
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
    /// The `visibility`-notify-event will be emitted when the `widget`'s
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
    /// The `window`-state-event will be emitted when the state of the
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
    case notifyBaselinePosition = "notify::baseline-position"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Instance of the `GtkFileChooserDialog` associated with the button.
    case notifyDialog = "notify::dialog"
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
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
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
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    case notifySpacing = "notify::spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Title to put on the `GtkFileChooserDialog` associated with the button.
    case notifyTitle = "notify::title"
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
    case notifyTooltipMarkup = "notify::tooltip-markup"
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
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    /// The width of the entry and label inside the button, in characters.
    case notifyWidthChars = "notify::width-chars"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension FileChooserButtonProtocol {
    /// Connect a `FileChooserButtonSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: FileChooserButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(file_chooser_button_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension FileChooserButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserButton` instance.
    var file_chooser_button_ptr: UnsafeMutablePointer<GtkFileChooserButton> { return ptr.assumingMemoryBound(to: GtkFileChooserButton.self) }

    /// Returns whether the button grabs focus when it is clicked with the mouse.
    /// See `gtk_file_chooser_button_set_focus_on_click()`.
    ///
    /// **get_focus_on_click is deprecated:**
    /// Use gtk_widget_get_focus_on_click() instead
    @available(*, deprecated) @available(*, deprecated) func getFocusOnClick() -> Bool {
        let rv = gtk_file_chooser_button_get_focus_on_click(cast(file_chooser_button_ptr))
        return Bool(rv != 0)
    }

    /// Retrieves the title of the browse dialog used by `button`. The returned value
    /// should not be modified or freed.
    func getTitle() -> String! {
        let rv = gtk_file_chooser_button_get_title(cast(file_chooser_button_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Retrieves the width in characters of the `button` widget’s entry and/or label.
    func getWidthChars() -> CInt {
        let rv = gtk_file_chooser_button_get_width_chars(cast(file_chooser_button_ptr))
        return CInt(rv)
    }

    /// Sets whether the button will grab focus when it is clicked with the mouse.
    /// Making mouse clicks not grab focus is useful in places like toolbars where
    /// you don’t want the keyboard focus removed from the main area of the
    /// application.
    ///
    /// **set_focus_on_click is deprecated:**
    /// Use gtk_widget_set_focus_on_click() instead
    @available(*, deprecated) @available(*, deprecated) func set(focusOnClick focus_on_click: Bool) {
        gtk_file_chooser_button_set_focus_on_click(cast(file_chooser_button_ptr), gboolean(focus_on_click ? 1 : 0))
    
    }

    /// Modifies the `title` of the browse dialog used by `button`.
    func set(title: UnsafePointer<gchar>) {
        gtk_file_chooser_button_set_title(cast(file_chooser_button_ptr), title)
    
    }

    /// Sets the width (in characters) that `button` will use to `n_chars`.
    func setWidth(nChars n_chars: CInt) {
        gtk_file_chooser_button_set_width_chars(cast(file_chooser_button_ptr), gint(n_chars))
    
    }
    /// Returns whether the button grabs focus when it is clicked with the mouse.
    /// See `gtk_file_chooser_button_set_focus_on_click()`.
    ///
    /// **get_focus_on_click is deprecated:**
    /// Use gtk_widget_get_focus_on_click() instead
    @available(*, deprecated) var focusOnClick: Bool {
        /// Returns whether the button grabs focus when it is clicked with the mouse.
        /// See `gtk_file_chooser_button_set_focus_on_click()`.
        ///
        /// **get_focus_on_click is deprecated:**
        /// Use gtk_widget_get_focus_on_click() instead
        @available(*, deprecated) get {
            let rv = gtk_file_chooser_button_get_focus_on_click(cast(file_chooser_button_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the button will grab focus when it is clicked with the mouse.
        /// Making mouse clicks not grab focus is useful in places like toolbars where
        /// you don’t want the keyboard focus removed from the main area of the
        /// application.
        ///
        /// **set_focus_on_click is deprecated:**
        /// Use gtk_widget_set_focus_on_click() instead
        @available(*, deprecated) nonmutating set {
            gtk_file_chooser_button_set_focus_on_click(cast(file_chooser_button_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Title to put on the `GtkFileChooserDialog` associated with the button.
    var title: String! {
        /// Retrieves the title of the browse dialog used by `button`. The returned value
        /// should not be modified or freed.
        get {
            let rv = gtk_file_chooser_button_get_title(cast(file_chooser_button_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Modifies the `title` of the browse dialog used by `button`.
        nonmutating set {
            gtk_file_chooser_button_set_title(cast(file_chooser_button_ptr), newValue)
        }
    }

    /// Retrieves the width in characters of the `button` widget’s entry and/or label.
    var widthChars: CInt {
        /// Retrieves the width in characters of the `button` widget’s entry and/or label.
        get {
            let rv = gtk_file_chooser_button_get_width_chars(cast(file_chooser_button_ptr))
            return CInt(rv)
        }
        /// Sets the width (in characters) that `button` will use to `n_chars`.
        nonmutating set {
            gtk_file_chooser_button_set_width_chars(cast(file_chooser_button_ptr), gint(newValue))
        }
    }
}



