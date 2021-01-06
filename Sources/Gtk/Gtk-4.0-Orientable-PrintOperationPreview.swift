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

// MARK: - Orientable Interface

/// The `OrientableProtocol` protocol exposes the methods and properties of an underlying `GtkOrientable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Orientable`.
/// Alternatively, use `OrientableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkOrientable` interface is implemented by all widgets that can be
/// oriented horizontally or vertically. `GtkOrientable` is more flexible in that
/// it allows the orientation to be changed at runtime, allowing the widgets
/// to “flip”.
public protocol OrientableProtocol {
        /// Untyped pointer to the underlying `GtkOrientable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkOrientable` instance.
    var orientable_ptr: UnsafeMutablePointer<GtkOrientable>! { get }

}

/// The `OrientableRef` type acts as a lightweight Swift reference to an underlying `GtkOrientable` instance.
/// It exposes methods that can operate on this data type through `OrientableProtocol` conformance.
/// Use `OrientableRef` only as an `unowned` reference to an existing `GtkOrientable` instance.
///
/// The `GtkOrientable` interface is implemented by all widgets that can be
/// oriented horizontally or vertically. `GtkOrientable` is more flexible in that
/// it allows the orientation to be changed at runtime, allowing the widgets
/// to “flip”.
public struct OrientableRef: OrientableProtocol {
        /// Untyped pointer to the underlying `GtkOrientable` instance.
    /// For type-safe access, use the generated, typed pointer `orientable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OrientableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkOrientable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkOrientable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkOrientable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkOrientable>?) {
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

    /// Reference intialiser for a related type that implements `OrientableProtocol`
    @inlinable init<T: OrientableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Orientable` type acts as an owner of an underlying `GtkOrientable` instance.
/// It provides the methods that can operate on this data type through `OrientableProtocol` conformance.
/// Use `Orientable` as a strong reference or owner of a `GtkOrientable` instance.
///
/// The `GtkOrientable` interface is implemented by all widgets that can be
/// oriented horizontally or vertically. `GtkOrientable` is more flexible in that
/// it allows the orientation to be changed at runtime, allowing the widgets
/// to “flip”.
open class Orientable: OrientableProtocol {
        /// Untyped pointer to the underlying `GtkOrientable` instance.
    /// For type-safe access, use the generated, typed pointer `orientable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Orientable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkOrientable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Orientable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkOrientable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Orientable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Orientable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Orientable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkOrientable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Orientable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkOrientable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkOrientable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Orientable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkOrientable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkOrientable, cannot ref(orientable_ptr)
    }

    /// Reference intialiser for a related type that implements `OrientableProtocol`
    /// `GtkOrientable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `OrientableProtocol`
    @inlinable public init<T: OrientableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkOrientable, cannot ref(orientable_ptr)
    }

    /// Do-nothing destructor for `GtkOrientable`.
    deinit {
        // no reference counting for GtkOrientable, cannot unref(orientable_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkOrientable, cannot ref(orientable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkOrientable, cannot ref(orientable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkOrientable, cannot ref(orientable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkOrientable, cannot ref(orientable_ptr)
    }



}

public enum OrientablePropertyName: String, PropertyNameProtocol {
    /// The orientation of the orientable.
    case orientation = "orientation"
}

public extension OrientableProtocol {
    /// Bind a `OrientablePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: OrientablePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Orientable property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: OrientablePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Orientable property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: OrientablePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum OrientableSignalName: String, SignalNameProtocol {

    /// The orientation of the orientable.
    case notifyOrientation = "notify::orientation"
}

public extension OrientableProtocol {
    /// Connect a `OrientableSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: OrientableSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: Orientable Interface: OrientableProtocol extension (methods and fields)
public extension OrientableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOrientable` instance.
    @inlinable var orientable_ptr: UnsafeMutablePointer<GtkOrientable>! { return ptr?.assumingMemoryBound(to: GtkOrientable.self) }

    /// Retrieves the orientation of the `orientable`.
    @inlinable func getOrientation() -> GtkOrientation {
        let rv = gtk_orientable_get_orientation(orientable_ptr)
        return rv
    }

    /// Sets the orientation of the `orientable`.
    @inlinable func set(orientation: GtkOrientation) {
        gtk_orientable_set_orientation(orientable_ptr, orientation)
    
    }
    /// The orientation of the orientable.
    @inlinable var orientation: GtkOrientation {
        /// Retrieves the orientation of the `orientable`.
        get {
            let rv = gtk_orientable_get_orientation(orientable_ptr)
            return rv
        }
        /// Sets the orientation of the `orientable`.
        nonmutating set {
            gtk_orientable_set_orientation(orientable_ptr, newValue)
        }
    }


}



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

public enum PrintOperationPreviewSignalName: String, SignalNameProtocol {
    /// The `got`-page-size signal is emitted once for each page
    /// that gets rendered to the preview.
    /// 
    /// A handler for this signal should update the `context`
    /// according to `page_setup` and set up a suitable cairo
    /// context, using `gtk_print_context_set_cairo_context()`.
    case gotPageSize = "got-page-size"
    /// The `ready` signal gets emitted once per preview operation,
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
    @inlinable @discardableResult func connect(signal kind: PrintOperationPreviewSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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



